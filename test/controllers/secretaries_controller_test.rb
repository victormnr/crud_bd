require 'test_helper'

class SecretariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @secretary = secretaries(:one)
  end

  test "should get index" do
    get secretaries_url
    assert_response :success
  end

  test "should get new" do
    get new_secretary_url
    assert_response :success
  end

  test "should create secretary" do
    assert_difference('Secretary.count') do
      post secretaries_url, params: { secretary: { coordinator: @secretary.coordinator, state: @secretary.state } }
    end

    assert_redirected_to secretary_url(Secretary.last)
  end

  test "should show secretary" do
    get secretary_url(@secretary)
    assert_response :success
  end

  test "should get edit" do
    get edit_secretary_url(@secretary)
    assert_response :success
  end

  test "should update secretary" do
    patch secretary_url(@secretary), params: { secretary: { coordinator: @secretary.coordinator, state: @secretary.state } }
    assert_redirected_to secretary_url(@secretary)
  end

  test "should destroy secretary" do
    assert_difference('Secretary.count', -1) do
      delete secretary_url(@secretary)
    end

    assert_redirected_to secretaries_url
  end
end
