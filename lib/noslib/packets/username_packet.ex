defmodule NosLib.UsernamePacket do
  @moduledoc """
  First world type packet to identify the user's
  name
  """

  defstruct user_name: nil

  @type t :: %__MODULE__{
          user_name: String.t(),
        }

  @spec parse(binary) :: t
  def parse(payload) do
    %__MODULE__{
      user_name: payload
    }
  end
end
