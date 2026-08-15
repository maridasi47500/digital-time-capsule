require "test_helper"

class MytimecalculationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mytimecalculation = mytimecalculations(:one)
  end

  test "should get index" do
    get mytimecalculations_url
    assert_response :success
  end

  test "should get new" do
    get new_mytimecalculation_url
    assert_response :success
  end

  test "should create mytimecalculation" do
    assert_difference("Mytimecalculation.count") do
      post mytimecalculations_url, params: { mytimecalculation: { mydatetime: @mytimecalculation.mydatetime, resultat: @mytimecalculation.resultat, time_operation_id: @mytimecalculation.time_operation_id, user_id: @mytimecalculation.user_id } }
    end

    assert_redirected_to mytimecalculation_url(Mytimecalculation.last)
  end

  test "should show mytimecalculation" do
    get mytimecalculation_url(@mytimecalculation)
    assert_response :success
  end

  test "should get edit" do
    get edit_mytimecalculation_url(@mytimecalculation)
    assert_response :success
  end

  test "should update mytimecalculation" do
    patch mytimecalculation_url(@mytimecalculation), params: { mytimecalculation: { mydatetime: @mytimecalculation.mydatetime, resultat: @mytimecalculation.resultat, time_operation_id: @mytimecalculation.time_operation_id, user_id: @mytimecalculation.user_id } }
    assert_redirected_to mytimecalculation_url(@mytimecalculation)
  end

  test "should destroy mytimecalculation" do
    assert_difference("Mytimecalculation.count", -1) do
      delete mytimecalculation_url(@mytimecalculation)
    end

    assert_redirected_to mytimecalculations_url
  end
end
