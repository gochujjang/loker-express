package middleware

import "github.com/gofiber/fiber/v2"

func Auth(ctx *fiber.Ctx) error {
	token := ctx.Get("x-token")
	if token == "" || token != "secret" {
		return ctx.Status(fiber.StatusUnauthorized).JSON(fiber.Map{
			"message": "unauthorization",
		})
	}
	return ctx.Next()
}

func PermissionCreate (ctx *fiber.Ctx) error {
	return ctx.Next()
}