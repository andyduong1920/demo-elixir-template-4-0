[![Build Status](CI_BADGE_URL goes here)](REPO_URL goes here)

## Introduction

> *App introduction goes here ...* test ci

## Project Setup

### Erlang & Elixir

- Erlang 24.2.2

- Elixir 1.13.3

- Recommended version manager.

  - [asdf](https://github.com/asdf-vm/asdf)
  - [asdf-erlang](https://github.com/asdf-vm/asdf-erlang)
  - [asdf-elixir](https://github.com/asdf-vm/asdf-elixir)

### Development

- Install [Docker for Mac](https://docs.docker.com/docker-for-mac/install/)

- Setup and boot the Docker containers:

  ```sh
  make docker_setup
  ```

- Install Elixir dependencies:

  ```sh
  mix deps.get
  ```

- Install Node dependencies:

  ```sh
  npm install --prefix assets
  ```

- Setup the databases:

  ```sh
  mix ecto.setup
  ```

- Start the Phoenix app

  ```sh
  iex -S mix phx.server
  ```

- Run all tests:

  ```sh
  mix test 
  ```

- Run all lint:

  ```sh
  mix codebase 
  ```
  
- Fix all lint:

  ```sh
  mix codebase.fix 
  ```
  
- Test coverage:

  ```sh
  mix coverage 
  ```

### Production

- Build Docker image

  ```sh
  docker-compose build
  ```

### CI/CD
The project relies entirely on [Github Actions](https://github.com/features/actions) for CI/CD via multiple workflows located under the [`.github/workflows/`](.github/workflows) directory.
Please check out the [`.github/workflows/README.md`](.github/workflows/README.md) file for further instructions.

## Project documentation

Most of the documentation is located in the `.github/wiki` directory, which is published to the [project's Github wiki](https://github.com/[REPO]/wiki).
