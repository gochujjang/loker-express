package migration

import (
	"fmt"
	"log"

	database "github.com/gochujjang/loker-express/database"
	"github.com/gochujjang/loker-express/models/entity"
)

func RunMigration()  {
	err := database.DB.AutoMigrate(&entity.User{})
	if err != nil {
		log.Println(err)
	}
	fmt.Println("Database migration complete")
}