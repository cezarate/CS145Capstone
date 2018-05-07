require 'test_helper'

class WeatherControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get weather_home_url
    assert_response :success
  end

  test "should get index" do
    get weather_index_url
    assert_response :success
  end

end
