package graph

//go:generate go run github.com/99designs/gqlgen
import "github.com/LuisFlahan4051/api-graphql-psql-knet/graph/model"

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require here.

type Resolver struct {
	branches []*model.Branch
	products []*model.Product
	articles []*model.Article
	users    []*model.User
}
