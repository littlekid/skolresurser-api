defmodule Skolresurser.EducationalResource do
  use Skolresurser.Web, :model

  schema "eduactional_resources" do
    field :title_swe, :string
    field :title_eng, :string
    field :description_swe, :string
    field :description_eng, :string
    field :subject_code, :string
    field :provider, :string
    field :eligible_for_student_aid, :integer
    field :degree, :string
    field :educationLevel, :string
    field :municipality, :string
    field :susa_id, :string
    field :susa_str_id, :string
    field :expires, Ecto.Date
    field :last_edited, Ecto.Date

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title_swe, :title_eng, :description_swe, :description_eng, :subject_code, :provider, :eligible_for_student_aid, :degree, :educationLevel, :municipality, :susa_id, :susa_str_id, :expires, :last_edited])
    |> validate_required([:title_swe, :title_eng, :description_swe, :description_eng, :subject_code, :provider, :eligible_for_student_aid, :degree, :educationLevel, :municipality, :susa_id, :susa_str_id, :expires, :last_edited])
  end
end
