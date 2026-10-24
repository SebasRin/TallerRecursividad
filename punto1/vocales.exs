defmodule Vocales do

  def main do

    cadena = "Hola mundo"
    num = canti_vocales(cadena)
    IO.puts("Cantidad vocales Con graphemes: #{num}")

    num2 = canti_vocales_sin(cadena)
    IO.puts("Cantidad vocales Sin graphemes: #{num2}")
  end

  def canti_vocales(cadena) do
    String.downcase(cadena)
    |>String.graphemes()
    |>canti_vocales(0)
  end

  def canti_vocales([],acc) do
    acc
  end

  def canti_vocales([cabeza | cola], acc) do
    if cabeza in ["a","e","i","o","u"] do
      canti_vocales(cola, acc + 1)
    else
      canti_vocales(cola, acc)
    end
  end

  def canti_vocales_sin(cadena) do
    cadena
    |> String.split("",trim: true)
    |> Enum.count(fn letra -> es_vocal?(letra) end)
  end

  def es_vocal?(letra) do
    String.downcase(letra) in ["a","e","i","o","u"]
  end

end
Vocales.main()
