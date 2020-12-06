require 'test_helper'

class EquipTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equip_type = equip_types(:one)
  end

  test "should get index" do
    get equip_types_url
    assert_response :success
  end

  test "should get new" do
    get new_equip_type_url
    assert_response :success
  end

  test "should create equip_type" do
    assert_difference('EquipType.count') do
      post equip_types_url, params: { equip_type: { description: @equip_type.description } }
    end

    assert_redirected_to equip_type_url(EquipType.last)
  end

  test "should show equip_type" do
    get equip_type_url(@equip_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_equip_type_url(@equip_type)
    assert_response :success
  end

  test "should update equip_type" do
    patch equip_type_url(@equip_type), params: { equip_type: { description: @equip_type.description } }
    assert_redirected_to equip_type_url(@equip_type)
  end

  test "should destroy equip_type" do
    assert_difference('EquipType.count', -1) do
      delete equip_type_url(@equip_type)
    end

    assert_redirected_to equip_types_url
  end
end
