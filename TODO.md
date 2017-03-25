#PR each for:

These tasks should be mostly independent, so you could start two working branches and two PRs
When you create the branches, make sure you're branching from master so that your changes don't mix together.

```
add bootstrap to the app (use one of the 4.x alpha version since, knock on wood, that'll be officially released in the near future)
convert application.html.erb to haml - there are some quick and dirty erb -> haml conversion tools on the web.  google for them.
update application.haml to "bootstrapify" this application
Lets use this layout: https://v4-alpha.getbootstrap.com/examples/screenshots/navbar-static.jpg
Largely, we neeD:
- a navbar
-- "Workout 959" in the top left
-- "Log In" and "Sign Up" links in the top left (they can just link to the homepage for now)
- Some hello world content section.  I dont' have content for that right now.
```

```
Remove coffee script from Gemfile.  coffeescript is terrible and we're not going to use it.
A few of the generators that have been run already created *.coffee files, convert those to .js files as well
```

```
DONE: https://github.com/josh-m-sharpe/workout-959/pull/3

Create HomeController and set up routes to the index action. Use haml for the template. Say Hello World!
Add integration test for viewing the homepage
Expectations:
- http://localhost:3000 shows "hello world" instead of the default rails template
- There is an integration test that verifies this
-- It is executed when I run 'rake' on the command line
```

```
WIP: https://github.com/josh-m-sharpe/workout-959/pull/4

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

