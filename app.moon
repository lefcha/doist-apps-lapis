-- app.moon
lapis = require "lapis"
import respond_to from require "lapis.application"

apps = {
  {
    "id": 1,
    "user_id": 1,
    "name": "Test",
    "description": "A test app",
    "redirect_uri": "https://example.com/oauth"
  },
  {
    "id": 2,
    "user_id": 2,
    "name": "Demo",
    "description": "A demo app",
    "redirect_uri": "https://example.org/oauth"
  }
}

class extends lapis.Application
  [ping: "/ping"]: respond_to {
    GET: => 
      {
        json: "pong"
      }
  }

  [apps: "/apps"]: respond_to {
    GET: => 
      {
        json: apps
      }
  }
