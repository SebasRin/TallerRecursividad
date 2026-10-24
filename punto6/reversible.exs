defmodule Reversible do

  def main do

    numero = 409
    IO.puts("¿#{numero} es reversible?: #{reversible(numero)}")

  end

  def reversible(n) when n <= 0 do
    false
  end

  def reversible(n) when rem(n,10) == 0 do
    false
  end


  def reversible(n) do
    invertido = invertir(n, 0)
    impar?(n + invertido)

  end

  def impar?(0) do
    true
  end

  def impar?(n) do
    resto = rem(n,10)
    rem(resto,2) == 1 and impar?(div(n,10))
  end

  def invertir(0,invertido) do
    invertido
  end

  def invertir(n, invertido) do
    resto = rem(n,10)
    invertir(div(n , 10), invertido * 10 + resto)

  end

end
Reversible.main()
