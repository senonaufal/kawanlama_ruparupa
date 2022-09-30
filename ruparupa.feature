@rupa_rupa @rumah_tangga
Feature: Rumah Tangga Category

  @company_form_create_copy_link_duplicate_delete
  Scenario: User should be able to add a product to cart based on buy 1 get 1 category
    Given User is on ruparupa dashboard page
    And User go to rumah tangga category
    When User select buy 1 get 1
    And User sort the product as produk terbaru
    And User select thef first product on the list
    And User add the product to cart
    And User continue to the cart
    And User continue to the payment
    When User input invalid credential
    Then User failed to sign in