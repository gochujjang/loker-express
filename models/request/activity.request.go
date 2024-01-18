package request

type ActCreateRequest struct {
	UserID uint   `json:"user_id" validate:"required"`
	JobID  uint   `json:"job_id" validate:"required"`
	Status string `json:"status"`
}
