require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  test "lesson show page" do
    l = FactoryGirl.create(:lesson)
    get :show, :id => l.id
    assert_response :success
  end

  test "redirect unenrolled user" do
    c = FactoryGirl.create(:course)
    s = Section.create(:course_id => c.id)
    l = Lesson.create(:title => 'programming', :subtitle => 'how and why', :section_id => s.id)
    u = FactoryGirl.create(:user)
    sign_in u
    get :show, :id => l.id
    u.enrolled_in?(c)
    assert_redirected_to course_path 
  end
end
