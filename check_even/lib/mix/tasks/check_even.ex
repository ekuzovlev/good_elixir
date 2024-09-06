defmodule Mix.Tasks.CheckEven do
  @moduledoc "The hello mix task: `mix help check_even`"
  use Mix.Task

  @shortdoc "Запускает программу"
  def run(_) do
    CheckEven.check()
  end
end