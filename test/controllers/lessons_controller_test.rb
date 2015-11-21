require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  #test "lesson show page" do
  #  l = FactoryGirl.create(:lesson)
  #  get :show, :id => l.id
  #  assert_response :success
  #end

  test "redirect unenrolled user" do
    c = FactoryGirl.create(:course)
    s = Section.create(course: c)
    l = Lesson.create(:title => 'programming', :subtitle => 'how and why', section: s)
    u = FactoryGirl.create(:user)
    sign_in u
    get :show, :id => l.id
    assert_redirected_to course_path(c)
  end
end
