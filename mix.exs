defmodule NosLib.MixProject do
  use Mix.Project

  def project do
    [
      app: :elven_gard_lib,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:recase, "~> 0.4"},
      {:uuid, "~> 1.1"}
    ]
  end
end
