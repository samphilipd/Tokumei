defmodule Tokumei.CloseConnection do
  @moduledoc """
  If we respond to a request with Connection: close, we should send a response
  back with Connection: close and then close it ourselves.

  This works around buggy clients that send Connection: close and never close the
  connection themselves.
  """

  defmacro __using__(_opts) do
    quote do
      @before_compile unquote(__MODULE__)
    end
  end
  defmacro __before_compile__(_env) do
    quote location: :keep do
      defoverridable [handle_request: 2]

      def handle_request(request, env) do
        response = super(request, env)

        response_headers = case request.headers do
          %{"connection" => "close"} ->
            if Enum.member?(response.headers , {"connection", "close"}) do
              response.headers
            else
              [{"connection", "close"} | response.headers]
            end
          _ -> response.headers
        end

        %{response | headers: response_headers}
      end
    end
  end
end
