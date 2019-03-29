require "application_system_test_case"

class ShoppingKartsTest < ApplicationSystemTestCase
  setup do
    @shopping_kart = shopping_karts(:one)
  end

  test "visiting the index" do
    visit shopping_karts_url
    assert_selector "h1", text: "Shopping Karts"
  end

  test "creating a Shopping kart" do
    visit shopping_karts_url
    click_on "New Shopping Kart"

    fill_in "Name", with: @shopping_kart.name
    click_on "Create Shopping kart"

    assert_text "Shopping kart was successfully created"
    click_on "Back"
  end

  test "updating a Shopping kart" do
    visit shopping_karts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @shopping_kart.name
    click_on "Update Shopping kart"

    assert_text "Shopping kart was successfully updated"
    click_on "Back"
  end

  test "destroying a Shopping kart" do
    visit shopping_karts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shopping kart was successfully destroyed"
  end
end
