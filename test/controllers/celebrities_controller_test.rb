require "test_helper"

class CelebritiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @celebrity = celebrities(:one)
  end

  test "should get index" do
    get celebrities_url, as: :json
    assert_response :success
  end

  test "should create celebrity" do
    assert_difference('Celebrity.count') do
      post celebrities_url, params: { celebrity: { description: @celebrity.description, location_id: @celebrity.location_id, name: @celebrity.name } }, as: :json
    end

    assert_response 201
  end

  test "should show celebrity" do
    get celebrity_url(@celebrity), as: :json
    assert_response :success
  end

  test "should update celebrity" do
    patch celebrity_url(@celebrity), params: { celebrity: { description: @celebrity.description, location_id: @celebrity.location_id, name: @celebrity.name } }, as: :json
    assert_response 200
  end

  test "should destroy celebrity" do
    assert_difference('Celebrity.count', -1) do
      delete celebrity_url(@celebrity), as: :json
    end

    assert_response 204
  end
end
