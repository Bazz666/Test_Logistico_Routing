require "application_system_test_case"

class RoutesTest < ApplicationSystemTestCase
  setup do
    @route = routes(:one)
  end

  test "visiting the index" do
    visit routes_url
    assert_selector "h1", text: "Routes"
  end

  test "creating a Route" do
    visit routes_url
    click_on "New Route"

    check "Action" if @route.action
    fill_in "Dirver", with: @route.dirver_id
    fill_in "Ends at", with: @route.ends_at
    fill_in "Start at", with: @route.start_at
    fill_in "Total stops", with: @route.total_stops
    fill_in "Travel time", with: @route.travel_time
    fill_in "Vehicle", with: @route.vehicle_id
    click_on "Create Route"

    assert_text "Route was successfully created"
    click_on "Back"
  end

  test "updating a Route" do
    visit routes_url
    click_on "Edit", match: :first

    check "Action" if @route.action
    fill_in "Dirver", with: @route.dirver_id
    fill_in "Ends at", with: @route.ends_at
    fill_in "Start at", with: @route.start_at
    fill_in "Total stops", with: @route.total_stops
    fill_in "Travel time", with: @route.travel_time
    fill_in "Vehicle", with: @route.vehicle_id
    click_on "Update Route"

    assert_text "Route was successfully updated"
    click_on "Back"
  end

  test "destroying a Route" do
    visit routes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Route was successfully destroyed"
  end
end
