defmodule A2billingRestApi.TokenController do
  use A2billingRestApi.Web, :controller

  alias A2billingRestApi.User

  plug :scrub_params, "data" when action in [:create]

  def create(conn, %{"data" => %{"username" => username, "password" => password}}) do
    user = Repo.get_by(User, username: username)
    cond do
      user ->
        new_conn = conn     |> Guardian.Plug.api_sign_in(user)
        jwt      = new_conn |> Guardian.Plug.current_token()
        claims   = new_conn |> Guardian.Plug.claims
        #{:ok, %{"exp" => exp}} = claims

        new_conn
        |> put_resp_header("authorization", "Bearer #{jwt}")
        #|> put_resp_header("x-expires", exp)
        |> render "show.json", jwt: jwt
      true ->
        conn
        |> put_status(404)
        |> render "error.json", message: "Could not login"
    end
  end
end
