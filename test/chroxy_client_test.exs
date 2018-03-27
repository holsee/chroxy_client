defmodule ChroxyClientTest do
  use ExUnit.Case
  doctest ChroxyClient

  test "greets the world" do
    assert ChroxyClient.hello() == :world
  end
end
