# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :postgres_sample,
  ecto_repos: [PostgresSample.Repo]

# Configures the endpoint
config :postgres_sample, PostgresSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EhKc/V1GdDD2iJ9cMilwnT4wwrtxkCMhBnIrvtHTYfVVNP0lYMt0CsJ2LDuDm/og",
  render_errors: [view: PostgresSampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PostgresSample.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
