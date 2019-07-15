require 'test_helper'

class TimersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timer = timers(:one)
  end

  test "should get index" do
    get timers_url
    assert_response :success
  end

  test "should get new" do
    get new_timer_url
    assert_response :success
  end

  test "should create timer" do
    assert_difference('Timer.count') do
      post timers_url, params: { timer: { employee_id: @timer.employee_id, time_in: @timer.time_in, time_out: @timer.time_out } }
    end

    assert_redirected_to timer_url(Timer.last)
  end

  test "should show timer" do
    get timer_url(@timer)
    assert_response :success
  end

  test "should get edit" do
    get edit_timer_url(@timer)
    assert_response :success
  end

  test "should update timer" do
    patch timer_url(@timer), params: { timer: { employee_id: @timer.employee_id, time_in: @timer.time_in, time_out: @timer.time_out } }
    assert_redirected_to timer_url(@timer)
  end

  test "should destroy timer" do
    assert_difference('Timer.count', -1) do
      delete timer_url(@timer)
    end

    assert_redirected_to timers_url
  end
end
