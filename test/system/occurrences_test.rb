require "application_system_test_case"

class OccurrencesTest < ApplicationSystemTestCase
  setup do
    @occurrence = occurrences(:one)
  end

  test "visiting the index" do
    visit occurrences_url
    assert_selector "h1", text: "Occurrences"
  end

  test "should create occurrence" do
    visit occurrences_url
    click_on "New occurrence"

    fill_in "City", with: @occurrence.city
    fill_in "Description", with: @occurrence.description
    fill_in "Email", with: @occurrence.email
    fill_in "Latitude", with: @occurrence.latitude
    fill_in "Longitude", with: @occurrence.longitude
    fill_in "Name", with: @occurrence.name
    fill_in "Neighborhood", with: @occurrence.neighborhood
    fill_in "Ocurrencetype", with: @occurrence.ocurrenceType
    fill_in "Postalcode", with: @occurrence.postalCode
    fill_in "Street", with: @occurrence.street
    fill_in "Tel", with: @occurrence.tel
    fill_in "Uf", with: @occurrence.uf
    click_on "Create Occurrence"

    assert_text "Occurrence was successfully created"
    click_on "Back"
  end

  test "should update Occurrence" do
    visit occurrence_url(@occurrence)
    click_on "Edit this occurrence", match: :first

    fill_in "City", with: @occurrence.city
    fill_in "Description", with: @occurrence.description
    fill_in "Email", with: @occurrence.email
    fill_in "Latitude", with: @occurrence.latitude
    fill_in "Longitude", with: @occurrence.longitude
    fill_in "Name", with: @occurrence.name
    fill_in "Neighborhood", with: @occurrence.neighborhood
    fill_in "Ocurrencetype", with: @occurrence.ocurrenceType
    fill_in "Postalcode", with: @occurrence.postalCode
    fill_in "Street", with: @occurrence.street
    fill_in "Tel", with: @occurrence.tel
    fill_in "Uf", with: @occurrence.uf
    click_on "Update Occurrence"

    assert_text "Occurrence was successfully updated"
    click_on "Back"
  end

  test "should destroy Occurrence" do
    visit occurrence_url(@occurrence)
    click_on "Destroy this occurrence", match: :first

    assert_text "Occurrence was successfully destroyed"
  end
end
