defmodule A2billingRestApi.CardSeriaController do
  use A2billingRestApi.Web, :controller

  alias A2billingRestApi.CardSeria
  alias JaSerializer.Params

  plug :scrub_params, "data" when action in [:create, :update]

  def index(conn, _params) do
    cc_card_seria = Repo.all(CardSeria)
    render(conn, "index.json-api", data: cc_card_seria)
  end

  def create(conn, %{"data" => data = %{"type" => "card_seria", "attributes" => _card_seria_params}}) do
    changeset = CardSeria.changeset(%CardSeria{}, Params.to_attributes(data))

    case Repo.insert(changeset) do
      {:ok, card_seria} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", card_seria_path(conn, :show, card_seria))
        |> render("show.json-api", data: card_seria)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    card_seria = Repo.get!(CardSeria, id)
    render(conn, "show.json-api", data: card_seria)
  end

  def update(conn, %{"id" => id, "data" => data = %{"type" => "card_seria", "attributes" => _card_seria_params}}) do
    card_seria = Repo.get!(CardSeria, id)
    changeset = CardSeria.changeset(card_seria, Params.to_attributes(data))

    case Repo.update(changeset) do
      {:ok, card_seria} ->
        render(conn, "show.json-api", data: card_seria)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    card_seria = Repo.get!(CardSeria, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(card_seria)

    send_resp(conn, :no_content, "")
  end

end
