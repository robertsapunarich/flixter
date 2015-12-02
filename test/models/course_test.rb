require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "create" do
    u = FactoryGirl.create(:user)
    c = FactoryGirl.create(:course, :user => u)
    assert c.present?
  end

  test "is course free?" do
    c = FactoryGirl.create(:course, :cost => 0)
    assert c.free?
  end

  test "is course premium?" do
    c = FactoryGirl.create(:course, :cost => 1)
    assert c.premium?
  end
end
