#PR each for:

These two tasks should be entirely independent, so you could start two working branches and two PRs
When you create the branches, make sure you're branching from master so that your changes don't mix together.

```
Create HomeController and set up routes to the index action. Use haml for the template. Say Hello World!
Add integration test for viewing the homepage
Expectations:
- http://localhost:3000 shows "hello world" instead of the default rails template
- There is an integration test that verifies this
-- It is executed when I run 'rake' on the command line
```


```
Authlogic has a lot of writeups on how to use it, you can find them here:

https://github.com/binarylogic/authlogic
and
https://github.com/binarylogic/authlogic/wiki

You should probably actually read through them twice before you write a line of code.
At least, that helps my brain learn something new... reading through it even if I don't fully understand what I'm reading yet.

We're going to create the ability for someone to come and create an account on the site using a email, password first and last name.

You'll need to create these things:
- A User Active Record model
-- Follow the readme here, you have to add some things to the model to tell Authlogic this is your user class
- a UserSession class (which is not an ActiveRecordModel, it is a Authlogic::Session::Base)
- a UsersController
- users/new.haml (this has a form with email/pass/first/last)
- add a #create method to UsersController to accept the new form

Expectations:
- http://localhost:3000/sign_up shows a form with email/pass/first/last
- If I fill everything in correctly then
-- 1) a user record is created in the DB
-- 2) I'm taking to back to localhost:3000/
- If there are errors
-- 1) no user is created
-- 2) I'm taking back to the signup form
-- 3) an error is shown
```

