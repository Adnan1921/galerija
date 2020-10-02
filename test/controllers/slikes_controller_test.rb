require 'test_helper'

class SlikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slike = slikes(:one)
  end

  test "should get index" do
    get slikes_url
    assert_response :success
  end

  test "should get new" do
    get new_slike_url
    assert_response :success
  end

  test "should create slike" do
    assert_difference('Slike.count') do
      post slikes_url, params: { slike: { datum: @slike.datum, naziv_slike: @slike.naziv_slike, slika: @slike.slika } }
    end

    assert_redirected_to slike_url(Slike.last)
  end

  test "should show slike" do
    get slike_url(@slike)
    assert_response :success
  end

  test "should get edit" do
    get edit_slike_url(@slike)
    assert_response :success
  end

  test "should update slike" do
    patch slike_url(@slike), params: { slike: { datum: @slike.datum, naziv_slike: @slike.naziv_slike, slika: @slike.slika } }
    assert_redirected_to slike_url(@slike)
  end

  test "should destroy slike" do
    assert_difference('Slike.count', -1) do
      delete slike_url(@slike)
    end

    assert_redirected_to slikes_url
  end
end
