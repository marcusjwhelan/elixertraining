defmodule Discuss.Topic do
  use Discuss.Web, :model

  # needs to relate phoenix app to postgres
  # schema - like mongoose
  # changeset deals with the validation

  schema "topics" do
    field :title, :string
  end

  # must validate through this to be added
  # struct = represents a record in our database ie topic
  # params hash = new properties we want ot update our
  # model with.
  # - usually struct and params will have the same properties

  # \\ %{} . default. if we do not pass nil it will fill out
  # as %{}
  def changeset(struct, params \\ %{}) do
  # cast = takes us where we are to where we want to be
  # - how we want to update the database.
  # - creates the changeset
  # validator = adds errors if any while validating the errors
  # - also defines properties that must be filled
  # - leave blank if no values are required?
    struct
      |> cast(params, [:title])
      |> validate_required([:title])
  end
end