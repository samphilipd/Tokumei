defmodule Tokumei.Mixfile do
  use Mix.Project

  def project do
    [app: :tokumei,
     version: "0.7.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: description(),
     docs: [
       main: "getting-started",
       source_url: "https://github.com/CrowdHailer/Tokumei/tree/master/app",
       extras: [
         "README.md",
         "../guides/getting-started.md",
         "../guides/security-with-https.md",
         "../guides/writing-middleware-with-macros.md",
         "../guides/why-raxx.md"
       ]
     ],
     package: package()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:raxx, "~> 0.11.1"},
      {:cookie, "~> 0.1.0"},
      {:raxx_static, "~> 0.3.0"},
      {:ace_http, "~> 0.4.5", optional: true},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    Tiny but MIGHTY Elixir webframework.
    """
  end

  defp package do
    [# These are the default files included in the package
     files: ["lib", "mix.exs", "README*", "LICENSE*", ],
     maintainers: ["Peter Saxton"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/CrowdHailer/Tokumei/tree/master/app"}]
  end
end
