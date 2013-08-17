-- views/index.moon
import Widget from require "lapis.html"

class Index extends Widget
  content: =>
    h1 class: "header", @page_title
    div class: "body", ->
      text "Welcome to Logout!"
