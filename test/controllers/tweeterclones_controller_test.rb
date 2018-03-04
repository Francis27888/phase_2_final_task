require 'test_helper'

class TweeterclonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweeterclone = tweeterclones(:one)
  end

  test "should get index" do
    get tweeterclones_url
    assert_response :success
  end

  test "should get new" do
    get new_tweeterclone_url
    assert_response :success
  end

  test "should create tweeterclone" do
    assert_difference('Tweeterclone.count') do
      post tweeterclones_url, params: { tweeterclone: { content: @tweeterclone.content } }
    end

    assert_redirected_to tweeterclone_url(Tweeterclone.last)
  end

  test "should show tweeterclone" do
    get tweeterclone_url(@tweeterclone)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweeterclone_url(@tweeterclone)
    assert_response :success
  end

  test "should update tweeterclone" do
    patch tweeterclone_url(@tweeterclone), params: { tweeterclone: { content: @tweeterclone.content } }
    assert_redirected_to tweeterclone_url(@tweeterclone)
  end

  test "should destroy tweeterclone" do
    assert_difference('Tweeterclone.count', -1) do
      delete tweeterclone_url(@tweeterclone)
    end

    assert_redirected_to tweeterclones_url
  end
end
