package entity

import (
	"time"

	"gorm.io/gorm"
)

type Company struct {
	ID          uint   `json:"id" gorm:"primaryKey"`
	CompanyName string `json:"company_name" gorm:"not null"`
	Address     string `json:"address"`
	Phone       string `json:"phone"`
	Email       string `json:"email"`

	CreatedAt time.Time      `json:"created_at"`
	UpdatedAt time.Time      `json:"updated_at"`
	DeletedAt gorm.DeletedAt `json:"-" gorm:"index, column:deleted_at"`
}
