package response

import "time"

type JobResponse struct {
	ID        uint   `json:"id"`
	Position  string `json:"position"`
	CompanyID uint   `json:"company_id"`
	// Company []Company `gorm:"foreignKey:ID,constraint:OnUpdate:CASCADE,OnDelete:SET NULL"`

	Desc        string `json:"desc"`
	Requirement string `json:"requirement"`
	Benefit     string `json:"benefit"`

	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
}
