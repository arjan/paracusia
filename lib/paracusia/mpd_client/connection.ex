defmodule Paracusia.MpdClient.Connection do
  @moduledoc """
  Functions related to MPD's connection settings.

  See also: https://musicpd.org/doc/protocol/connection_commands.html.

  Note that 'password' and 'close' is not implemented, since these commands are meant to be used
  shortly after/before connection establishment/teardown, and Paracusia does not require the user to
  do that himself.
  """

  @doc """
  Kills MPD.
  """
  @spec kill() :: :ok
  def kill() do
    GenServer.call(Paracusia.MpdClient, :kill)
  end

  @doc """
  Sends 'ping' to MPD and waits for acknowledgement.
  """
  @spec ping() :: :ok
  def ping() do
    Paracusia.MpdClient.send_and_ack("ping\n")
  end
end
