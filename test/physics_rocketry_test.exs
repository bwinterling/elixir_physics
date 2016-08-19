defmodule PhysicsRocketryTest do
  use ExUnit.Case

  test "escape velocity for earth" do
    assert(Physics.Rocketry.escape_velocity(:earth) == 11.2)
  end
  
  test "escape velocity for the moon" do
    assert(Physics.Rocketry.escape_velocity(:moon) == 2.38)
  end

  test "escape velocity for mars" do
    assert(Physics.Rocketry.escape_velocity(:mars) == 5.1)
  end

  test 'escape velocity for random planet' do
    assert(Physics.Rocketry.escape_velocity(%{mass: 3.453e24, radius: 8.234e6}) == 7.5)
  end
end
