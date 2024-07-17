
### Set up instructions

1. Fork [this repository](https://github.com/Code-the-Dream-School/Backend-ruby-testfirst).  Then clone your fork as usual.
2. On your local machine, ```cd``` into the Backend-ruby-testfirst directory.
3. run ```bundle install``` to install all the gems this project needs.
4. Make a git branch called lesson5 and do the coding for these exercises in that branch.

### Getting started with the exercises

To work through the first exercise, follow this process.

1. Review the instructions for `00-hello` by displaying `00-hello/index.html.  You can view this file by right clicking on it in the file explorer pane of your VsCode.  A menu comes up to show you how to view the HTML in your browser.
2. `cd` into `00_hello` from the root folder of this project
3. Run `rake`, to run the tests. It will fail with the following error:
  ```
  Failures:

    1) the hello function says hello
      Failure/Error: expect(hello).to eq("Hello!")

      NameError:
        undefined local variable or method `hello' for #<RSpec::ExampleGroups::TheHelloFunction:0x007fa1221408f0>
        # ./00_hello/hello_spec.rb:106:in `block (2 levels) in <top (required)>'
  ```
4. Read the failure output carefully and write the code that will make it pass
5. Run the tests again with `rake`
6. This will output that one test has passed and another test failure, write the code to make the next test pass.
7. Continue this process until all tests pass (when they are green) you have now completed the exercise.
8. Do this for all the exercises in this project.

When you are complete, push your changes to github as usual, and issue a pull request.

Basically, this is "error-driven development"... you'll keep running tests, hitting error messages, fixing those messages, running more tests...  It is meant to not only test your Ruby skills but also get you comfortable seeing big scary looking stack traces and error messages.  Most of the development you do at first will be just like this.  In fact, most of *all* development is error-driven.  So get comfortable with it!

### Credit
This is forked from: https://github.com/TheOdinProject/learn_ruby
The latter is forked from [https://github.com/alexch/learn_ruby](https://github.com/alexch/learn_ruby), its original creator.
