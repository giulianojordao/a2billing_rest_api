defmodule A2billingRestApi.CardFactory do
  defmacro __using__(_opts) do
    quote do
      def card_factory do
        %A2billingRestApi.Card{
          username: Faker.Pokemon.name,
          useralias: Faker.Superhero.name,
          uipass: "password",
          lastname: Faker.Name.last_name,
          firstname: Faker.Name.first_name,
          address: Faker.Address.street_address(true),
          city: Faker.Address.city,
          state: Faker.Address.state,
          country: "RUS",
          zipcode: Faker.Address.zip_code,
          phone: "123456789",
          email: Faker.Internet.email,
          fax: "",
          redial: "",
          loginkey: "",
          tag: "",
          email_notification: "",
          company_name: Faker.Company.name,
          company_website: Faker.Internet.url,
          traffic_target: ""
        }
      end
    end
  end
end
