require "test_helper"

class WorldcupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @worldcup = worldcups(:one)
  end

  test "should get index" do
    get worldcups_url, as: :json
    assert_response :success
  end

  test "should create worldcup" do
    assert_difference("Worldcup.count") do
      post worldcups_url, params: { worldcup: { city: @worldcup.city, stadium: @worldcup.stadium, team: @worldcup.team } }, as: :json
    end

    assert_response :created
  end

  test "should show worldcup" do
    get worldcup_url(@worldcup), as: :json
    assert_response :success
  end

  test "should update worldcup" do
    patch worldcup_url(@worldcup), params: { worldcup: { city: @worldcup.city, stadium: @worldcup.stadium, team: @worldcup.team } }, as: :json
    assert_response :success
  end

  test "should destroy worldcup" do
    assert_difference("Worldcup.count", -1) do
      delete worldcup_url(@worldcup), as: :json
    end

    assert_response :no_content
  end
end
