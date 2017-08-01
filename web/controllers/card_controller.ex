defmodule A2billingRestApi.CardController do
  use A2billingRestApi.Web, :controller

  alias A2billingRestApi.Card
  alias JaSerializer.Params

  def index(conn, _params) do
    cc_card = Repo.all(Card)
    render(conn, "index.json-api", data: cc_card)
  end

  def create(conn, %{"data" => data = %{"type" => "card", "attributes" => _card_params}}) do
    changeset = Card.changeset(%Card{}, Params.to_attributes(data))

    case Repo.insert(changeset) do
      {:ok, card} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", card_path(conn, :show, card))
        |> render("show.json-api", data: card)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    card = Repo.get!(Card, id)
    render(conn, "show.json-api", data: card)
  end

  def update(conn, %{"id" => id, "data" => data = %{"type" => "card", "attributes" => _card_params}}) do
    card = Repo.get!(Card, id)
    changeset = Card.changeset(card, Params.to_attributes(data))

    case Repo.update(changeset) do
      {:ok, card} ->
        render(conn, "show.json-api", data: card)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:errors, data: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    card = Repo.get!(Card, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(card)

    send_resp(conn, :no_content, "")
  end

end
