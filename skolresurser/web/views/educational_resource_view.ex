defmodule Skolresurser.EducationalResourceView do
  use Skolresurser.Web, :view

  def render("index.json", %{eduactional_resources: eduactional_resources}) do
    %{data: render_many(eduactional_resources, Skolresurser.EducationalResourceView, "educational_resource.json")}
  end

  def render("show.json", %{educational_resource: educational_resource}) do
    %{data: render_one(educational_resource, Skolresurser.EducationalResourceView, "educational_resource.json")}
  end

  def render("educational_resource.json", %{educational_resource: educational_resource}) do
    %{id: educational_resource.id,
      title_swe: educational_resource.title_swe,
      title_eng: educational_resource.title_eng,
      description_swe: educational_resource.description_swe,
      description_eng: educational_resource.description_eng,
      subject_code: educational_resource.subject_code,
      provider: educational_resource.provider,
      eligible_for_student_aid: educational_resource.eligible_for_student_aid,
      degree: educational_resource.degree,
      educationLevel: educational_resource.educationLevel,
      municipality: educational_resource.municipality,
      susa_id: educational_resource.susa_id,
      susa_str_id: educational_resource.susa_str_id,
      expires: educational_resource.expires,
      last_edited: educational_resource.last_edited}
  end
end
