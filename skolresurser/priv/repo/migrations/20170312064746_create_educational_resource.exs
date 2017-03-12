defmodule Skolresurser.Repo.Migrations.CreateEducationalResource do
  use Ecto.Migration

  def change do
    create table(:eduactional_resources) do
      add :title_swe, :string
      add :title_eng, :string
      add :description_swe, :string
      add :description_eng, :string
      add :subject_code, :string
      add :provider, :string
      add :eligible_for_student_aid, :integer
      add :degree, :string
      add :educationLevel, :string
      add :municipality, :string
      add :susa_id, :string
      add :susa_str_id, :string
      add :expires, :date
      add :last_edited, :date

      timestamps()
    end

  end
end
