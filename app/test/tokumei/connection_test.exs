defmodule Tokumei.ConnectionTest do
  use ExUnit.Case

  alias Raxx.Response
  alias Raxx.Request

  use Tokumei.Connection

  def handle_request(%{method: :GET}, _), do: Response.ok("GET")

  test "sends back connection: close if that was received" do
    response = Request.get("/", nil, [{"connection", "close"}]) |> handle_request(:config)

    assert [{"connection", "close"}] == response.headers
  end

  test "does not send back connection: close if not received" do
    response = Request.get("/", nil, []) |> handle_request(:config)

    assert [] == response.headers
  end
end
