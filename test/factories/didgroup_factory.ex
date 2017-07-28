defmodule A2billingRestApi.DidgroupFactory do
  defmacro __using__(_opts) do
    quote do
      def didgroup_factory do
        %A2billingRestApi.Didgroup{
          didgroupname: Faker.Superhero.name()
        }
      end
    end
  end
end
