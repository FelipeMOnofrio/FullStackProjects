require 'test_helper'

class ServiceAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_area = service_areas(:one)
  end

  test "should get index" do
    get service_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_service_area_url
    assert_response :success
  end

  test "should create service_area" do
    assert_difference('ServiceArea.count') do
      post service_areas_url, params: { service_area: { service_area: @service_area.service_area } }
    end

    assert_redirected_to service_area_url(ServiceArea.last)
  end

  test "should show service_area" do
    get service_area_url(@service_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_area_url(@service_area)
    assert_response :success
  end

  test "should update service_area" do
    patch service_area_url(@service_area), params: { service_area: { service_area: @service_area.service_area } }
    assert_redirected_to service_area_url(@service_area)
  end

  test "should destroy service_area" do
    assert_difference('ServiceArea.count', -1) do
      delete service_area_url(@service_area)
    end

    assert_redirected_to service_areas_url
  end
end
