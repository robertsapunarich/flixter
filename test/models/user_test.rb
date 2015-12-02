require 'test_helper'

class UserTest < ActiveSupport::TestCase
  

  test "user enrolled in course" do
    u = FactoryGirl.create(:user)
    c = FactoryGirl.create(:course)
    e = Enrollment.create(:user_id => u.id, :course_id => c.id)
    assert u.enrolled_in?(c)
  end

  test "user not enrolled in course" do
    u = FactoryGirl.create(:user)
    c = FactoryGirl.create(:course)
    assert ! u.enrolled_in?(c)
  end

end
