defmodule RollbaxToniq do
  defmacro __using__(_opts) do
    quote do
      def perform(args) do
        try do
          perform_ex args
        rescue
          exception ->
            Rollbax.report(:error, exception, System.stacktrace(), %{}, %{"payload" => :i.i(args)})
            throw exception
        end
      end
    end
  end
end
