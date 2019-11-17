use Mix.Config

# Configure your database
config :my_app, MyApp.Repo,
  username: "postgres",
  password: "docker",
  database: "elixir_api",
  hostname: "docker",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :my_app, MyAppWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Config number of rounds for test
config :bcrypt_elixir, :log_rounds, 4
