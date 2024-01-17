package migration

import (
	"fmt"
	"log"

	database "github.com/gochujjang/loker-express/database"
	"github.com/gochujjang/loker-express/models/entity"
)

func RunMigration() {
	err := database.DB.AutoMigrate(
		&entity.User{},
		&entity.Job{},
		&entity.Company{},
	)
	if err != nil {
		log.Println(err)
	}
	fmt.Println("Database migration complete")
}

func SeedAdminUser() {
	adminUser := &entity.User{
		Name:     "Admin",
		Email:    "admin@example.com",
		Password: "password", // Make sure to hash passwords in a real-world scenario
		Phone:    "123456789",
		Role:     "admin",
	}

	err := database.DB.Create(adminUser).Error
	if err != nil {
		log.Println(err)
	}
	fmt.Println("Admin user seeded")
}

func SeedCompanies() {
	companies := []entity.Company{
		{
			CompanyName: "Company A",
			Address:     "Address A",
			Phone:       "123456789",
			Email:       "companya@example.com",
		},
		{
			CompanyName: "Company B",
			Address:     "Address B",
			Phone:       "987654321",
			Email:       "companyb@example.com",
		},
		// Add more companies as needed
	}

	for _, company := range companies {
		err := database.DB.Create(&company).Error
		if err != nil {
			log.Println(err)
		}
	}

	log.Println("Companies seeded successfully")
}
