# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :skolresurser,
  ecto_repos: [Skolresurser.Repo]

# Configures the endpoint
config :skolresurser, Skolresurser.Endpoint,
  url: [host: "skolresurser.dev"],
  secret_key_base: "tNddJU5TWPSeFfAkg9W4Pr8vk4LM+Boh67smZnb0vSBHjNVk44JfUC521AwSi+1g",
  render_errors: [view: Skolresurser.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Skolresurser.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
