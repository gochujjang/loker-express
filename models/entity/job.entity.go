package entity

import (
	"time"

	"gorm.io/gorm"
)

type Job struct {
	ID          uint           `json:"id" gorm:"primaryKey"`
	Position    string         `json:"position" gorm:"not null"`
	CompanyID   uint           `json:"company_id" gorm:"not null;index"`
	Company     Company        `json:"company" gorm:"foreignKey:CompanyID"`
	Desc        string         `json:"desc"`
	Requirement string         `json:"requirement"`
	Benefit     string         `json:"benefit"`
	CreatedAt   time.Time      `json:"created_at"`
	UpdatedAt   time.Time      `json:"updated_at"`
	DeletedAt   gorm.DeletedAt `json:"-" gorm:"index, column:deleted_at"`
}
