require "test_helper"

class PokemonTypeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokemon_type_index_url
    assert_response :success
  end
end
