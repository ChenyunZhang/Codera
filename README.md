User Stories:

## 1. user can log in/out the application,
## 2. user can ask questions.(create, read, update, delete question)
## 3. user can answer questions.(create, read, update, delete answers)

## Stretch goal:
## 1. Comment on the a answer.
## 2. Users have options to choose to answer and ask questions anonymously.
## 3. rate a question
## 4. use api to get some questions (API: https://opentdb.com/api.php?amount=50&difficulty=medium)

## to_do
1. update user needs to be authenticate.
2. bootstrap table for Home page and Question index page.
3. question and categories relationship.

## Bug Log
1. alerts are not working (fixed)
2. when redirect, the page needs to be refreshed to load css
3. the link_to and glyphicon is not inline(fixed, use .html_safe)
## <%=link_to '<i class="glyphicon glyphicon-user"></i> Sign up'.html_safe, new_user_path%>

## Journal (Also called what did I do today😃):
## 9/5/2020
1. prevent user from going to different user's home page
2. fixed erb tag not self closed issue
