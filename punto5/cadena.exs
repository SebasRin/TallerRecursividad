defmodule Cadena do

  def main do

    lista = ["Juan", "Pedro", "Luis", "Manzana", "Casa"]

    cadena = cadena_larga(lista)
    IO.puts("La cadena mas larga es: #{cadena}")
  end

  def cadena_larga([cabeza | cola]) do
    cadena_larga(cola, cabeza)
  end

  def cadena_larga([],aux) do
    aux
  end

  def cadena_larga([cabeza | cola], aux) do
    a = String.length(cabeza)
    b = String.length(aux)

    if b >= a do
      cadena_larga(cola, aux)
    else
      cadena_larga(cola, cabeza)
    end

  end

end
Cadena.main()
