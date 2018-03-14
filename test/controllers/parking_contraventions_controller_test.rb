require 'test_helper'

class ParkingContraventionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_contravention = parking_contraventions(:one)
  end

  test "should get index" do
    get parking_contraventions_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_contravention_url
    assert_response :success
  end

  test "should create parking_contravention" do
    assert_difference('ParkingContravention.count') do
      post parking_contraventions_url, params: { parking_contravention: { issue_date: @parking_contravention.issue_date, street: @parking_contravention.street, ticket_number: @parking_contravention.ticket_number } }
    end

    assert_redirected_to parking_contravention_url(ParkingContravention.last)
  end

  test "should show parking_contravention" do
    get parking_contravention_url(@parking_contravention)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_contravention_url(@parking_contravention)
    assert_response :success
  end

  test "should update parking_contravention" do
    patch parking_contravention_url(@parking_contravention), params: { parking_contravention: { issue_date: @parking_contravention.issue_date, street: @parking_contravention.street, ticket_number: @parking_contravention.ticket_number } }
    assert_redirected_to parking_contravention_url(@parking_contravention)
  end

  test "should destroy parking_contravention" do
    assert_difference('ParkingContravention.count', -1) do
      delete parking_contravention_url(@parking_contravention)
    end

    assert_redirected_to parking_contraventions_url
  end
end
