# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ex_admin_blog,
  ecto_repos: [ExAdminBlog.Repo]

# Configures the endpoint
config :ex_admin_blog, ExAdminBlog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MBPMZTxi1KO0A4SkOMmcixwH7k7PDf0znucQ6FWZ2QeIauu/kUlOMGFwP8cw+VQe",
  render_errors: [view: ExAdminBlog.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExAdminBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ex_admin,
  repo: ExAdminBlog.Repo,
  module: ExAdminBlog,
  modules: [
    ExAdminBlog.ExAdmin.Dashboard,
    ExAdminBlog.ExAdmin.Post,
    ExAdminBlog.ExAdmin.Comment
  ]

config :xain, :after_callback, {Phoenix.HTML, :raw}

