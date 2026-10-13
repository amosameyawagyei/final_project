require "test_helper"

class FoodScansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_scan = food_scans(:one)
  end

  test "should get index" do
    get food_scans_url
    assert_response :success
  end

  test "should get new" do
    get new_food_scan_url
    assert_response :success
  end

  test "should create food_scan" do
    assert_difference("FoodScan.count") do
      post food_scans_url, params: { food_scan: { food_item_id: @food_scan.food_item_id, notes: @food_scan.notes, title: @food_scan.title } }
    end

    assert_redirected_to food_scan_url(FoodScan.last)
  end

  test "should show food_scan" do
    get food_scan_url(@food_scan)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_scan_url(@food_scan)
    assert_response :success
  end

  test "should update food_scan" do
    patch food_scan_url(@food_scan), params: { food_scan: { food_item_id: @food_scan.food_item_id, notes: @food_scan.notes, title: @food_scan.title } }
    assert_redirected_to food_scan_url(@food_scan)
  end

  test "should destroy food_scan" do
    assert_difference("FoodScan.count", -1) do
      delete food_scan_url(@food_scan)
    end

    assert_redirected_to food_scans_url
  end
end
