# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blog_elixir,
  ecto_repos: [BlogElixir.Repo]

config :phoenix_slime, :use_slim_extension, true

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

config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: BlogElixir.Coherence.User,
  repo: BlogElixir.Repo,
  module: BlogElixir,
  web_module: BlogElixirWeb,
  router: BlogElixirWeb.Router,
  messages_backend: BlogElixirWeb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:trackable, :invitable, :rememberable, :authenticatable, :recoverable, :lockable, :unlockable_with_token, :registerable]

config :coherence, BlogElixirWeb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
