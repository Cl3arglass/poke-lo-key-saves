require 'test_helper'

class PokesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poke = pokes(:one)
  end

  test "should get index" do
    get pokes_url, as: :json
    assert_response :success
  end

  test "should create poke" do
    assert_difference('Poke.count') do
      post pokes_url, params: { poke: { found: @poke.found, location: @poke.location, name: @poke.name } }, as: :json
    end

    assert_response 201
  end

  test "should show poke" do
    get poke_url(@poke), as: :json
    assert_response :success
  end

  test "should update poke" do
    patch poke_url(@poke), params: { poke: { found: @poke.found, location: @poke.location, name: @poke.name } }, as: :json
    assert_response 200
  end

  test "should destroy poke" do
    assert_difference('Poke.count', -1) do
      delete poke_url(@poke), as: :json
    end

    assert_response 204
  end
end
