defmodule ChroxyClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :chroxy_client,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ChroxyClient.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:chrome_remote_interface, "~> 0.1.0"}
    ]
  end
end
