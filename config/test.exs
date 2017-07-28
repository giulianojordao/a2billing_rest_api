use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :a2billing_rest_api, A2billingRestApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :a2billing_rest_api, A2billingRestApi.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "root",
  database: "a2billing_rest_api_test",
  hostname: "127.0.0.1",
  pool: Ecto.Adapters.SQL.Sandbox
