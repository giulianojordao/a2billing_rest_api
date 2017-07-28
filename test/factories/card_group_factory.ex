defmodule A2billingRestApi.CardGroupFactory do
  defmacro __using__(_opts) do
    quote do
      def card_group_factory do
        %A2billingRestApi.CardGroup{
          name: Faker.Pokemon.name(),
          description: Faker.Lorem.Shakespeare.hamlet(),
          users_perms: 0
        }
      end
    end
  end
end
