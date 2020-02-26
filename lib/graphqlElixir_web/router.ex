defmodule GraphqlElixirWeb.Router do
  use GraphqlElixirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api"  do
    pipe_through :api

    forward "/graphql",
      Absinthe.Plug,
      schema: GraphqlElixirWeb.Schema

    forward "/graphiql",
      Absinthe.Plug.GraphiQL,
      schema: GraphqlElixirWeb.Schema,
      interface: :simple
  end
end
