require "test_helper"

class PokedexControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get pokedex_show_url
    assert_response :success
  end
end
