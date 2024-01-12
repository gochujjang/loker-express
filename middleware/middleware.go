package middleware

import (
	"github.com/gochujjang/loker-express/utils"
	"github.com/gofiber/fiber/v2"
)

func Auth(ctx *fiber.Ctx) error {
	token := ctx.Get("x-token")
	if token == "" {
		return ctx.Status(fiber.StatusUnauthorized).JSON(fiber.Map{
			"message": "unauthorization",
		})
	}

	_, err := utils.VerifyToken(token)
	if err != nil {
		return ctx.Status(fiber.StatusUnauthorized).JSON(fiber.Map{
			"message": "unauthorization",
		})
	}

	return ctx.Next()
}

func PermissionCreate (ctx *fiber.Ctx) error {
	return ctx.Next()
}