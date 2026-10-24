defmodule NumPerfecto do

  def main do
    n = 6
    resultado = num_perfecto(n)
    IO.puts("¿#{n} es perfecto?: #{inspect(resultado)}")
  end

  def num_perfecto(n) when n > 0 do
    num_perfecto?(n,n - 1,0)
  end

  def num_perfecto(_n) do
    false
  end

  def num_perfecto?(n,0, acc) do
    n == acc
  end


  def num_perfecto?(n,aux,acc) do
    if rem(n, aux) == 0 do
      num_perfecto?(n, aux - 1, acc + aux)
    else
      num_perfecto?(n, aux - 1, acc)
    end
  end
end
NumPerfecto.main()
