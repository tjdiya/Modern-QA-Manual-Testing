Feature: Dark Mode Theme Persistence

  Background: 
    Given the user is logged into their Facebook account
    And the user is on the "Display & Accessibility" settings page

  Scenario: Enable Dark Mode successfully
    When the user toggles the "Dark Mode" option to "On"
    Then the background color of the UI should change to black
    And the text color should change to white

  Scenario: Verify Dark Mode persists after page refresh
    Given the user has already enabled Dark Mode
    When the user refreshes the browser page
    Then the system remains in Dark Mode
    And the theme setting is saved to the user's profile
