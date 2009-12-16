Feature: Reporting a bug to the API
  In order to track errors on the client-side
  A web app 
  should be able to report javascript errors

  Scenario: An error is reported through the API
    Given an empty logfile exists
    When I submit an error message "Property doesn't exist"
    Then a log message should be written
