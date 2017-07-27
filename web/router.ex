defmodule A2billingRestApi.Router do
  use A2billingRestApi.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
  end

  scope "/api", A2billingRestApi do
    pipe_through :api

    resources "/cc_card", CardController, except: [:new, :edit]
    resources "/card_group", CardGroupController, except: [:new, :edit]
    resources "/card_seria", CardSeriaController, except: [:new, :edit]
    resources "/didgroups", DidgroupController, except: [:new, :edit]
    resources "/timezones", TimezoneController, except: [:new, :edit]
  end
end
