require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "create_user" do 
    u = FactoryGirl.create(:user)
  end

end
