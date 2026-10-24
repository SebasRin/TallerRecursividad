defmodule NumeroMayor do
  def main do
    lista = [4, 15, 2, 8, 23]
    mayor = obtener_mayor(lista)
    IO.puts("Numero mayor: #{mayor}")
  end

  def obtener_mayor([x]), do: x

  def obtener_mayor(lista) do
    mitad = div(length(lista) + 1, 2)
    {izq, der} = Enum.split(lista, mitad)

    mayor_izq = obtener_mayor(izq)
    mayor_der = obtener_mayor(der)

    if mayor_izq > mayor_der do
      mayor_izq
    else
      mayor_der
    end
  end
end
NumeroMayor.main()
