package handler

import (
	"log"

	"github.com/go-playground/validator/v10"
	database "github.com/gochujjang/loker-express/database"
	"github.com/gochujjang/loker-express/models/entity"
	"github.com/gochujjang/loker-express/models/request"
	"github.com/gofiber/fiber/v2"
)

func JobHandlerGetAll(ctx *fiber.Ctx) error {
	// userInfo := ctx.Locals("userInfo")
	// log.Println("user info dataa :: ", userInfo)

	var jobs []entity.Job
	result := database.DB.Debug().Find(&jobs)
	if result.Error != nil {
		log.Println(result.Error)
	}
	return ctx.JSON(jobs)
}

func JobHandlerCreate(ctx *fiber.Ctx) error {
	job := new(request.JobCreateRequest)
	if err := ctx.BodyParser(job); err != nil {
		return err
	}

	validate := validator.New()
	errValidate := validate.Struct(job)
	if errValidate != nil {
		return ctx.Status(400).JSON(fiber.Map{
			"message": "failed",
			"error":   errValidate.Error(),
		})
	}

	newJob := entity.Job{
		Position:  job.Position,
		CompanyID: job.CompanyID,
		Desc:      job.Desc,
	}

	result := database.DB.Create(&newJob)
	if result.Error != nil {
		log.Println(result.Error)
		return ctx.Status(500).JSON(fiber.Map{
			"message": "failed",
			"error":   "Failed to create job",
		})
	}

	// Preload the associated company data
	database.DB.Preload("Company").Find(&newJob)

	return ctx.JSON(fiber.Map{
		"message": "success",
		"data":    newJob,
	})

}
