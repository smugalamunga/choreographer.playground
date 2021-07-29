package workflows

import (
	"github.com/smugalamunga/choreographer.playground/pkg/models"
	"go.temporal.io/sdk/workflow"
)

func CreateAccountWorkflow(ctx workflow.Context, account *models.Account) error {

	return nil
}
