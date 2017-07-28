Faker.start
{:ok, _} = Application.ensure_all_started(:ex_machina)

Bureaucrat.start(
 writer: Bureaucrat.MarkdownWriter,
 default_path: "API.md",
 paths: [],
 titles: [],
 env_var: "DOC"
)

ExUnit.start(formatters: [ExUnit.CLIFormatter, Bureaucrat.Formatter])

Ecto.Adapters.SQL.Sandbox.mode(A2billingRestApi.Repo, :manual)
