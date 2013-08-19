lapis = require "lapis"
console = require "lapis.console"
db = require "lapis.db"

lapis.serve class extends lapis.Application
  @include require "applications.users", path: "/users", name: "user_"

  [index: "/"]: =>
    @html ->
      a href: @url_for("login"), "Log in"

  "/list": =>
    res = db.query "SELECT * FROM users"
    "ok!"

  "/console": console.make!
