defmodule A2billingRestApi.UserFactory do
  defmacro __using__(_opts) do
    quote do
      def user_factory do
        %A2billingRestApi.User{
          username: Faker.Superhero.name(),
          password: "password",
          email: Faker.Internet.email(),
          active: 1,
          admin: 1
        }
      end
    end
  end
end
