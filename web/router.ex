defmodule A2billingRestApi.Router do
  use A2billingRestApi.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
  end

  pipeline :private_api do
    plug :accepts, ["json-api"]
    plug Guardian.Plug.VerifyHeader
    plug Guardian.Plug.LoadResource
    plug Guardian.Plug.EnsureAuthenticated
  end

  scope "/api", A2billingRestApi do
    pipe_through :private_api

    resources "/cards", CardController, except: [:new, :edit]
    resources "/card_groups", CardGroupController, except: [:new, :edit]
    resources "/card_series", CardSeriaController, except: [:new, :edit]
    resources "/didgroups", DidgroupController, except: [:new, :edit]
    resources "/timezones", TimezoneController, except: [:new, :edit]
  end

  scope "/", A2billingRestApi do
    pipe_through :api

    resources "/token", TokenController, only: [:create]
  end
end
