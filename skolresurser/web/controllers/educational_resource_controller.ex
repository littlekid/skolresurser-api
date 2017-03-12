defmodule Skolresurser.EducationalResourceController do
  use Skolresurser.Web, :controller

  alias Skolresurser.EducationalResource

  def index(conn, _params) do
    eduactional_resources = Repo.all(EducationalResource)
    render(conn, "index.json", eduactional_resources: eduactional_resources)
  end

  def create(conn, %{"educational_resource" => educational_resource_params}) do
    changeset = EducationalResource.changeset(%EducationalResource{}, educational_resource_params)

    case Repo.insert(changeset) do
      {:ok, educational_resource} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", educational_resource_path(conn, :show, educational_resource))
        |> render("show.json", educational_resource: educational_resource)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Skolresurser.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    educational_resource = Repo.get!(EducationalResource, id)
    render(conn, "show.json", educational_resource: educational_resource)
  end

  def update(conn, %{"id" => id, "educational_resource" => educational_resource_params}) do
    educational_resource = Repo.get!(EducationalResource, id)
    changeset = EducationalResource.changeset(educational_resource, educational_resource_params)

    case Repo.update(changeset) do
      {:ok, educational_resource} ->
        render(conn, "show.json", educational_resource: educational_resource)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Skolresurser.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    educational_resource = Repo.get!(EducationalResource, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(educational_resource)

    send_resp(conn, :no_content, "")
  end
end
