require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title","ETFOS Alumni" 
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title","O udruzi | ETFOS Alumni" 
  end

  test "should get statut" do
    get :statut
    assert_response :success
    assert_select "title","Statut | ETFOS Alumni" 
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title","Kontakt | ETFOS Alumni" 
  end

end
