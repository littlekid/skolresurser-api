defmodule Skolresurser.EducationalResourceControllerTest do
  use Skolresurser.ConnCase

  alias Skolresurser.EducationalResource
  @valid_attrs %{degree: "some content", description_eng: "some content", description_swe: "some content", educationLevel: "some content", eligible_for_student_aid: 42, expires: %{day: 17, month: 4, year: 2010}, last_edited: %{day: 17, month: 4, year: 2010}, municipality: "some content", provider: "some content", subject_code: "some content", susa_id: "some content", susa_str_id: "some content", title_eng: "some content", title_swe: "some content"}
  @invalid_attrs %{}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, educational_resource_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    educational_resource = Repo.insert! %EducationalResource{}
    conn = get conn, educational_resource_path(conn, :show, educational_resource)
    assert json_response(conn, 200)["data"] == %{"id" => educational_resource.id,
      "title_swe" => educational_resource.title_swe,
      "title_eng" => educational_resource.title_eng,
      "description_swe" => educational_resource.description_swe,
      "description_eng" => educational_resource.description_eng,
      "subject_code" => educational_resource.subject_code,
      "provider" => educational_resource.provider,
      "eligible_for_student_aid" => educational_resource.eligible_for_student_aid,
      "degree" => educational_resource.degree,
      "educationLevel" => educational_resource.educationLevel,
      "municipality" => educational_resource.municipality,
      "susa_id" => educational_resource.susa_id,
      "susa_str_id" => educational_resource.susa_str_id,
      "expires" => educational_resource.expires,
      "last_edited" => educational_resource.last_edited}
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, educational_resource_path(conn, :show, -1)
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post conn, educational_resource_path(conn, :create), educational_resource: @valid_attrs
    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(EducationalResource, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, educational_resource_path(conn, :create), educational_resource: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    educational_resource = Repo.insert! %EducationalResource{}
    conn = put conn, educational_resource_path(conn, :update, educational_resource), educational_resource: @valid_attrs
    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(EducationalResource, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    educational_resource = Repo.insert! %EducationalResource{}
    conn = put conn, educational_resource_path(conn, :update, educational_resource), educational_resource: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    educational_resource = Repo.insert! %EducationalResource{}
    conn = delete conn, educational_resource_path(conn, :delete, educational_resource)
    assert response(conn, 204)
    refute Repo.get(EducationalResource, educational_resource.id)
  end
end
