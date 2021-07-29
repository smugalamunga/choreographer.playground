package models

import (
	lmodels "github.com/smugalamunga/location.playground/pkg/models"
	pmodels "github.com/smugalamunga/profile.playground/pkg/models"
	umodels "github.com/smugalamunga/user.playground/pkg/models"
)

// type User struct {
// }

// type Profile struct {
// }

// type Location struct {
// }

type Account struct {
	User     *umodels.UserModel
	Location *lmodels.Location
	Profile  *pmodels.ProfileModel
}

func NewAccount(user *umodels.UserModel, location *lmodels.Location, profile *pmodels.ProfileModel) *Account {
	return &Account{
		User:     user,
		Location: location,
		Profile:  profile,
	}
}

// func NewUser() *models.User {
// 	return &models.User{}
// }

// func NewLocation() *models.Location {
// 	return &models.Location{}
// }

// func NewProfile() *models.Profile {
// 	return &models.Profile{}
// }
