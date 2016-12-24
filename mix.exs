defmodule Rebar3ElvisPlugin.Mixfile do
  use Mix.Project

  def project do
    [app: :rebar3_elvis_plugin,
     version: "0.0.2",
     description: description,
     package: package]
  end

  defp description do
    """
    Rebar3 Elvis plugin
    """
  end

  defp package do
    [build_tools: ["rebar3"],
     maintainers: ["Ilya Khaprov"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/deadtrickster/rebar3_elvis_plugin"},
     files: ["bin", "src", "include", "README.md", "LICENSE", "rebar.config"]]
  end
end
