users = [%{name: "john", age: 27}, %{name: "meg", age: 23}]
all = fn :get, users_collection, next ->
  #IO.puts "all"
  Enum.map(users_collection, next)
  #IO.puts "end all"
end
upcase = fn :get, user, next ->
  #break! Kernel.get_in/2
  #IO.puts "upcase"
  update_in(user.name, &String.upcase/1)
  |> next.()
end

get_in(users, [all, upcase, :name])

"""
      iex> users = [%{name: "john", age: 27}, %{name: "meg", age: 23}]
      iex> all = fn :get, data, next -> Enum.map(data, next) end
      iex> get_in(users, [all, :age])
      [27, 23]

  @spec get_in(Access.t(), nonempty_list(term)) :: term
  def get_in(data, keys)

  def get_in(data, [h]) when is_function(h), do: h.(:get, data, & &1)
  def get_in(data, [h | t]) when is_function(h), do: h.(:get, data, &get_in(&1, t))
  # fn x -> get_in(x, [all, :name]) end

  &get_in(&1, t) == fn &1, arr ->
    get_in(&1, [upcase, :name]
  end
  def get_in(nil, [_]), do: nil
  def get_in(nil, [_ | t]), do: get_in(nil, t)

  # fn x -> get_in(x, [:name]) end
  def get_in(data, [h]), do: Access.get(data, h)
  def get_in(data, [h | t]), do: get_in(Access.get(data, h), t)
"""

