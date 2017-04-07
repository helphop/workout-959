require 'test_helper'

class SignUp < ActionDispatch::IntegrationTest
  test "we can see the sign up page with 'Registration Form' " do
    get "/sign_up"
    assert_select "h1", "Registration Form"
  end

  test "we can create a new user" do
    get "/sign_up"
    assert_response :success

    post "/users",
    params: {user: {first_name: "John", last_name: "Doe", email: "jd@example.com", password: "password"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h1", "Workout 959"
  end

  test "we can see error messages for invalid sign up" do

    get "/sign_up"
    assert_response :success
    post "/users",
    params: {user: {first_name: "", last_name: "Peter", email: "jp@example.com", password: "password"}}
    assert_select "h2", "2 errors 
prohibited:"
  end
end