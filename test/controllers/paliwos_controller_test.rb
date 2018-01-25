require 'test_helper'

class PaliwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paliwo = paliwos(:one)
  end

  test "should get index" do
    get paliwos_url
    assert_response :success
  end

  test "should get new" do
    get new_paliwo_url
    assert_response :success
  end

  test "should create paliwo" do
    assert_difference('Paliwo.count') do
      post paliwos_url, params: { paliwo: { name: @paliwo.name } }
    end

    assert_redirected_to paliwo_url(Paliwo.last)
  end

  test "should show paliwo" do
    get paliwo_url(@paliwo)
    assert_response :success
  end

  test "should get edit" do
    get edit_paliwo_url(@paliwo)
    assert_response :success
  end

  test "should update paliwo" do
    patch paliwo_url(@paliwo), params: { paliwo: { name: @paliwo.name } }
    assert_redirected_to paliwo_url(@paliwo)
  end

  test "should destroy paliwo" do
    assert_difference('Paliwo.count', -1) do
      delete paliwo_url(@paliwo)
    end

    assert_redirected_to paliwos_url
  end
end
