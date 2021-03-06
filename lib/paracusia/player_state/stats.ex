defmodule Paracusia.PlayerState.Stats do
  @type t :: %Paracusia.PlayerState.Stats{
          artists: integer,
          albums: integer,
          songs: integer,
          uptime: integer,
          db_playtime: integer,
          db_update: integer,
          playtime: integer
        }
  defstruct artists: nil,
            # number of albums
            albums: nil,
            # number of songs
            songs: nil,
            # daemon uptime in seconds
            uptime: nil,
            # sum of all song times in the db
            db_playtime: nil,
            # last db update in UNIX time
            db_update: nil,
            # time length of music played
            playtime: nil
end

if Code.ensure_compiled?(Jason) do
  defimpl Jason.Encoder, for: [Paracusia.PlayerState.Stats] do
    def encode(struct, opts) do
      struct
      |> Map.delete(:__struct__)
      |> Jason.Encode.map(opts)
    end
  end
end
