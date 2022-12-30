require "application_system_test_case"

class ConcertsTest < ApplicationSystemTestCase
  setup do
    @concert = concerts(:one)
  end

  test "visiting the index" do
    visit concerts_url
    assert_selector "h1", text: "Concerts"
  end

  test "creating a Concert" do
    visit concerts_url
    click_on "New Concert"

    fill_in "Coordinates", with: @concert.coordinates
    fill_in "Date", with: @concert.date
    fill_in "Fb link", with: @concert.fb_link
    fill_in "Location link", with: @concert.location_link
    fill_in "Location name", with: @concert.location_name
    fill_in "Ticket link", with: @concert.ticket_link
    fill_in "Time", with: @concert.time
    click_on "Create Concert"

    assert_text "Concert was successfully created"
    click_on "Back"
  end

  test "updating a Concert" do
    visit concerts_url
    click_on "Edit", match: :first

    fill_in "Coordinates", with: @concert.coordinates
    fill_in "Date", with: @concert.date
    fill_in "Fb link", with: @concert.fb_link
    fill_in "Location link", with: @concert.location_link
    fill_in "Location name", with: @concert.location_name
    fill_in "Ticket link", with: @concert.ticket_link
    fill_in "Time", with: @concert.time
    click_on "Update Concert"

    assert_text "Concert was successfully updated"
    click_on "Back"
  end

  test "destroying a Concert" do
    visit concerts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Concert was successfully destroyed"
  end
end
