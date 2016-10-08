defmodule Paracusia.DefaultEventHandler do
  alias Paracusia.PlayerState
  use GenEvent
  require Logger

  # TODO the %PlayerState{} does not contain anything about subscriptions, stickers or messages.

  def handle_event({:database_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "database changed."
    {:ok, state}
  end

  def handle_event({:update_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "database updated."
    {:ok, state}
  end

  def handle_event({:stored_playlist_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "stored playlists changed."
    {:ok, state}
  end

  def handle_event({:playlist_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "playlist changed."
    {:ok, state}
  end

  def handle_event({:player_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "player changed."
    {:ok, state}
  end

  def handle_event({:mixer_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "mixer changed."
    {:ok, state}
  end

  def handle_event({:outputs_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "outputs changed."
    {:ok, state}
  end

  def handle_event({:options_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "options changed."
    {:ok, state}
  end

  def handle_event({:sticker_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "sticker changed."
    {:ok, state}
  end

  def handle_event({:subscription_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "subscription changed."
    {:ok, state}
  end

  def handle_event({:message_changed, %PlayerState{}}, state = nil) do
    _ = Logger.info "message arrived."
    {:ok, state}
  end
end
