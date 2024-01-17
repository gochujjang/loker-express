package handler

import (
	"log"

	"github.com/go-playground/validator/v10"
	database "github.com/gochujjang/loker-express/database"
	"github.com/gochujjang/loker-express/models/entity"
	"github.com/gochujjang/loker-express/models/request"
	"github.com/gochujjang/loker-express/utils"
	"github.com/gofiber/fiber/v2"
)

func UserHandlerGetAll(ctx *fiber.Ctx) error {
	// userInfo := ctx.Locals("userInfo")
	// log.Println("user info dataa :: ", userInfo)

	var users []entity.User
	result := database.DB.Debug().Find(&users)
	if result.Error != nil {
		log.Println(result.Error)
	}
	return ctx.JSON(users)
}

func UserHandlerGetById(ctx *fiber.Ctx) error {
	userId := ctx.Params("id")
	var user entity.User
	err := database.DB.First(&user, "id = ?", userId).Error
	if err != nil {
		return ctx.Status(404).JSON(fiber.Map{
			"message": "failed user not found",
		})
	}

	// userResponse := response.UserResponse{
	// 	ID:        user.ID,
	// 	Name:      user.Name,
	// 	Email:     user.Email,
	// 	Phone:     user.Phone,
	// 	Education: user.Education,
	// 	NoKtp:     user.NoKtp,
	// 	Marriage:  user.Marriage,
	// 	CreatedAt: user.CreatedAt,
	// 	UpdatedAt: user.UpdatedAt,
	// }

	return ctx.JSON(fiber.Map{
		"message": "success",
		"data":    user,
	})
}

func UserHandlerCreate(ctx *fiber.Ctx) error {
	user := new(request.UserCreateRequest)
	if err := ctx.BodyParser(user); err != nil {
		return err
	}

	validate := validator.New()
	errValidate := validate.Struct(user)
	if errValidate != nil {
		return ctx.Status(400).JSON(fiber.Map{
			"message": "failed",
			"error":   errValidate.Error(),
		})
	}

	newUser := entity.User{
		Name:  user.Name,
		Email: user.Email,
		Phone: user.Phone,
		// Education: user.Education,
		// NoKtp:     user.NoKtp,
		// Marriage:  user.Marriage,
	}

	hashedPassword, err := utils.HashingPassword(user.Password)
	if err != nil {
		log.Println(err)
		return ctx.Status(fiber.StatusInternalServerError).JSON(fiber.Map{
			"message": "internal lserver error",
		})
	}

	newUser.Password = hashedPassword

	errCreateUser := database.DB.Create(&newUser).Error
	if errCreateUser != nil {
		return ctx.Status(500).JSON(fiber.Map{
			"message": "failed to store data",
		})
	}

	return ctx.JSON(fiber.Map{
		"message": "success",
		"data":    newUser,
	})
}

func UserHandlerUpdate(ctx *fiber.Ctx) error {
	userRequest := new(request.UserUpdateRequest)
	if err := ctx.BodyParser(userRequest); err != nil {
		return ctx.Status(400).JSON(fiber.Map{
			"message": "bad request",
		})
	}

	userId := ctx.Params("id")
	var user entity.User
	err := database.DB.First(&user, "id = ?", userId).Error
	if err != nil {
		return ctx.Status(404).JSON(fiber.Map{
			"message": "failed user not found",
		})
	}

	if userRequest.Name != "" {
		user.Name = userRequest.Name
	}
	user.Email = userRequest.Email
	user.Phone = userRequest.Phone
	user.Education = userRequest.Education
	user.NoKtp = userRequest.NoKtp
	user.Marriage = userRequest.Marriage
	errUpdate := database.DB.Save(&user).Error
	if errUpdate != nil {
		return ctx.Status(500).JSON(fiber.Map{
			"message": "500 - internal server error",
		})
	}

	return ctx.JSON(fiber.Map{
		"message": "success",
		"data":    user,
	})
}
