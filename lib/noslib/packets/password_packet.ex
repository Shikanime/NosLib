defmodule NosLib.PasswordPacket do
  @moduledoc """
  Second wolrd type packet after UsernamePacket
  used to confirm the context switch between the
  login server and the world
  """

  defstruct user_password_hash: nil

  @type t :: %__MODULE__{
          user_password_hash: String.t()
        }

  @spec parse(binary) :: t
  def parse(payload) do
    %__MODULE__{
      user_password_hash: hash_password(payload)
    }
  end

  def hash_password(binary) do
    :crypto.hash(:sha512, binary) |> Base.encode16()
  end
end
