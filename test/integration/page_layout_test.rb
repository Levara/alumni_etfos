require 'test_helper'

class PageLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path 
    assert_select "a[href=?]", o_udruzi_path, count: 2
    assert_select "a[href=?]", statut_path
    assert_select "a[href=?]", kontakt_path
    assert_select "a[href=?]", kontakt_path, count: 2
  end

end
