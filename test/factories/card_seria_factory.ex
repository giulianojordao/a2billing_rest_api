defmodule A2billingRestApi.CardSeriaFactory do
  defmacro __using__(_opts) do
    quote do
      def card_seria_factory do
        %A2billingRestApi.CardSeria{
          name: Faker.Pokemon.name(),
          value: 123
        }
      end
    end
  end
end
