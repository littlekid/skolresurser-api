defmodule Datamonster.Fetcher do
  def fetch() do
    HTTPoison.start
    response = HTTPoison.get! "http://victoriawagman.com"
    xhtml = response.body
    File.write! "./educational-resources-from-emil.xml", xhtml
  end
end
