#####

<p align="center">
    <img src="assets/images/logo.png" width="100" />
    <h2 align="center">Welcome to <code>sqlite-showcase</code>【ツ】</h2>
</p>

[![license](https://img.shields.io/badge/license-MIT-indianred.svg?style=flat-square&logo=spdx&logoColor=white)](https://github.com/sven-seyfert/sqlite-showcase/blob/main/LICENSE.md)
[![release](https://img.shields.io/github/release/sven-seyfert/sqlite-showcase.svg?color=slateblue&style=flat-square&logo=github)](https://github.com/sven-seyfert/sqlite-showcase/releases/latest)
[![autoit](https://img.shields.io/badge/lang-AutoIt-lightskyblue.svg?style=flat-square&logo=autodesk&logoColor=white)]()
[![last commit](https://img.shields.io/github/last-commit/sven-seyfert/sqlite-showcase.svg?color=darkgoldenrod&style=flat-square&logo=github)](https://github.com/sven-seyfert/sqlite-showcase/commits/main)
[![contributors](https://img.shields.io/github/contributors/sven-seyfert/sqlite-showcase.svg?color=darkolivegreen&style=flat-square&logo=github)](https://github.com/sven-seyfert/sqlite-showcase/graphs/contributors)
[![Discord](https://img.shields.io/badge/Discord-AutoIt_Community_Projects-%235865F2.svg?style=flat-square&logo=discord&logoColor=white)](https://discord.gg/5DWTpZK3QN)

---

[Description](#description) | [Features](#features) | [Getting started](#getting-started) | [Configuration](#configuration) | [Contributing](#contributing) | [License](#license) | [Acknowledgements](#acknowledgements)

## Description

The project "sqlite-showcase" is at the moment like the name already mentioned, a showcase how to deal with SQLite in AutoIt. It also shows how to do proper logging and error handling. I want to use this to support discussions on SQLite and error handling in general, on the german and englisch AutoIt forums.

💡 But please note: This is my approach and there are various ways to deal with SQLite and error handling. But this one has proven itself for me over many projects and can also be found in other languages.

## Features

#### *Structure*

The project/repository is structured in a module based way. This might be a bit unfamiliar for the most people regarding the usage of AutoIt. But for people coming from other programming languages, this is probably a familiar picture.

#### *SQLite*

- creates a SQLite database
- runs a CREATE TABLE (schema) script [^1] and a INSERT INTO (seed) script
  - data will only be inserted on the first run or if no data is in "users" table
- displays "users" table content as console output and as array
- displays "todos" table content as console output and as array
- displays "todos" in a pagination style
  - showcase for using LIMIT and OFFSET in SQLite

[^1]: The database schema example is based on a common TODO list structure.

#### *Logging and error handling*

The most possible failures are handled through the whole project. So you will find the usage of `SetError()` and `_Log()` a lot. In case of simply running the script, you will get the log statements printed to the console output. In case you build the application, a `./log/20250217.log` (YYYYMMDD.log) file will contain the information.

**A concrete example:**

The CREATE TABLE script `01-create-tables.sql` is been executed.

``` autoit
_ExecuteSqlScript($mDB.Path & '01-create-tables.sql')
If @error Then
    _Log('at _ExecuteSqlScript()')
    Exit -1
EndIf
```

In case of an error, the console output will look like this:

``` log
[2025-02-17 06:48:13.389]
FileOpen() error
	at _ReadFile()
	at _ExecuteSqlScript()
```

So you can see by reading from bottom to the top, where the error came from and which functions are involved.

## Getting started

#### *Preconditions*

As assumption, you already have AutoIt installed. You also use a x64 system, otherwise [download](https://www.sqlite.org/download.html) a SQLite precompiled binary for Windows like `sqlite-dll-win-x86-3490000.zip` for example. See also this [README](https://github.com/sven-seyfert/sqlite-showcase/blob/main/lib/sqlite/README.md) file for more information.

#### *Installation*

Fork or clone the repository. Alternatively you can download the [latest release](https://github.com/sven-seyfert/sqlite-showcase/releases/latest) package. That should be all.

#### *Usage*

Open the project in your editor/IDE and navigate to folder `./src`. Open `main.au3` and run the program. By default, in case you fulfill the [preconditions](#preconditions), a `./db/todo.db` should be created and you should see several `_ArrayDisplay()` outputs. As console output you will see table content results (or error logging entries).

If you want to compile the application, simply do this on the `main.au3` level. Then you can switch to the folder `./build` and run the compiled program their. A `./log/*.log` file will be created in case of errors.

## Configuration

- If you are on a x86 system:
  - adjust the comiler information `#AutoIt3Wrapper_UseX64=y` to `=n`,
  - adjust the SQLite dll name in `./src/maps/sqlite.au3` > `_InitSqliteMap()` function.
- If you want to use your own database schema (structure), replace the script content of the `./db/*.sql` files.
- If you want to rename the database, do it in `./src/maps/db.au3` > `_InitDBMap()` function.

## Contributing

To be defined [...]

## License

Distributed under the MIT License. See [LICENSE](https://github.com/sven-seyfert/sqlite-showcase/blob/main/LICENSE.md) for more information.

## Acknowledgements

- Opportunity by [GitHub](https://github.com)
- Badges by [Shields](https://shields.io)
- Thanks to the authors, maintainers and contributers of [SQLite](https://www.sqlite.org/copyright.html).

##

[To the top](#)
