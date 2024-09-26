# ubuntu lua

A simple dockerfile to build a lua environment on ubuntu with the intention of running lua scripts from the host machine without the pain of installing luarocks on different operating systems (stares at windows).

Disclaimer: All windows issues I created may be my own fault. I'm not a windows user, so I don't know how to fix them. I'm sorry.

## Usage

```bash
git clone git@github.com:johnrellis/ubuntu-lua.git
cd ubuntu-lua
docker build -t ubuntu-lua:latest .
cd /path/to/your/lua/workspace
docker run --mount type=bind,source=${PWD},target=/lua-workspace -it ubuntu-lua:latest
```

Alternatively, you can change the source in the `--mount` option to the absolute of your lua workspace. For example, if your lua workspace is in `/home/user/lua-workspace`, you can change the `--mount` option to `--mount type=bind,source=/home/user/lua-workspace,target=/lua-workspace`.

Once the container starts:

```bash
lua -v
Lua 5.4.6  Copyright (C) 1994-2023 Lua.org, PUC-Rio
```

Any files that exist in your current directory on your host machine will be available in the `/lua-workspace` directory in the container.

```bash
lua hello.lua
```