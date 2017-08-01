defmodule A2billingRestApi.SipBuddyFactory do
  defmacro __using__(_opts) do
    quote do
      def sip_buddy_factory do
        %A2billingRestApi.SipBuddy{
          username: Faker.Pokemon.name,
          accountcode: "123",
          deny: "asdasd",
          regexten: "2134",
          fromuser: "",
          mailbox: "",
          md5secret: "",
          mask: "",
          secret: "",
          musiconhold: "",
          setvar: "",
          fromdomain: "",
          canreinvite: "YES",
          DEFAULTip: Faker.Internet.ip_v4_address,
          regserver: Faker.Internet.ip_v4_address,
          qualify: "best",
          name: Faker.Superhero.name,
          regseconds: 42,
          fullcontact: Faker.Superhero.name,
          callerid: Faker.Phone.EnUs.phone ,
          language: "ru"
        }
      end
    end
  end
end
