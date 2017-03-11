defmodule Datamonster.Fetcher do
  def fetch() do
    HTTPoison.start
    response = HTTPoison.get! "http://supernavet.skolverket.se/SusaNavExport/EmilExporter"
    xml = response.body
    File.write! "./educational-resources-from-emil.xml", xml
  end
end
