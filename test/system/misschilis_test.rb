require "application_system_test_case"

class MisschilisTest < ApplicationSystemTestCase
  setup do
    @misschili = misschilis(:one)
  end

  test "visiting the index" do
    visit misschilis_url
    assert_selector "h1", text: "Misschilis"
  end

  test "creating a Misschili" do
    visit misschilis_url
    click_on "New Misschili"

    fill_in "Product", with: @misschili.product_id
    click_on "Create Misschili"

    assert_text "Misschili was successfully created"
    click_on "Back"
  end

  test "updating a Misschili" do
    visit misschilis_url
    click_on "Edit", match: :first

    fill_in "Product", with: @misschili.product_id
    click_on "Update Misschili"

    assert_text "Misschili was successfully updated"
    click_on "Back"
  end

  test "destroying a Misschili" do
    visit misschilis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Misschili was successfully destroyed"
  end
end
