defmodule Extras.Mixfile do
  use Mix.Project

  @description """
  Tiny, tested, namespaced helper functions
  """

  def project do
    [
      app: :extras,
      elixir: "~> 1.4",
      version: "0.1.1",
      description: @description,
      deps: deps(),
      package: package(),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
    ]
  end

  def application do
    [
      extra_applications: [
        :logger,
      ],
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false},
      {:plug, "~> 1.3", optional: true},
    ]
  end

  defp package do
    [
      maintainers: ["Sean Omlor"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/somlor/extras"
      }
    ]
  end
end
