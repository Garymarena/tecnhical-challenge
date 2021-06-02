# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :super,
  ecto_repos: [Super.Repo]

# Configures the endpoint
config :super, SuperWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gpQUuy1Ojmz2mzQJZzYheyIQXT0jAjx7pCMCRxYyq3u8kkWDLzDRTTBdLP56bhHe",
  render_errors: [view: SuperWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Super.PubSub,
  live_view: [signing_salt: "iChdryO1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
