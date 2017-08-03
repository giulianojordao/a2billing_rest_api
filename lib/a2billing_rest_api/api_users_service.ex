defmodule A2billingRestApi.ApiUsersService do
  alias A2billingRestApi.ApiUser

  def create_new_api_user(data = %{email: _email, password: _password}) do
    changeset = ApiUser.changeset(%ApiUser{}, data)

    case A2billingRestApi.Repo.insert(changeset) do
      { :ok, user } ->
        { :ok, jwt, full_claims } = Guardian.encode_and_sign(user, :access)
        { :ok, jwt: jwt }
      { :error, changeset } ->
        { :error, changeset }
    end
  end

  def get_jwt_by_user(email) do
    user = A2billingRestApi.Repo.get_by!(ApiUser, %{email: email})
    Guardian.encode_and_sign(user, :access)
  end

end
