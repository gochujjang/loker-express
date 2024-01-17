package entity

import (
	"time"

	"gorm.io/gorm"
)

type User struct {
	ID        uint           `json:"id" gorm:"primaryKey"`
	Name      string         `json:"name" gorm:"not null"`
	Email     string         `json:"email" gorm:"not null;unique"`
	Password  string         `json:"-" gorm:"column:password; not null"`
	Phone     string         `json:"phone" gorm:"not null"`
	Education string         `json:"education"`
	Marriage  string         `json:"marriage"`
	NoKtp     string         `json:"noktp"`
	Role      string         `json:"role" gorm:"default:user"`
	CreatedAt time.Time      `json:"created_at"`
	UpdatedAt time.Time      `json:"updated_at"`
	DeletedAt gorm.DeletedAt `json:"-" gorm:"index, column:deleted_at"`
}
