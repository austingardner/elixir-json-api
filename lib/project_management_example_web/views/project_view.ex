defmodule ProjectManagementExampleWeb.ProjectView do
  use ProjectManagementExampleWeb, :view
  use JaSerializer.PhoenixView
  alias ProjectManagementExampleWeb.ProjectView

  attributes [:title, :description]
end
