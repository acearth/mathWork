require "test_helper"

class MathPowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @math_power = math_powers(:one)
  end

  test "should get index" do
    get math_powers_url, as: :json
    assert_response :success
  end

  test "should create math_power" do
    assert_difference('MathPower.count') do
      post math_powers_url, params: {  base: @math_power.base, exp: @math_power.exp } , as: :json
    end

    assert_response 201
  end

  test "should show math_power" do
    get math_power_url(@math_power), as: :json
    assert_response :success
  end

  test "should update math_power" do
    patch math_power_url(@math_power), params: { math_power: { base: @math_power.base, exp: @math_power.exp } }, as: :json
    assert_response 200
  end

  test "should destroy math_power" do
    assert_difference('MathPower.count', -1) do
      delete math_power_url(@math_power), as: :json
    end

    assert_response 204
  end
end
