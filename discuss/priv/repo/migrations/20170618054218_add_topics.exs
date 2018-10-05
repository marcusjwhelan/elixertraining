defmodule Discuss.Repo.Migrations.AddTopics do
  use Ecto.Migration

  # create
  # mix ecto.gen.migration add_topics
  # run
  # mix ecto.migrate
  # > create table topics
  def change do
    # create a new table called topics
    create table(:topics) do
      # make sure to have a column name title with type
      # string.
      add :title, :string
    end
  end
end
