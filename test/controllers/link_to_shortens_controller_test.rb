require 'test_helper'

class LinkToShortensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @link_to_shorten = link_to_shortens(:one)
  end

  test "should get index" do
    get link_to_shortens_url
    assert_response :success
  end

  test "should get new" do
    get new_link_to_shorten_url
    assert_response :success
  end

  test "should create link_to_shorten" do
    assert_difference('LinkToShorten.count') do
      post link_to_shortens_url, params: { link_to_shorten: { amount: @link_to_shorten.amount, color: @link_to_shorten.color, product_id: @link_to_shorten.product_id, size: @link_to_shorten.size } }
    end

    assert_redirected_to link_to_shorten_url(LinkToShorten.last)
  end

  test "should show link_to_shorten" do
    get link_to_shorten_url(@link_to_shorten)
    assert_response :success
  end

  test "should get edit" do
    get edit_link_to_shorten_url(@link_to_shorten)
    assert_response :success
  end

  test "should update link_to_shorten" do
    patch link_to_shorten_url(@link_to_shorten), params: { link_to_shorten: { amount: @link_to_shorten.amount, color: @link_to_shorten.color, product_id: @link_to_shorten.product_id, size: @link_to_shorten.size } }
    assert_redirected_to link_to_shorten_url(@link_to_shorten)
  end

  test "should destroy link_to_shorten" do
    assert_difference('LinkToShorten.count', -1) do
      delete link_to_shorten_url(@link_to_shorten)
    end

    assert_redirected_to link_to_shortens_url
  end
end
