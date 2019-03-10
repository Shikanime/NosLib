defmodule NosLib.CharacterView do
  @moduledoc """
  Response from the character actions on the
  world
  """

  alias NosLib.CharacterSerializer

  @spec render(String.t(), map()) :: String.t()
  def render("move_character", params) do
    """
    at \
    #{params.character_id} \
    #{Recase.to_pascal(params.map_name)} \
    #{params.character_position_x} \
    #{params.character_position_y} \
    2 \
    0 \
    #{params.map_music_id} \
    1 \
    -1\
    """
  end

  def render("sync_character", params) do
    """
    c_info \
    #{Recase.to_snake(params.character_name)} - \
    #{params.group_id} \
    #{params.family_id} \
    #{Recase.to_snake(params.family_name)} \
    #{params.character_id} \
    #{params.authority} \
    #{CharacterSerializer.character_genders(params.character_gender)} \
    #{CharacterSerializer.character_hair_styles(params.character_hair_style)} \
    #{CharacterSerializer.character_hair_colors(params.character_hair_color)} \
    #{CharacterSerializer.character_classes(params.character_class)} \
    #{params.dignity} \
    #{params.compliment} \
    #{params.character_morph} \
    #{if params.character_invisible?, do: 1, else: 0} \
    #{params.family_level} \
    #{if params.character_sp_upgrade?, do: 1, else: 0} \
    #{if params.character_arena_winner?, do: 1, else: 0}\
    """
  end
end
