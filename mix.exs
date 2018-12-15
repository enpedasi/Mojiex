defmodule Mojiex.MixProject do
  use Mix.Project

  def project do
    [
      app: :mojiex,
      version: "0.1.0",
      elixir: "~> 1.6",
      description: "Japanese strings - Wide/Half Kana characters Conversion Library",
      package: [
        maintainers: ["enpedasi"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/enpedasi/Mojiex"},
        files: ["lib", "mix.exs", "README.md", "LICENSE"]
      ],
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19.1", runtime: false, only: [:dev, :test]},
      {:credo, "~> 0.9.3", runtime: false, only: [:dev, :test]},
      {:dialyxir, "~> 0.5", only: [:dev, :test], runtime: false},
      {:power_assert, "~> 0.0"}
    ]
  end
end
