require "test_helper"

class MycalculationhasargumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mycalculationhasargument = mycalculationhasarguments(:one)
  end

  test "should get index" do
    get mycalculationhasarguments_url
    assert_response :success
  end

  test "should get new" do
    get new_mycalculationhasargument_url
    assert_response :success
  end

  test "should create mycalculationhasargument" do
    assert_difference("Mycalculationhasargument.count") do
      post mycalculationhasarguments_url, params: { mycalculationhasargument: { argument_id: @mycalculationhasargument.argument_id, mytimecalculation_id: @mycalculationhasargument.mytimecalculation_id } }
    end

    assert_redirected_to mycalculationhasargument_url(Mycalculationhasargument.last)
  end

  test "should show mycalculationhasargument" do
    get mycalculationhasargument_url(@mycalculationhasargument)
    assert_response :success
  end

  test "should get edit" do
    get edit_mycalculationhasargument_url(@mycalculationhasargument)
    assert_response :success
  end

  test "should update mycalculationhasargument" do
    patch mycalculationhasargument_url(@mycalculationhasargument), params: { mycalculationhasargument: { argument_id: @mycalculationhasargument.argument_id, mytimecalculation_id: @mycalculationhasargument.mytimecalculation_id } }
    assert_redirected_to mycalculationhasargument_url(@mycalculationhasargument)
  end

  test "should destroy mycalculationhasargument" do
    assert_difference("Mycalculationhasargument.count", -1) do
      delete mycalculationhasargument_url(@mycalculationhasargument)
    end

    assert_redirected_to mycalculationhasarguments_url
  end
end
