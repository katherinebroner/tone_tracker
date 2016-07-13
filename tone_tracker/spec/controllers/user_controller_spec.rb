require 'rails_helper'

describe UsersController do
  let!(:user) { User.create!(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password)}

  describe "GET #new" do
    it "initializes a blank User object" do
      get :new
      expect(assigns(:user)).to be_an_instance_of(User)
    end

    context "doesn't have a username, email, or password initially" do

      it "username is initially nil" do
        get :new
        expect(assigns(:user).username).to be_nil
      end

      it "email is initially nil" do
        get :new
        expect(assigns(:user).email).to be_nil
      end

      it "password is initially nil" do
        get :new
        expect(assigns(:user).password).to be_nil
      end
    end
  end

  describe "POST #create" do

    context "when valid params are passed" do

    before :each do
      post :create, { user: {
        username: Faker::Internet.user_name,
        email: Faker::Internet.email,
        password: Faker::Internet.password } }
    end

      it "creates a new User" do
        expect {
          post :create, { user: {
          username: Faker::Internet.user_name,
          email: Faker::Internet.email,
          password: Faker::Internet.password } }
        }.to change(User, :count).by(1)
      end

      it "assigns a newly created User as @user" do
        expect(assigns(:user)).to be_an_instance_of(User)
      end

      it "redirects to the home page" do
        expect(subject).to redirect_to(root_path)
      end
    end
  end
end
