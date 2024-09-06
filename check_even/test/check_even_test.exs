defmodule CheckEvenTest do
  use ExUnit.Case
  import ExUnit.CaptureIO


  # Тестирование функции `check/0` для правильного вывода
  test "check/0 prints the correct message for even number" do
    input = "4\n"
    expected_output = "Введите число:\n4 - четное число\n"

    assert capture_io(input, fn -> CheckEven.check() end) == expected_output
  end

  test "check/0 prints the correct message for odd number" do
    input = "5\n"
    expected_output = "Введите число:\n5 - нечетное число\n"

    assert capture_io(input, fn -> CheckEven.check() end) == expected_output
  end

  test "check/0 prints an error message for invalid input" do
    input = "abc\n4\n"
    output = capture_io(input, fn -> CheckEven.check() end) 
    expected_substring = "Ошибка ввода: введите корректное целое число"

    assert String.contains?(output, expected_substring)
  end
end
