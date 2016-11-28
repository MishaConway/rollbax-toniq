# RollbaxToniq

Integrates Rollbax with Toniq so that it logs any worker exceptions to rollbar.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `rollbax_toniq` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:rollbax_toniq, "~> 0.1.0"}]
    end
    ```

  2. Ensure `rollbax_toniq` is started before your application:

    ```elixir
    def application do
      [applications: [:rollbax_toniq]]
    end
    ```

    ## Configuration

    Add it to your `Toniq Jobs` by including it and renaming your perform function to perform_x like below:

    ```elixir
    defmodule Jobs.DoSomething do
      use Toniq.Worker, max_concurrency: 10
      use RollbaxToniq

      def perform_ex(thing_id: thing_id) do
        # do stuff...
      end
    end
    ```
