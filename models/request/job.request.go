package request

type JobCreateRequest struct {
	Position    string `json:"position" validate:"required`
	CompanyID   uint   `json:"company_id" validate:"required`
	Desc        string `json:"desc"`
	Requirement string `json:"requirement"`
	Benefit     string `json:"benefit"`
}
