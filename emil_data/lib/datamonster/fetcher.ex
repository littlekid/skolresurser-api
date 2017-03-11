defmodule Datamonster.Fetcher do
  def fetch() do
    HTTPoison.start
    HTTPoison.get! "http://victoriawagman.com"
  end
end
