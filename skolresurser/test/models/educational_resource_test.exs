defmodule Skolresurser.EducationalResourceTest do
  use Skolresurser.ModelCase

  alias Skolresurser.EducationalResource

  @valid_attrs %{degree: "some content", description_eng: "some content", description_swe: "some content", educationLevel: "some content", eligible_for_student_aid: 42, expires: %{day: 17, month: 4, year: 2010}, last_edited: %{day: 17, month: 4, year: 2010}, municipality: "some content", provider: "some content", subject_code: "some content", susa_id: "some content", susa_str_id: "some content", title_eng: "some content", title_swe: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = EducationalResource.changeset(%EducationalResource{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = EducationalResource.changeset(%EducationalResource{}, @invalid_attrs)
    refute changeset.valid?
  end
end
