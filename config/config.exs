# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :a2billing_rest_api,
  ecto_repos: [A2billingRestApi.Repo]

# Configures the endpoint
config :a2billing_rest_api, A2billingRestApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1uB5KTsclCCoa5JmvDggFevewncxGa59nwlMq9L+gX9b5Aw0z5xsQiJz/+J54or9",
  render_errors: [view: A2billingRestApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: A2billingRestApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :phoenix, :format_encoders,
  "json-api": Poison

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}
