defmodule Paracusia do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Paracusia.MpdClient, [[retry_after: 100, max_attempts: 3]])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Paracusia.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
