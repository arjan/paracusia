defmodule Paracusia.DefaultEventHandler do
  use GenEvent
  require Logger

  def handle_event({:playlist_changed, _}, state = nil) do
    Logger.info "playlist changed."
    {:ok, state}
  end

  def handle_event({:player_changed, _}, state = nil) do
    Logger.info "player changed."
    {:ok, state}
  end

  def handle_event({:mixer_changed, _}, state = nil) do
    Logger.info "mixer changed."
    {:ok, state}
  end

  def handle_event({:options_changed, _}, state = nil) do
    Logger.info "options changed."
    {:ok, state}
  end

  def handle_event({:update_changed, _}, state = nil) do
    Logger.info "database updated."
    {:ok, state}
  end

  def handle_event({:database_changed, _}, state = nil) do
    Logger.info "database changed."
    {:ok, state}
  end

  def handle_event({:outputs_changed, _}, state = nil) do
    Logger.info "outputs changed."
    {:ok, state}
  end
end