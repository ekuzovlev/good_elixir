defmodule CheckEven do
  @moduledoc """
  Модуль для проверки, является ли введенное пользователем число четным.
  """

  @doc """
  Спрашивает у пользователя число, проверяет, является ли оно четным, и выводит результат.
  """
  require Integer

  def check do
    # Запрашиваем число у пользователя
    IO.puts("Введите число:")

    # Считываем ввод пользователя и убираем символ новой строки
    input = IO.gets("") |> String.trim() |> Integer.parse()

    case input do
      {number, _} -> 
        IO.puts("#{number} - #{parity(number)} число")
      :error ->
        IO.puts("Ошибка ввода: введите корректное целое число")
        check() # Рекурсивный вызов для повторного запроса
    end
  end

  # Определяет четность числа и возвращает соответствующую строку
  defp parity(number) do
    if Integer.is_even(number), do: "четное", else: "нечетное"
  end
end
