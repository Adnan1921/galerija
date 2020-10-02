require "application_system_test_case"

class SlikesTest < ApplicationSystemTestCase
  setup do
    @slike = slikes(:one)
  end

  test "visiting the index" do
    visit slikes_url
    assert_selector "h1", text: "Slikes"
  end

  test "creating a Slike" do
    visit slikes_url
    click_on "New Slike"

    fill_in "Datum", with: @slike.datum
    fill_in "Naziv slike", with: @slike.naziv_slike
    fill_in "Slika", with: @slike.slika
    click_on "Create Slike"

    assert_text "Slike was successfully created"
    click_on "Back"
  end

  test "updating a Slike" do
    visit slikes_url
    click_on "Edit", match: :first

    fill_in "Datum", with: @slike.datum
    fill_in "Naziv slike", with: @slike.naziv_slike
    fill_in "Slika", with: @slike.slika
    click_on "Update Slike"

    assert_text "Slike was successfully updated"
    click_on "Back"
  end

  test "destroying a Slike" do
    visit slikes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Slike was successfully destroyed"
  end
end
