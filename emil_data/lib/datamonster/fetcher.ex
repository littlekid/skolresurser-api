defmodule Datamonster.Fetcher do
  def fetch() do
    HTTPoison.start
    response = HTTPoison.get! "http://supernavet.skolverket.se/SusaNavExport/EmilExporter?UpdatedSince=2017-03-10"
    xml_list_with_links_to_resources = response.body

    links = xml_list_with_links_to_resources
    |> Floki.find("a")
    |> Floki.attribute("href")
    |> Enum.join("\n")

    #cleanup from previous writes
    File.write! "./data/educational-resources-from-emil.xml", ""

    # Store all links to resources, so that we can make calls to fetch resources in chunks
    # New line: http://stackoverflow.com/questions/21839803/how-to-append-new-data-onto-a-new-line
    # Acutally looked for info on adding a new line in docs, didn't find it.
    File.write! "./data/educational-resources-from-emil.xml", links, [:append]
  end

  #def fetch_updates() do
  #  HTTPoison.start
  #  response = HTTPoison.get! "http://supernavet.skolverket.se/SusaNavExport/EmilExporter?UpdatedSince=2017-03-03"
  #end
end
