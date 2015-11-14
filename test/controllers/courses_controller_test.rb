require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  test "course show page" do
    u = FactoryGirl.create(:user)
    c = FactoryGirl.create(:course)
    get :show, :id => c.id
    assert_response :success
  end

  # "test image displayed"
end
