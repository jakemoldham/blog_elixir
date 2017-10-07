# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blog_elixir,
  ecto_repos: [BlogElixir.Repo]

# Configures the endpoint
config :blog_elixir, BlogElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mOiBo1lO1pT3hGbQ6S35n3GbgIFsxJ84zENA6eyaoGeVfHR4HsbqOlALg25BU9Il",
  render_errors: [view: BlogElixirWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlogElixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
