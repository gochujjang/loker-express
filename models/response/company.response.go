package response

import "time"

type CompanyResponse struct {
	ID          uint      `json:"id"`
	CompanyName string    `json:"company_name"`
	Address     string    `json:"address"`
	Phone       string    `json:"phone"`
	Email       string    `json:"email"`
	CreatedAt   time.Time `json:"created_at"`
	UpdatedAt   time.Time `json:"updated_at"`
}
