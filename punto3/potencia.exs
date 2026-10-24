defmodule Potencia do

  def main do
    n = 16
    b = 2
    resultado = es_potencia(b, n)
    IO.puts("¿#{n} es potencia de #{b}?: #{resultado}")
  end

  def es_potencia(b,_n) when b == 0 do
    false
  end

  def es_potencia(_b,n) when n < 0 do
    false
  end

  def es_potencia(_b, 1) do
    true
  end

  def es_potencia(_b, 0) do
    false
  end

  def es_potencia(b,n) do
    if rem(n,b) == 0 do
      es_potencia(b, div(n,b))
    else
      false
    end


  end

end
Potencia.main()
