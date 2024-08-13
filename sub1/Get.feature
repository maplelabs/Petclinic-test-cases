Feature: Get request

  Background:
    * def baseurl = java.lang.System.getenv('BASE_URL')
    
  Scenario: new user fetch
   # * def baseurl = read("custom.json")
    Given url baseurl + "petclinic/api/owners/" + jsonObject.id
  #Given url 'http://localhost:9966/petclinic/api/owners/'+jsonObject.id
    When method get
    Then status 200
