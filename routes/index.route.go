package route

import (
	"github.com/gochujjang/loker-express/handler"
	"github.com/gochujjang/loker-express/middleware"
	"github.com/gofiber/fiber/v2"
)

func RouteInit(r *fiber.App) {

	r.Post("/login", handler.LoginHandler)
	r.Post("/register", handler.UserHandlerCreate)

	r.Get("/user", middleware.Auth, handler.UserHandlerGetAll)
	r.Get("/user/:id", handler.UserHandlerGetById)
	r.Put("/user/:id", handler.UserHandlerUpdate)

	r.Get("/job", handler.JobHandlerGetAll)
	r.Post("/job", handler.JobHandlerCreate)

	r.Get("/activity", handler.ActivityHandlerGetAll)
	r.Post("/activity", handler.ActHandlerCreate)
}
