defmodule Doc17 do
  def comprehensions_test do
    for n <- [1,2,3,4], do: n*n
    for n when rem(n,2) == 0 <- [1,2,3,4], do: n*n
    values = [good: 1, good: 2, bad: 3, good: 4]
    for {:good, n} <- values, do: n*n
    multiple_of_3? = fn(n) -> rem(n,3) == 0 end
    for n <- 0..5, multiple_of_3?.(n), do: n * n
    for {key, val} <- %{"a" => 1, "b" => 2}, into: %{}, do: {key, val * val}
    for i <- [:a, :b, :c], j <- [1,2], do: {i,j}
    for <<c <- " hello world ">>, c != ?\s, into: "", do: <<c>>
  end
end
