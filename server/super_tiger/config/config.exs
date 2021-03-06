# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :super_tiger,
  ecto_repos: [SuperTiger.Repo]

# Configures the endpoint
config :super_tiger, SuperTiger.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1SFzHLHQ8kYUxhqgHwyAbRSQAuMFClPhUtBYnHXyEdmaQDEcIgiBrz0mruwebxQR",
  render_errors: [view: SuperTiger.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SuperTiger.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :ex_admin,
  repo: SuperTiger.Repo,
  module: SuperTiger,
  modules: [
    SuperTiger.ExAdmin.Dashboard,
    SuperTiger.ExAdmin.Podcast,
    SuperTiger.ExAdmin.User,
    SuperTiger.ExAdmin.Device,
    SuperTiger.ExAdmin.Episode,
    SuperTiger.ExAdmin.Category,
    SuperTiger.ExAdmin.FailedRefresh,
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :xain, :after_callback, {Phoenix.HTML, :raw}

