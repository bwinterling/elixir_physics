defmodule PhysicsRocketryTest do
  use ExUnit.Case

  test "escape velocity for earth" do
    assert(Physics.Rocketry.escape_velocity(:earth) == 11.2)
  end
  
  test "escape velocity for the moon" do
    assert(Physics.Rocketry.escape_velocity(:moon) == 2.4)
  end

  test "escape velocity for mars" do
    assert(Physics.Rocketry.escape_velocity(:mars) == 5.0)
  end

  test 'escape velocity for random planet' do
    assert(Physics.Rocketry.escape_velocity(%{mass: 3.453e24, radius: 8.234e6}) == 7.5)
  end

  test 'orbital_acceleration for earth at 100km' do
    assert(Physics.Rocketry.orbital_acceleration(100) == 9.512678810620692)
  end

  test 'orbital term for 100km above earth' do
    # shooting for value between 3 and 5 hours
    term = Physics.Rocketry.orbital_term(5000)
    assert(term > 3)
    assert(term < 5)
  end
end
