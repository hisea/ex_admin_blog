defmodule ExAdminBlog.Repo do
  use Ecto.Repo, otp_app: :ex_admin_blog
  use Scrivener, page_size: 10  # <--- add this
end
