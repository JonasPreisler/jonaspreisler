require "application_system_test_case"

class LinkToShortensTest < ApplicationSystemTestCase
  setup do
    @link_to_shorten = link_to_shortens(:one)
  end

  test "visiting the index" do
    visit link_to_shortens_url
    assert_selector "h1", text: "Link To Shortens"
  end

  test "creating a Link to shorten" do
    visit link_to_shortens_url
    click_on "New Link To Shorten"

    fill_in "Amount", with: @link_to_shorten.amount
    fill_in "Color", with: @link_to_shorten.color
    fill_in "Product", with: @link_to_shorten.product_id
    fill_in "Size", with: @link_to_shorten.size
    click_on "Create Link to shorten"

    assert_text "Link to shorten was successfully created"
    click_on "Back"
  end

  test "updating a Link to shorten" do
    visit link_to_shortens_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @link_to_shorten.amount
    fill_in "Color", with: @link_to_shorten.color
    fill_in "Product", with: @link_to_shorten.product_id
    fill_in "Size", with: @link_to_shorten.size
    click_on "Update Link to shorten"

    assert_text "Link to shorten was successfully updated"
    click_on "Back"
  end

  test "destroying a Link to shorten" do
    visit link_to_shortens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Link to shorten was successfully destroyed"
  end
end
