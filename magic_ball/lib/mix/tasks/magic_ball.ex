defmodule Mix.Tasks.MagicBall do
  @moduledoc "The magic_ball mix task: `mix help magic_ball`"
  use Mix.Task

  @shortdoc "Отвечает на поставленный вопрос"
  def run(_) do
    MagicBall.say()
  end
end