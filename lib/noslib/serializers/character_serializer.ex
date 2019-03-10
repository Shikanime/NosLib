defmodule NosLib.CharacterSerializer do
  @moduledoc false

  def character_class(:adventurer), do: 0
  def character_class(:sorcerer), do: 1
  def character_class(:archer), do: 2
  def character_class(:swordsman), do: 3
  def character_class(:martial_artist), do: 4

  def character_hair_styles(:a), do: 0
  def character_hair_styles(:b), do: 1

  def character_hair_colors(:cerise), do: 1
  def character_hair_colors(:red), do: 9
  def character_hair_colors(:nutmeg), do: 7
  def character_hair_colors(:saddle), do: 8
  def character_hair_colors(:raven), do: 5
  def character_hair_colors(:dixie), do: 4
  def character_hair_colors(:killarney), do: 6
  def character_hair_colors(:san_marino), do: 2
  def character_hair_colors(:affair), do: 3
  def character_hair_colors(:mauve_taupe), do: 0

  def character_gender(:male), do: 0
  def character_gender(:female), do: 1
end
