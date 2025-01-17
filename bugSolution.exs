```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.reduce(list, 0, fn x, acc ->
    if x == 3 do
      throw(:three_found)
    else
      acc + x
    end
  end)
rescue
  :three_found -> 0  # Handle the exception appropriately
end
```