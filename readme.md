# WebAssembly and CMake

## Requirements

- Git
- Docker
- Docker Compose

## Getting Started

Clone the repository.

```sh
git clone git@github.com:vitor-mariano/webassembly-and-cmake.git
cd webassembly-and-cmake
```

Install the dependencies.

```sh
docker-compose run --rm web yarn
```

> When running the first time, this command can take a long time to build the environment.

Install the dependencies.

```sh
yarn
```

## Up and Running

After install the dependencies, start the development server.

```sh
docker-compose up
```

Now you can access the application typing [http://localhost:1234](http://localhost:1234) in the browser.

## Development

You must enter the development container to have access to all commands from the development environment.

```sh
docker-compose run --rm web bash
```

### Compiling C and C++ files

Use the `yarn build` command to generate wasm files from C or C++ files.

```sh
yarn compile
```
