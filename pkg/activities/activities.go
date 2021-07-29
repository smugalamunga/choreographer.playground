package activities

import (
	"context"

	"github.com/smugalamunga/choreographer.playground/pkg/models"

	lmodels "github.com/smugalamunga/location.playground/pkg/models"
	pmodels "github.com/smugalamunga/profile.playground/pkg/models"
	umodels "github.com/smugalamunga/user.playground/pkg/models"
)

func CreateUserActivity(ctx context.Context, user *umodels.UserModel) error {
	_ := models.NewAccount()
	return nil
}

func DeleteUserActivity(ctx context.Context, user *umodels.UserModel) error {
	return nil
}

func CreateLocationActivity(ctx context.Context, location *lmodels.Location) error {
	return nil
}

func DeleteLocationActivity(ctx context.Context, location *lmodels.Location) error {
	return nil
}

func CreateProfileActivity(ctx context.Context, profile *pmodels.ProfileModel) error {
	return nil
}

func DeleteProfileActivity(ctx context.Context, profile *pmodels.ProfileModel) error {
	return nil
}
