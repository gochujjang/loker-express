package entity

import (
	"time"

	"gorm.io/gorm"
)

type User struct {
	ID        uint           `json:"id" gorm:"primaryKey"`
	Name      string         `json:"name"`
	Email     string         `json:"email"`
	Password  string         `json:"-" gorm:"column:password"`
	Phone     string         `json:"phone"`
	Education string         `json:"education"`
	Marriage  string         `json:"marriage"`
	NoKtp     string         `json:"noktp"`
	CreatedAt time.Time      `json:"created_at"`
	UpdatedAt time.Time      `json:"updated_at"`
	DeletedAt gorm.DeletedAt `json:"-" gorm:"index, column:deleted_at"`
}
