require "test_helper"

class ProductVarientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_varient = product_varients(:one)
  end

  test "should get index" do
    get product_varients_url
    assert_response :success
  end

  test "should get new" do
    get new_product_varient_url
    assert_response :success
  end

  test "should create product_varient" do
    assert_difference('ProductVarient.count') do
      post product_varients_url, params: { product_varient: { color: @product_varient.color, product_id: @product_varient.product_id, size: @product_varient.size } }
    end

    assert_redirected_to product_varient_url(ProductVarient.last)
  end

  test "should show product_varient" do
    get product_varient_url(@product_varient)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_varient_url(@product_varient)
    assert_response :success
  end

  test "should update product_varient" do
    patch product_varient_url(@product_varient), params: { product_varient: { color: @product_varient.color, product_id: @product_varient.product_id, size: @product_varient.size } }
    assert_redirected_to product_varient_url(@product_varient)
  end

  test "should destroy product_varient" do
    assert_difference('ProductVarient.count', -1) do
      delete product_varient_url(@product_varient)
    end

    assert_redirected_to product_varients_url
  end
end
