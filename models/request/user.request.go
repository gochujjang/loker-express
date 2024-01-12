package request

type UserCreateRequest struct {
	Name      string `json:"name" validate:"required"`
	Email     string `json:"email" validate:"required"`
	Phone     string `json:"phone" validate:"required"`
	Education string `json:"education"`
	Marriage  string `json:"marriage"`
	NoKtp     string `json:"noktp"`
}

type UserUpdateRequest struct {
	Name      string `json:"name"`
	Email     string `json:"email"`
	Phone     string `json:"phone"`
	Education string `json:"education"`
	Marriage  string `json:"marriage"`
	NoKtp     string `json:"noktp"`
}
