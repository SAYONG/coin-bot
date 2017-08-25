use Mix.Config

config :app,
  bot_name: "coin_bot"

config :nadia,
  token: ""

import_config "#{Mix.env}.exs"
