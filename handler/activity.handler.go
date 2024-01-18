package handler

import (
	"log"

	"github.com/go-playground/validator/v10"
	database "github.com/gochujjang/loker-express/database"
	"github.com/gochujjang/loker-express/models/entity"
	"github.com/gochujjang/loker-express/models/request"
	"github.com/gofiber/fiber/v2"
)

func ActivityHandlerGetAll(ctx *fiber.Ctx) error {
	var activities []entity.Activity

	// Retrieve jobs with associated company information
	result := database.DB.Preload("Job").Preload("User").Debug().Find(&activities)
	if result.Error != nil {
		log.Println(result.Error)
		return ctx.Status(500).JSON(fiber.Map{
			"message": "failed",
			"error":   "Failed to retrieve jobs",
		})
	}

	return ctx.JSON(fiber.Map{
		"message": "success",
		"data":    activities,
	})
}

func ActHandlerCreate(ctx *fiber.Ctx) error {
	activities := new(request.ActCreateRequest)
	if err := ctx.BodyParser(activities); err != nil {
		return err
	}

	validate := validator.New()
	errValidate := validate.Struct(activities)
	if errValidate != nil {
		return ctx.Status(400).JSON(fiber.Map{
			"message": "failed",
			"error":   errValidate.Error(),
		})
	}

	newAct := entity.Activity{
		UserID: activities.UserID,
		JobID:  activities.JobID,
		Status: activities.Status,
	}

	result := database.DB.Create(&newAct)
	if result.Error != nil {
		log.Println(result.Error)
		return ctx.Status(500).JSON(fiber.Map{
			"message": "failed",
			"error":   "Failed to create job",
		})
	}

	// Preload the associated company data
	database.DB.Preload("Job.Company").Preload("User").Find(&newAct)

	return ctx.JSON(fiber.Map{
		"message": "success",
		"data":    newAct,
	})

}
