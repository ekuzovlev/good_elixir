defmodule Mix.Tasks.Hello do
  @moduledoc "The hello mix task: `mix help hello`"
  use Mix.Task

  @shortdoc "Просто вызывает функцию Hello.say/0."
  def run(_) do
    # вызываем функцию Hello.say(), описанную ранее
    Hello.say()
  end
end