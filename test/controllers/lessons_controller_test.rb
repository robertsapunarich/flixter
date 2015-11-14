require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  test "lesson show page" do
    l = FactoryGirl.create(:lesson)
    get :show, :id => l.id
    assert_response :success
  end
end
