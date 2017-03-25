require 'test_helper'

class IndexActionTest < ActionDispatch::IntegrationTest
	test "we can see the index page with 'Hello World' " do
		get "/"
		assert_select "h1", "Hello Word"
	end
end
