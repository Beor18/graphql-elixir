defmodule GraphqlElixir.Repo do
  use Ecto.Repo,
    otp_app: :graphqlElixir,
    adapter: Ecto.Adapters.Postgres
end
