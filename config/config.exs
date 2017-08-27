use Mix.Config

config :app,
  bot_name: "coin_bot"

config :nadia,
  token: ""

config :remix,
  escript: true,
  silent: true

import_config "#{Mix.env}.exs"
