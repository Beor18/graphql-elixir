defmodule GraphqlElixirWeb.Schema do
    use Absinthe.Schema

    query do
        @desc "Hola Mundo"
        field :hola, type: :string do
            resolve(fn _, _, _ -> {:ok, "world"} end)
       end
    end
end
