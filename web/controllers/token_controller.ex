defmodule A2billingRestApi.TokenController do
  use A2billingRestApi.Web, :controller

  import Comeonin.Bcrypt, only: [checkpw: 2, dummy_checkpw: 0]

  alias A2billingRestApi.ApiUser

  plug :scrub_params, "data" when action in [:create]

  def create(conn, %{"data" => %{"email" => email, "password" => password}}) do
    user = Repo.get_by(ApiUser, email: email)
    cond do
      user && checkpw(password, user.encrypted_password) ->
        new_conn = conn     |> Guardian.Plug.api_sign_in(user)
        jwt      = new_conn |> Guardian.Plug.current_token()
        claims   = new_conn |> Guardian.Plug.claims
        #{:ok, %{"exp" => exp}} = claims

        new_conn
        |> put_resp_header("authorization", "Bearer #{jwt}")
        #|> put_resp_header("x-expires", exp)
        |> render "show.json", jwt: jwt
      user ->
        conn
        |> put_status(401)
        |> render A2billingRestApi.ErrorView, "error.json", message: "Unauthorized"
      true ->
        conn
        |> put_status(404)
        |> render A2billingRestApi.ErrorView, "404.json", message: "Could not login"
    end
  end
end
