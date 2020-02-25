defmodule GraphqlElixirWeb.Router do
  use GraphqlElixirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GraphqlElixirWeb do
    pipe_through :api
  end
end
