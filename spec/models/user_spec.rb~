require 'spec_helper'

describe User do
  context "Validations" do
    it "should validate the uniqeness of user_name" do
       @user = User.new(first_name: "john",
	   last_name: "james",
	   company_name: "micople",
	   password: "foobar",
	   password_confirmation: "foobar",
	   email: "example@gmail.com",
	   user_name: "galtzhayek")
	@user.save.should be_true
       @other_user = User.new(first_name: "john",
	   last_name: "james",
	   company_name: "micople",
	   password: "foobar",
	   password_confirmation: "foobar",
	   email: "example1@gmail.com",
	   user_name: "galtzhayek")
	@other_user.save.should be_false

    end
  end
end
