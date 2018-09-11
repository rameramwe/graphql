# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :store,
  ecto_repos: [Store.Repo]

# Configures the endpoint
config :store, StoreWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8mrErri1zPQdRYxjumb9+yC85CoVEH6r5pHbljSeHVWf+zHsavKnYlBfxiTYJJ73",
  render_errors: [view: StoreWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Store.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
