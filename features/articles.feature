Feature: Manage articles

  Scenario: Added article showed in listing
    Given a new article titled "Why do stars twinkling?" and text is "Stars twinkle when we see them from the Earth's surface because we are viewing them through thick layers of turbulent (moving) air in the Earth's atmosphere."
    When I save the article
    Then I should see the article in the listing
