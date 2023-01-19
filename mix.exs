defmodule Mojiex.MixProject do
  use Mix.Project

  def project do
    [
      app: :mojiex,
      version: "0.1.0",
      elixir: "~> 1.6",
      description: "Japanese strings - Wide/Half Kana characters Conversion Library",
      source_url: "https://github.com/enpedasi/Mojiex",
      package: [
        maintainers: ["enpedasi"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/enpedasi/Mojiex"},
        files: ["lib", "mix.exs", "README.md", "LICENSE"]
      ],
      deps: deps(),
      docs: [
        main: "Mojiex",
        source_ref: "master"
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.29.1", runtime: false, only: [:dev, :test]},
      {:credo, "~> 1.6", runtime: false, only: [:dev, :test]},
      {:dialyxir, "~> 1.2", only: [:dev, :test], runtime: false}
    ]
  end
end
