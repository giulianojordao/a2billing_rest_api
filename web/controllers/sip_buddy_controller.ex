defmodule A2billingRestApi.SipBuddyController do
  use A2billingRestApi.Web, :controller

  alias A2billingRestApi.SipBuddy
  alias JaSerializer.Params

  def index(conn, _params) do
    cc_sip_buddies = Repo.all(SipBuddy)
    render(conn, "index.json-api", data: cc_sip_buddies)
  end

  def create(conn, %{"data" => data = %{"type" => "sip_buddy", "attributes" => sip_buddy_params}}) do
    attrs = Params.to_attributes(data) |> Map.put("type", sip_buddy_params["type"])

    changeset = SipBuddy.changeset(%SipBuddy{}, attrs)

    case Repo.insert(changeset) do
      {:ok, sip_buddy} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", sip_buddy_path(conn, :show, sip_buddy))
        |> render("show.json-api", data: sip_buddy)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    sip_buddy = Repo.get!(SipBuddy, id)
    render(conn, "show.json-api", data: sip_buddy)
  end

  def update(conn, %{"id" => id, "data" => data = %{"type" => "sip_buddy", "attributes" => sip_buddy_params}}) do
    sip_buddy = Repo.get!(SipBuddy, id)
    attrs = Params.to_attributes(data) |> Map.put("type", sip_buddy_params["type"])

    changeset = SipBuddy.changeset(sip_buddy, attrs)

    case Repo.update(changeset) do
      {:ok, sip_buddy} ->
        render(conn, "show.json-api", data: sip_buddy)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    sip_buddy = Repo.get!(SipBuddy, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(sip_buddy)

    send_resp(conn, :no_content, "")
  end

end
