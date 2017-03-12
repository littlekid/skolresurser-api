defmodule Datamonster.Fetcher do
  def fetch() do
    #fetch_links() #TODO - Uncomment when you want to work with live data, for now work with links in file! :D
    fetch_documents()
  end

  defp fetch_links() do
    HTTPoison.start
    # response = HTTPoison.get! "http://supernavet.skolverket.se/SusaNavExport/EmilExporter?UpdatedSince=2017-03-10"
    # previous (above) only gave me links to documents with information about updates... The one below gives me links to
    # actual documents with educational data. Also discovered endpoint "EmilObjectExporter?id=232965362"... Nowhere in docs..
    response = HTTPoison.get! "http://supernavet.skolverket.se/SusaNavExport/EmilExporter"
    xml_list_with_links_to_resources = response.body

    links = xml_list_with_links_to_resources
    |> Floki.find("a")
    |> Floki.attribute("href")
    |> Enum.join("\n")

    #cleanup from previous writes - no longer needed, I've concatenated all items into one string, free to open in write (instead of append) mode.
    #File.write! "./data/educational-resources-from-emil.xml", ""

    # Store all links to resources, so that we can make calls to fetch resources in chunks
    # New line: http://stackoverflow.com/questions/21839803/how-to-append-new-data-onto-a-new-line
    # Acutally looked for info on adding a new line in docs, didn't find it.
    #File.write! "./data/educational-resources-from-emil.xml", links, [:append]
    File.write! "./data/educational-resources-from-emil.xml", links

  end

  #def fetch_updates() do
  #  HTTPoison.start
  #  response = HTTPoison.get! "http://supernavet.skolverket.se/SusaNavExport/EmilExporter?UpdatedSince=2017-03-03"
  #end
  #

  defp fetch_documents() do
    File.stream!("./data/educational-resources-from-emil.xml", [])
    |> Enum.take(4) # -work with just three during development :D
    |> Enum.each(fn(url) ->
       url
       |> String.replace("\n", "")
       |> HTTPoison.get!
       |> store_document
    end)
  end

  defp store_document(resource_response) do
    xml = IO.inspect resource_response.body
    IO.puts ""

    doc = Exml.parse xml
    # Exml.get doc, "//educationInfo"
    IO.inspect Exml.get doc, "//educationInfo/title"
    IO.inspect Exml.get doc, "//educationInfo/form/@code"
    IO.inspect Exml.get doc, "//educationInfo/educationLevel/@code"
    IO.inspect Exml.get doc, "//educationInfo/description"

    #Exml.get doc, "//book[1]/title/@lang"
    #=> "en"

    #Exml.get doc, "//title"
    #=> ["Harry Potter", "Learning XML"
    IO.puts ""
    IO.puts ""
    IO.puts ""
  end
end
