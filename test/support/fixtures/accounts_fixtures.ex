defmodule Golden.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Golden.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email",
        hash_password: "some hash_password"
      })
      |> Golden.Accounts.create_user()

    user
  end
end
