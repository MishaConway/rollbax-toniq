defmodule RollbaxToniq.Mixfile do
  use Mix.Project

  def project do
    [app: :rollbax_toniq,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: "Rollbax integration for Toniq.",
     package: package,
     name: "rollbax_toniq",
     docs: [source_url: "https://github.com/MishaConway/rollbax-toniq"]]
  end

  defp package do
    [contributors: ["Misha Conway"],
    licenses: ["MIT"],
    links: %{github: "https://github.com/MishaConway/rollbax-toniq"},
    maintainers: ["Misha Conway"],
    files: ~w(mix.exs README.md lib)]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}, {:stringify, "~> 0.1.1"}]
  end
end
