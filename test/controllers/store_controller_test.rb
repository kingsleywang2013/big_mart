require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select 'h1', 'Your Store'
    assert_select 'h4', 3
    assert_select 'h4', 'test'
    assert_select '.container .well', 3
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
