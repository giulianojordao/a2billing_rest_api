defmodule A2billingRestApi.TimezoneController do
  use A2billingRestApi.Web, :controller

  alias A2billingRestApi.Timezone
  alias JaSerializer.Params

  plug :scrub_params, "data" when action in [:create, :update]

  def index(conn, _params) do
    cc_timezones = Repo.all(Timezone)
    render(conn, "index.json-api", data: cc_timezones)
  end

  def create(conn, %{"data" => data = %{"type" => "timezone", "attributes" => _timezone_params}}) do
    changeset = Timezone.changeset(%Timezone{}, Params.to_attributes(data))

    case Repo.insert(changeset) do
      {:ok, timezone} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", timezone_path(conn, :show, timezone))
        |> render("show.json-api", data: timezone)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    timezone = Repo.get!(Timezone, id)
    render(conn, "show.json-api", data: timezone)
  end

  def update(conn, %{"id" => id, "data" => data = %{"type" => "timezone", "attributes" => _timezone_params}}) do
    timezone = Repo.get!(Timezone, id)
    changeset = Timezone.changeset(timezone, Params.to_attributes(data))

    case Repo.update(changeset) do
      {:ok, timezone} ->
        render(conn, "show.json-api", data: timezone)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    timezone = Repo.get!(Timezone, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(timezone)

    send_resp(conn, :no_content, "")
  end

end
