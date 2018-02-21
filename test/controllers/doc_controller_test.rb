require 'test_helper'

class DocControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get doc_title:string_url
    assert_response :success
  end

  test "should get content:text" do
    get doc_content:text_url
    assert_response :success
  end

end
