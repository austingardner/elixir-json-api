# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :project_management_example,
  ecto_repos: [ProjectManagementExample.Repo]

# Configures the endpoint
config :project_management_example, ProjectManagementExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UIZuf+q7cQXJZHFluOJ5bSSCH3vpEHHcVYYLMMcNihggBb/OLUncpVoonDzRJDo9",
  render_errors: [view: ProjectManagementExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ProjectManagementExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

  config :mime, :types, %{
    "application/vnd.api+json" => ["json-api"]
  }

  config :phoenix, :format_encoders,
    "json-api": Poison  

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
