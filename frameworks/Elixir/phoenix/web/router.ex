defmodule Hello.Router do
  use Hello.Web, :router

  pipeline :bare do
  end

  scope "/", Hello do
    pipe_through :bare
    get "/plaintext", PageController, :plaintext
  end

  scope "/", Hello do
    get "/json", PageController, :_json
    get "/db", PageController, :db
    get "/queries", PageController, :queries
    get "/fortune", PageController, :fortunes
    get "/update", PageController, :updates
    get "/", PageController, :index
  end
end
