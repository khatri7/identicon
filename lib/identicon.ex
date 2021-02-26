defmodule Identicon do
  @moduledoc """
  
  """
  def main(input) do
    input 
    |> hashInput
    |> pickColor
  end

  def hashInput(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
  
  def pickColor(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}}
  end
end
