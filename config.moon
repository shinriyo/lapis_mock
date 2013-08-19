import config from require "lapis.config"

config "development", ->
  --postgresql_url "postgres://lapis:lapis@127.0.0.1/lapis_db"
  postgresql_url "postgres://postgres:lapis@127.0.0.1/test"
  port 8080

config "production", ->
  port 80
  num_workers 4
  lua_code_cache "off"
