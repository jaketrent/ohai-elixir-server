defmodule Servy.Plugins do
  alias Servy.Conv

  def track(%Conv{status: 404, path: path} = conv) do
    IO.puts "Warning: 404: #{path}"
    conv
  end

  def track(%Conv{} = conv), do: conv

  def log(conv), do: IO.inspect conv

  def rewrite_path(%Conv{path: "/wildlife"} = conv) do
    %{conv | path: "/wildthings"}
  end

  def rewrite_path(%Conv{} = conv), do: conv
end 

