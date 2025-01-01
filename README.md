# sticky live view can't handle event after calling push_navigate

* mix phx.server
* open http://localhost:4000/articles/1
* click article 2, it'ok to navigate to article 2
* click article 1, can't navigate to article 1, side bar liveview can't receive event
