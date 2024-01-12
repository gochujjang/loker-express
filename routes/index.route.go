package route

import (
	"github.com/gochujjang/loker-express/handler"
	"github.com/gochujjang/loker-express/middleware"
	"github.com/gofiber/fiber/v2"
)



func RouteInit(r *fiber.App) {

	r.Post("/login", handler.LoginHandler)

	r.Get("/user", middleware.Auth, handler.UserHandlerGetAll)
	r.Get("/user/:id", middleware.Auth, handler.UserHandlerGetById)
	r.Post("/user", middleware.Auth, handler.UserHandlerCreate)
	r.Put("/user/:id", middleware.Auth, handler.UserHandlerUpdate)
}
