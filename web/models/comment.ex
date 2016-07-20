defmodule ExAdminBlog.Comment do
  use ExAdminBlog.Web, :model

  schema "comments" do
    field :body, :string
    belongs_to :post, ExAdminBlog.Post
    
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body, :post_id])
    |> validate_required([:body, :post_id])
  end
end
