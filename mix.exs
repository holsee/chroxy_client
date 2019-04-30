defmodule ChroxyClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :chroxy_client,
      version: "0.2.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
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
      {:chrome_remote_interface, "~> 0.2.0"}
    ]
  end

  defp description() do
    "Client for Chrome Proxy Service which enables scalable remote debug protocol connections to managed Headless Chrome instances."
  end

  defp package() do
    [
      name: "chroxy client",
      files: ["config", "lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Steven Holdsworth (@holsee)"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/holsee/chroxy_client"}
    ]
  end
end
