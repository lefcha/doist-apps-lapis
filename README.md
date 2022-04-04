# Doist Apps with Lapis

## Installation

Prerequisites:

- Lua 5.1
- LuaRocks
- OpenResty

Install:

```sh
$ luarocks install lapis
```

## Run

Compile:

```sh
$ moonc *.moon
```

Start server:

```sh
$ lapis server
```

On another terminal:

```sh
$ curl http:/localhost:8080/ping
"pong"
$ curl http:/localhost:8080/apps
[
  {
    "user_id": 1,
    "name": "Test",
    "description": "A test app",
    "id": 1,
    "redirect_uri": "https://example.com/oauth"
  },
  {
    "user_id": 2,
    "name": "Demo",
    "description": "A demo app",
    "id": 2,
    "redirect_uri": "https://example.org/oauth"
  }
]
```
