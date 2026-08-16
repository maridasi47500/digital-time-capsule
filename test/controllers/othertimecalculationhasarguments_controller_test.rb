require "test_helper"

class OthertimecalculationhasargumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @othertimecalculationhasargument = othertimecalculationhasarguments(:one)
  end

  test "should get index" do
    get othertimecalculationhasarguments_url
    assert_response :success
  end

  test "should get new" do
    get new_othertimecalculationhasargument_url
    assert_response :success
  end

  test "should create othertimecalculationhasargument" do
    assert_difference("Othertimecalculationhasargument.count") do
      post othertimecalculationhasarguments_url, params: { othertimecalculationhasargument: { argument_id: @othertimecalculationhasargument.argument_id, mytimecalculationhasothertimecalculation_id: @othertimecalculationhasargument.mytimecalculationhasothertimecalculation_id, value: @othertimecalculationhasargument.value } }
    end

    assert_redirected_to othertimecalculationhasargument_url(Othertimecalculationhasargument.last)
  end

  test "should show othertimecalculationhasargument" do
    get othertimecalculationhasargument_url(@othertimecalculationhasargument)
    assert_response :success
  end

  test "should get edit" do
    get edit_othertimecalculationhasargument_url(@othertimecalculationhasargument)
    assert_response :success
  end

  test "should update othertimecalculationhasargument" do
    patch othertimecalculationhasargument_url(@othertimecalculationhasargument), params: { othertimecalculationhasargument: { argument_id: @othertimecalculationhasargument.argument_id, mytimecalculationhasothertimecalculation_id: @othertimecalculationhasargument.mytimecalculationhasothertimecalculation_id, value: @othertimecalculationhasargument.value } }
    assert_redirected_to othertimecalculationhasargument_url(@othertimecalculationhasargument)
  end

  test "should destroy othertimecalculationhasargument" do
    assert_difference("Othertimecalculationhasargument.count", -1) do
      delete othertimecalculationhasargument_url(@othertimecalculationhasargument)
    end

    assert_redirected_to othertimecalculationhasarguments_url
  end
end
