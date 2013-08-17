-- applications/users.moon
lapis = require "lapis"

class UsersApplication extends lapis.Application
  [login: "/login"]: =>
    @page_title = "Welcome To Login Page"
    render: true

  [logout: "/logout"]: =>
    @page_title = "Welcome To Logout Page"
    render: true
