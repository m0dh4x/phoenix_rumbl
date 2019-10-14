defmodule Rumbl.Accounts do
  @moduledoc """
  The accounts context.
  """
  alias Rumbl.Repo
  alias Rumbl.Accounts.User

  def get_user(id) do
    Repo.get(User, id)
  end

  def get_user!(id) do
    Repo.get!(User, id)
  end

  def get_user_by(params) do
    Repo.get_by(User, params)
  end

  def list_users() do
    Repo.all(User)
  end

  # def list_users() do
  #   [
  #     %User{id: "1", name: "José", username: "josevalim"},
  #     %User{id: "2", name: "Bruce", username: "redrapids"},
  #     %User{id: "3", name: "Chris", username: "chrismccord"}
  #   ]
  # end

  # def get_user(id) do
  #   Enum.find(list_users(), fn user -> user.id == id end)
  # end

  # def get_user_by_params(params) do
  #   Enum.find(list_users(), fn user ->
  #     Enum.all?(params, fn {key, val} -> Map.get(user, key) == val end)
  #   end)
  # end
end
