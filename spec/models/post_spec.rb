require 'spec_helper'
describe Post do
  describe "Params" do
	  it "should have a title" do
		post = Post.new
		post.should respond_to(:title)
	  end
	  it "should have a subtitle" do
		post = Post.new
		post.should respond_to(:subtitle)
	  end
	  it "should have content" do
		post = Post.new
		post.should respond_to(:content)
	  end
	  it "should have a status" do
		post = Post.new
		post.should respond_to(:status)
	  end
  end

  describe "Validations" do
	before(:each) do
	  @user = FactoryGirl.create(:user)
	  @vaild_param = {title: Faker::Name.first_name, subtitle: "test post, not a real one",
			 content: "lourem Ipsoum", status: :published, user_id: @user.id }
	end
	
	it "should save with vaild params" do
		post = Post.new(@vaild_param)
		post.save.should be_true
	end

	it "should not save a project without a title" do
		post = Post.new(@vaild_param.merge({title: ""}))
		post.save.should be_false
	end
	it "should not save a project without a subtitle" do
		post = Post.new(@vaild_param.merge({subtitle: ""}))
		post.save.should be_false
	end
	it "should not save a project without content" do
		post = Post.new(@vaild_param.merge({content: ""}))
		post.save.should be_false
	end
	it "should not save a project without a status" do
		post = Post.new(@vaild_param.merge({status: ""}))
		post.save.should be_false
	end
	it "should not save a project without a user" do
		post = Post.new(@vaild_param.merge({user_id: ""}))
		post.save.should be_false
	end
  end

  describe "Status" do
	before(:each) do
	  @vaild_param = {title: "post 01", subtitle: "test post, not a real one",
			 content: "lourem Ipsoum", status: :published }
	end

	it "should save status correctly to the database" do
		post = Post.new(@vaild_param)
		post.status.should eq(:published)
	end  
  end
  
  describe "Assosiations" do
	it "should have a user" do
		post = Post.new
		post.should respond_to(:user)
	end
  end
end
















