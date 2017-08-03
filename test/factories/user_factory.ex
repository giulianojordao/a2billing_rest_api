defmodule A2billingRestApi.UserFactory do
  defmacro __using__(_opts) do
    quote do
      def user_factory do
        %A2billingRestApi.ApiUser{
          password: "password",
          email: Faker.Internet.email()
        }
      end
    end
  end
end
