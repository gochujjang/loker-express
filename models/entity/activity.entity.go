package entity

import (
	"time"

	"gorm.io/gorm"
)

type Activity struct {
	ID        uint           `json:"id" gorm:"primaryKey"`
	UserID    uint           `json:"user_id" gorm:"not null;index"`
	User      User           `json:"user" gorm:"foreignKey:UserID"`
	JobID     uint           `json:"job_id" gorm:"not null;index"`
	Job       Job            `json:"job" gorm:"foreignKey:JobID"`
	Status    string         `json:"status" gorm:"not null;check:status IN ('diterima', 'ditolak', 'terdaftar');default:'terdaftar'"`
	Date      time.Time      `json:"date"`
	CreatedAt time.Time      `json:"created_at"`
	UpdatedAt time.Time      `json:"updated_at"`
	DeletedAt gorm.DeletedAt `json:"-" gorm:"index, column:deleted_at"`
}
