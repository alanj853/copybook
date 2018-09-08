use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :copybook, CopybookWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :copybook, Copybook.Repo,
  adapter: Sqlite.Ecto2,
  username: "postgres",
  password: "postgres",
  database: "copybook_test",
  hostname: "localhost",
  pool_size: 10,
  pool: Ecto.Adapters.SQL.Sandbox
