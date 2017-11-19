require 'test_helper'

class OsobasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osoba = osobas(:one)
  end

  test "should get index" do
    get osobas_url
    assert_response :success
  end

  test "should get new" do
    get new_osoba_url
    assert_response :success
  end

  test "should create osoba" do
    assert_difference('Osoba.count') do
      post osobas_url, params: { osoba: { godiste: @osoba.godiste, ime: @osoba.ime, prezime: @osoba.prezime } }
    end

    assert_redirected_to osoba_url(Osoba.last)
  end

  test "should show osoba" do
    get osoba_url(@osoba)
    assert_response :success
  end

  test "should get edit" do
    get edit_osoba_url(@osoba)
    assert_response :success
  end

  test "should update osoba" do
    patch osoba_url(@osoba), params: { osoba: { godiste: @osoba.godiste, ime: @osoba.ime, prezime: @osoba.prezime } }
    assert_redirected_to osoba_url(@osoba)
  end

  test "should destroy osoba" do
    assert_difference('Osoba.count', -1) do
      delete osoba_url(@osoba)
    end

    assert_redirected_to osobas_url
  end
end
