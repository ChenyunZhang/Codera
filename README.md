User Stories:

## 1. user can log in/out the application. Done !

## 2. user can ask questions.(create, read, update, delete question) Done!!

## 3. user can answer questions.(create, read, update, delete answers)


## Stretch goal:
## 1. Comment on the a answer.
## 2. Users have options to choose to answer and ask questions anonymously.
## 3. rate a question
## 4. use api to get some questions (API: https://opentdb.com/api.php?amount=50&difficulty=medium)


## Bug Log
1. alerts are not working (fixed)
    ## render the error partial in the login and signup form, assuming the flash messages are all error messages.

2. when redirect, the page needs to be refreshed to load css
    ## (fixed, just don't have the problem anymore, will come back to do the testing)

3. the link_to and glyphicon is not inline(fixed, use .html_safe)
    ## <%=link_to '<i class="glyphicon glyphicon-user"></i> Sign up'.html_safe, new_user_path%>


## Journal (Also called what did I do today😃):

## to_do
1. bootstrap table for Home page and Question index page.
2. question and categories relationship.
        1. user should be able to create mutlple categories while they post questions.

## 9/5/2020
1. prevent user from going to different user's home page.
2. fixed erb tag not self closed issue.
3. finished CRUD for question model.
4. nested question route from user route.

## 9/6/2020
1.
