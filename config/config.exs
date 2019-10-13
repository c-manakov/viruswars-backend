# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :virus_wars,
  ecto_repos: [VirusWars.Repo]

# Configures the endpoint
config :virus_wars, VirusWarsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vOQ/2+tlTb7RW7ey5ELl+5I0ysvh5fvgRY1EPUTPHihLsVAPZeGurR1r5Ku5XdLB",
  render_errors: [view: VirusWarsWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: VirusWars.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"