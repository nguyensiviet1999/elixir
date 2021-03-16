defmodule Doc19 do
  def throw_test do
    try do
      Enum.each -50..50, fn(x) ->
        if rem(x,13) == 0, do: throw(x)
      end
      "Nothing"
    catch
      x -> "Got #{x}"
    end
    Enum.find -50..50, &(rem(&1,13) == 0)
  end
  def exit_test do
    try do
      exit "I am exiting"
    catch
      :exit, a -> a
    end
  end
  def after_test do
    try do
      "I am exiting"
    after
      IO.puts("nannodeshouka")
    end
  end
  def try_else_test do
    x = 2
    try do
      1/x
    rescue
      ArithmeticError -> :infinity
    else
      y when y < 1 and y > -1 ->
        :small
      _ ->
        :large
    end
  end
end
