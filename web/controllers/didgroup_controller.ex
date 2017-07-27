defmodule A2billingRestApi.DidgroupController do
  use A2billingRestApi.Web, :controller

  alias A2billingRestApi.Didgroup
  alias JaSerializer.Params

  plug :scrub_params, "data" when action in [:create, :update]

  def index(conn, _params) do
    didgroups = Repo.all(Didgroup)
    render(conn, "index.json-api", data: didgroups)
  end

  def create(conn, %{"data" => data = %{"type" => "didgroup", "attributes" => _didgroup_params}}) do
    changeset = Didgroup.changeset(%Didgroup{}, Params.to_attributes(data))

    case Repo.insert(changeset) do
      {:ok, didgroup} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", didgroup_path(conn, :show, didgroup))
        |> render("show.json-api", data: didgroup)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    didgroup = Repo.get!(Didgroup, id)
    render(conn, "show.json-api", data: didgroup)
  end

  def update(conn, %{"id" => id, "data" => data = %{"type" => "didgroup", "attributes" => _didgroup_params}}) do
    didgroup = Repo.get!(Didgroup, id)
    changeset = Didgroup.changeset(didgroup, Params.to_attributes(data))

    case Repo.update(changeset) do
      {:ok, didgroup} ->
        render(conn, "show.json-api", data: didgroup)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    didgroup = Repo.get!(Didgroup, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(didgroup)

    send_resp(conn, :no_content, "")
  end

end
