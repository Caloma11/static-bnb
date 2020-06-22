require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]

  test "visiting the index" do
    visit "/"

    assert_selector "h1", text: "Flats"
  end
end
