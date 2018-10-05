defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  alias Discuss.Topic
  # has to take 2 arguments
  # connection and parameters
  # conn is a struct
  # focal point of phoenix application
  # represents the incoming and outgoing request.
  def new(conn, params) do
    # create a form with a changeset
    changeset = Topic.changeset(%Topic{}, %{})

    # please show new template. have to do this
    # render this templage with the connection
    # pass keyword list. of changeset as changeset.
    # pass custome variable to your html
    render conn, "new.html", changeset: changeset
  end

  # new to see GET the form and create to POST it
  # pattern match params into arg 2. so we only need topic
  def create(conn, %{"topic" => topic}) do

  end

end