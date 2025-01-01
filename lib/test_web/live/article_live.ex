defmodule TestWeb.ArticleLive do
  use TestWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    showing article: {@article_id}
    """
  end

  @impl true
  def mount(%{"id" => id}, _, socket) do
    {:ok, assign(socket, article_id: id)}
  end
end
