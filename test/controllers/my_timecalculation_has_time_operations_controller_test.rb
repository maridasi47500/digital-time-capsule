require "test_helper"

class MyTimecalculationHasTimeOperationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_timecalculation_has_time_operation = my_timecalculation_has_time_operations(:one)
  end

  test "should get index" do
    get my_timecalculation_has_time_operations_url
    assert_response :success
  end

  test "should get new" do
    get new_my_timecalculation_has_time_operation_url
    assert_response :success
  end

  test "should create my_timecalculation_has_time_operation" do
    assert_difference("MyTimecalculationHasTimeOperation.count") do
      post my_timecalculation_has_time_operations_url, params: { my_timecalculation_has_time_operation: { mytimecalculation_id: @my_timecalculation_has_time_operation.mytimecalculation_id, time_operation_id: @my_timecalculation_has_time_operation.time_operation_id } }
    end

    assert_redirected_to my_timecalculation_has_time_operation_url(MyTimecalculationHasTimeOperation.last)
  end

  test "should show my_timecalculation_has_time_operation" do
    get my_timecalculation_has_time_operation_url(@my_timecalculation_has_time_operation)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_timecalculation_has_time_operation_url(@my_timecalculation_has_time_operation)
    assert_response :success
  end

  test "should update my_timecalculation_has_time_operation" do
    patch my_timecalculation_has_time_operation_url(@my_timecalculation_has_time_operation), params: { my_timecalculation_has_time_operation: { mytimecalculation_id: @my_timecalculation_has_time_operation.mytimecalculation_id, time_operation_id: @my_timecalculation_has_time_operation.time_operation_id } }
    assert_redirected_to my_timecalculation_has_time_operation_url(@my_timecalculation_has_time_operation)
  end

  test "should destroy my_timecalculation_has_time_operation" do
    assert_difference("MyTimecalculationHasTimeOperation.count", -1) do
      delete my_timecalculation_has_time_operation_url(@my_timecalculation_has_time_operation)
    end

    assert_redirected_to my_timecalculation_has_time_operations_url
  end
end
