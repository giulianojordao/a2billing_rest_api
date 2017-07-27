defmodule A2billingRestApi.CardGroupController do
  use A2billingRestApi.Web, :controller

  alias A2billingRestApi.CardGroup
  alias JaSerializer.Params

  plug :scrub_params, "data" when action in [:create, :update]

  def index(conn, _params) do
    cc_card_group = Repo.all(CardGroup)
    render(conn, "index.json-api", data: cc_card_group)
  end

  def create(conn, %{"data" => data = %{"type" => "card_group", "attributes" => _card_group_params}}) do
    changeset = CardGroup.changeset(%CardGroup{}, Params.to_attributes(data))

    case Repo.insert(changeset) do
      {:ok, card_group} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", card_group_path(conn, :show, card_group))
        |> render("show.json-api", data: card_group)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    card_group = Repo.get!(CardGroup, id)
    render(conn, "show.json-api", data: card_group)
  end

  def update(conn, %{"id" => id, "data" => data = %{"type" => "card_group", "attributes" => _card_group_params}}) do
    card_group = Repo.get!(CardGroup, id)
    changeset = CardGroup.changeset(card_group, Params.to_attributes(data))

    case Repo.update(changeset) do
      {:ok, card_group} ->
        render(conn, "show.json-api", data: card_group)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    card_group = Repo.get!(CardGroup, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(card_group)

    send_resp(conn, :no_content, "")
  end

end
