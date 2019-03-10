defmodule NosLib.CharacterSelectView do
  @moduledoc """
  Responses from the world server to select
  a character
  """

  @spec render(String.t, map()) :: [String.t]
  def render("list_characters", params) do
    [
      "clist_start 0",
      render_characters(params.characters),
      "clist_end"
    ]
  end

  defp render_characters(characters) do
    characters
    |> Enum.map(&(render_character(&1)))
    |> Enum.join(" ")
  end

  defp render_character(character) do
    """
    clist #{character.slot} \
    #{Recase.to_snake(character.name)} \
    0 \
    #{character.gender} \
    #{character.hair_style} \
    #{character.hair_color} \
    0 \
    #{character.class} \
    #{character.level} \
    #{character.character_level} \
    #{character.equipments} \
    #{character.job_level} \
    1 \
    1 \
    #{character.pets} \
    0\
    """
  end
end
