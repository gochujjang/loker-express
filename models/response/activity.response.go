package response

import (
	"time"
)

type ActResponse struct {
	ID        uint             `json:"id"`
	UserID    uint             `json:"user_id"`
	// User      []UserResponse   `json:"user"`
	JobID     uint             `json:"job_id"`
	// Job       []JobResponseAct `json:"job"`
	Status    string           `json:"status"`
	Date      time.Time        `json:"date"`
	CreatedAt time.Time        `json:"created_at"`
	UpdatedAt time.Time        `json:"updated_at"`
}
