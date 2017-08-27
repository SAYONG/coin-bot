defmodule App.Mixfile do
  use Mix.Project

  def project do
    [app: :app,
     version: "0.1.0",
     elixir: "~> 1.3",
     default_task: "server",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     aliases: aliases]
  end

  def application do
    [applications: applications(Mix.env),
     mod: {App, []}]
  end

defp applications(:dev), do: applications(:all) ++ [:remix]
defp applications(_all), do: [:logger, :nadia, :httpotion]

  defp deps do
    [
      {:nadia, "~> 0.4.1"},
      {:httpotion, "~> 3.0.2"},
      {:timex, "~> 3.0"},
      {:remix, "~> 0.0.1", only: :dev},
    ]
  end

  defp aliases do
    [server: "run --no-halt"]
  end
end
