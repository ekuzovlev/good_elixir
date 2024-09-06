defmodule HelloTest do
  use ExUnit.Case

  import ExUnit.CaptureIO
  import Hello

  test "greets the world" do
    assert capture_io(fn -> say() end) == "Hello, World!\n"
  end
end
