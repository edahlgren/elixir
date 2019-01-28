The Elixir Cross Referencer
===========================

This is a modified version of github.com/bootlin/elixir. Notable differences:

- This version only indexes HEAD (treeish). In other words, tags are ignored. If this is what you want, then it makes setting up new projects much easier.

- The source code is always at /generic/latest/source.

---

Setting up a project is trivial:

1. Create a directory to store your docker scripts. For example:

```
$ mkdir /path/to/myproj/elixir
```

2. Copy the Docker file and script templates into your directory. For example:

```
$ cp docker-template/* /path/to/myproj/elixir
```

3. Configure the script templates by replacing PROJECT_NAME with the name of your project and HTTP_GIT_URL with a quoted http URL where your project is hosted. For example: 

```
$ sed -i '/PROJECT_NAME/myproj/' /path/to/myproj/elixir/*
$ sed -i '/HTTP_GIT_URL/"http:\/\/github\.com\/username\/myproj"/' /path/to/myproj/elixir/*
```

4. Build the container that will run the cross referencer. For example:

```
$ /path/to/myproj/elixir/build.sh
```

5. Execute the cross referencer in the container. For example:

```
$ /path/to/myproj/elixir/run.sh
```

6. To shut everything down (to stop apache from hogging port 80):

```
$ /path/to/myproj/elixir/stop.sh
```

7. (optional) To get a shell into the container, for example to debug it:

```
$ /path/to/myproj/elixir/shell.sh
```

It may be easier to look at `build.sh`, `run.sh`, `stop.sh`, and `shell.sh` and execute the commands manually. The scripts are intended to be useful but aren't required.

---

See [the original documentation](https://github.com/bootlin/elixir/blob/master/README.md) for more details on how the cross referencer works.
