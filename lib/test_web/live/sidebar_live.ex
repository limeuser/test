defmodule TestWeb.SidebarLive do
  use TestWeb, :live_view

  use Phoenix.Component

  @impl true
  def render(assigns) do
    ~H"""
    <div>side bar</div>
    <div class="flex flex-col">
      <a href="#" phx-click="nav_to_article" phx-value-article_id="1" class="block">article1</a>
      <a href="#" phx-click="nav_to_article" phx-value-article_id="2" class="block">article2</a>
    </div>
    """
  end

  @impl true
  def mount(_, _, socket) do
    {:ok, socket, layout: false}
  end

  @impl true
  def handle_event("nav_to_article", %{"article_id" => id}, socket) do
    IO.inspect("side bar nav to : #{id}")
    {:noreply, socket |> push_navigate(to: ~p"/articles/#{id}")}
  end
end
