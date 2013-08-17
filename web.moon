lapis = require "lapis"
lapis.serve class extends lapis.Application
  @include require "applications.users", path: "/users", name: "user_"

  [index: "/"]: =>
    @html ->
      a href: @url_for("login"), "Log in"
