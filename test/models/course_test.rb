require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "create" do
    u = FactoryGirl.create(:user)
    c = FactoryGirl.create(:course, :user => u)
    assert c.present?
  end
end
