## Erlang & Elixir

- Erlang 24.2.2

- Elixir 1.13.3

- Recommended version manager.

  - [asdf](https://github.com/asdf-vm/asdf)
  - [asdf-erlang](https://github.com/asdf-vm/asdf-erlang)
  - [asdf-elixir](https://github.com/asdf-vm/asdf-elixir)

## Development

- Install [Docker for Mac](https://docs.docker.com/docker-for-mac/install/)

- Setup and boot the Docker containers:

  ```sh
  make docker_setup
  ```

- Install Elixir dependencies:

  ```sh
  mix do deps.get, deps.compile
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

## Production

- Build Docker image

  ```sh
  docker-compose build
  ```
