package main

import (
	database "github.com/gochujjang/loker-express/database"
	"github.com/gochujjang/loker-express/database/migration"
	route "github.com/gochujjang/loker-express/routes"
	"github.com/gofiber/fiber/v2"
)

func main() {
	database.DatabaseInit()
	migration.RunMigration()
	migration.SeedAdminUser()
	migration.SeedCompanies()

	app := fiber.New()

	// Initial Route
	route.RouteInit(app)

	app.Listen(":8089")
}
