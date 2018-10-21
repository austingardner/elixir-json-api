defmodule ProjectManagementExampleWeb.DocumentView do
  use ProjectManagementExampleWeb, :view
  use JaSerializer.PhoenixView
  alias ProjectManagementExampleWeb.DocumentView

  attributes [:project_id, :name, :content, :view_count, :published]
end
