require "test_helper"

class TimeOperationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_operation = time_operations(:one)
  end

  test "should get index" do
    get time_operations_url
    assert_response :success
  end

  test "should get new" do
    get new_time_operation_url
    assert_response :success
  end

  test "should create time_operation" do
    assert_difference("TimeOperation.count") do
      post time_operations_url, params: { time_operation: { name: @time_operation.name } }
    end

    assert_redirected_to time_operation_url(TimeOperation.last)
  end

  test "should show time_operation" do
    get time_operation_url(@time_operation)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_operation_url(@time_operation)
    assert_response :success
  end

  test "should update time_operation" do
    patch time_operation_url(@time_operation), params: { time_operation: { name: @time_operation.name } }
    assert_redirected_to time_operation_url(@time_operation)
  end

  test "should destroy time_operation" do
    assert_difference("TimeOperation.count", -1) do
      delete time_operation_url(@time_operation)
    end

    assert_redirected_to time_operations_url
  end
end
