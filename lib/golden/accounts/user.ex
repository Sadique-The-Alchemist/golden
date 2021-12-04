defmodule Golden.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :hash_password, :string
    field :password, :string, virtual: true

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :password])
    |> validate_required([:email, :password])
    |> hash_password()
  end

  defp hash_password(changeset) do
    hash_password = Bcrypt.hash_pwd_salt(changeset.changes[:password])

    changeset
    |> put_change(:hash_password, hash_password)
  end
end
