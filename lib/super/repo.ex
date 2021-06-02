defmodule Super.Repo do
  use Ecto.Repo,
    otp_app: :super,
    adapter: Ecto.Adapters.Postgres
end
