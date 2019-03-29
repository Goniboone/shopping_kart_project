require 'test_helper'

class ShoppingKartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopping_kart = shopping_karts(:one)
  end

  test "should get index" do
    get shopping_karts_url
    assert_response :success
  end

  test "should get new" do
    get new_shopping_kart_url
    assert_response :success
  end

  test "should create shopping_kart" do
    assert_difference('ShoppingKart.count') do
      post shopping_karts_url, params: { shopping_kart: { name: @shopping_kart.name } }
    end

    assert_redirected_to shopping_kart_url(ShoppingKart.last)
  end

  test "should show shopping_kart" do
    get shopping_kart_url(@shopping_kart)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopping_kart_url(@shopping_kart)
    assert_response :success
  end

  test "should update shopping_kart" do
    patch shopping_kart_url(@shopping_kart), params: { shopping_kart: { name: @shopping_kart.name } }
    assert_redirected_to shopping_kart_url(@shopping_kart)
  end

  test "should destroy shopping_kart" do
    assert_difference('ShoppingKart.count', -1) do
      delete shopping_kart_url(@shopping_kart)
    end

    assert_redirected_to shopping_karts_url
  end
end
