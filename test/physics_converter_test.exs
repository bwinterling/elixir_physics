defmodule PhysicsConverterTest do
  use ExUnit.Case

  test "Converter works" do
    assert(Physics.Converter.to_light_seconds({:miles, 1000}, precision: 5) == 0.00537)
  end

  test "Converter works with default value" do
    assert(Physics.Converter.to_light_seconds({:miles, 1000}) == 0.00537)
  end

  test "Converts seconds to hours" do
    assert(Physics.Converter.seconds_to_hours(1200) == 0.3)
  end
end
