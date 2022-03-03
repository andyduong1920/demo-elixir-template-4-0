# Github Actions

The following workflows are supported.

- Test


- [Deploy to Heroku](#deploy-to-heroku-workflow-usage-instruction)


## Deploy to Heroku Workflow usage instruction

### Requirements

- A pre-generated [Heroku App](https://devcenter.heroku.com/articles/creating-apps)
- A Heroku API key. It can be generated under your [Account Settings](https://dashboard.heroku.com/account#api-key)
- Three Heroku config vars:  
  - **DATABASE_URL**: It will be created automatically when the [PostgreSQL add-on](https://elements.heroku.com/addons/heroku-postgresql) is added.
  - **HOST_URL**: if your app name is `acme`, the value of this var is: `acme.herokuapp.com`
  - **SECRET_KEY_BASE**: use the `mix phx.gen.secret` to get a new secret and set it as the value of this var.

### How to use

- Defining two [Github secrets](https://docs.github.com/en/actions/reference/encrypted-secrets) to hold the value of Heroku API key and Heroku app name:
  - HEROKU_API_KEY
  - HEROKU_APP_NAME
- Making some configuration changes to make the app ready for Heroku (read more in the [official documentation](https://hexdocs.pm/phoenix/heroku.html#making-our-project-ready-for-heroku)) that: 
  tell Phoenix to use Heroku URL and enforce the SSL usage. Also, bind to the port requested by Heroku in the `$PORT` environment variable.

  Find the `url` configuration in your `config/prod.exs`:

  ```elixir
  url: [host: "example.com", port: 80],
  ```

  and replace it with this:

  ```elixir
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: System.get_env("HOST_URL"), port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  ```
  
  Enable SSL for production environment by uncomment it in the file `config/prod.secret.exs`:

  ```elixir
  config :gscraper_web, GscraperWeb.Repo,
    ssl: true,
    ...  
  ```

  If you plan on using WebSockets, the timeout for the WebSocket transport needs to be decreased in `lib/hello_web/endpoint.ex`.

  ```elixir
  socket "/socket", HelloWeb.UserSocket,
    websocket: [timeout: 45_000],
    longpoll: false
    ...  
  ```

  otherwise, leaving it set to `false` as default.
