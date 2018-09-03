require 'test_helper'

class MisschilisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @misschili = misschilis(:one)
  end

  test "should get index" do
    get misschilis_url
    assert_response :success
  end

  test "should get new" do
    get new_misschili_url
    assert_response :success
  end

  test "should create misschili" do
    assert_difference('Misschili.count') do
      post misschilis_url, params: { misschili: { product_id: @misschili.product_id } }
    end

    assert_redirected_to misschili_url(Misschili.last)
  end

  test "should show misschili" do
    get misschili_url(@misschili)
    assert_response :success
  end

  test "should get edit" do
    get edit_misschili_url(@misschili)
    assert_response :success
  end

  test "should update misschili" do
    patch misschili_url(@misschili), params: { misschili: { product_id: @misschili.product_id } }
    assert_redirected_to misschili_url(@misschili)
  end

  test "should destroy misschili" do
    assert_difference('Misschili.count', -1) do
      delete misschili_url(@misschili)
    end

    assert_redirected_to misschilis_url
  end
end
