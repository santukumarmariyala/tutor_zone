require 'test_helper'

class AcademicTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @academic_type = academic_types(:one)
  end

  test "should get index" do
    get academic_types_url
    assert_response :success
  end

  test "should get new" do
    get new_academic_type_url
    assert_response :success
  end

  test "should create academic_type" do
    assert_difference('AcademicType.count') do
      post academic_types_url, params: { academic_type: { description: @academic_type.description, name: @academic_type.name } }
    end

    assert_redirected_to academic_type_url(AcademicType.last)
  end

  test "should show academic_type" do
    get academic_type_url(@academic_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_academic_type_url(@academic_type)
    assert_response :success
  end

  test "should update academic_type" do
    patch academic_type_url(@academic_type), params: { academic_type: { description: @academic_type.description, name: @academic_type.name } }
    assert_redirected_to academic_type_url(@academic_type)
  end

  test "should destroy academic_type" do
    assert_difference('AcademicType.count', -1) do
      delete academic_type_url(@academic_type)
    end

    assert_redirected_to academic_types_url
  end
end
