require "test_helper"

class MathPowerTest < ActiveSupport::TestCase
  setup do
    @one = math_powers(:one)
  end

  test "power always be zero when exponent is zero" do
    assert_nil @one.power, "if the calculation is not saved"
		@one.save
    assert_equal 1, @one.power, "0^0 == 1(^ is exponential operator)"
  end
end
