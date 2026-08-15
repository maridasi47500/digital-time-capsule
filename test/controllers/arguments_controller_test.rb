require "test_helper"

class ArgumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @argument = arguments(:one)
  end

  test "should get index" do
    get arguments_url
    assert_response :success
  end

  test "should get new" do
    get new_argument_url
    assert_response :success
  end

  test "should create argument" do
    assert_difference("Argument.count") do
      post arguments_url, params: { argument: { name: @argument.name, range_or_list: @argument.range_or_list, type: @argument.type } }
    end

    assert_redirected_to argument_url(Argument.last)
  end

  test "should show argument" do
    get argument_url(@argument)
    assert_response :success
  end

  test "should get edit" do
    get edit_argument_url(@argument)
    assert_response :success
  end

  test "should update argument" do
    patch argument_url(@argument), params: { argument: { name: @argument.name, range_or_list: @argument.range_or_list, type: @argument.type } }
    assert_redirected_to argument_url(@argument)
  end

  test "should destroy argument" do
    assert_difference("Argument.count", -1) do
      delete argument_url(@argument)
    end

    assert_redirected_to arguments_url
  end
end
