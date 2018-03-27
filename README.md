# ChroxyClient

Chroxy Chrome Server client which is intended to be used in conjunction with
`ChromeRemoteInterface`.

## Installation

```elixir
def deps do
  [
    {:chroxy_client, "~> 0.1.0"}
  ]
end
```

## Usage

### Obtaining RDP WebSocket to Chrome Page

``` elixir
{:ok, ws} = ChroxyClient.session %{host: "localhost", port: 1330}
# ws://localhost:1331/devtools/page/2CD7F0BC05863AB665D1FB95149665AF
```

### Using with `ChromeRemoteInterface`

Establishing a Client Connection
```
# Requests a WebSocket to a Chrome Page
{:ok, pid} = ChroxyClient.page_session %{host: "localhost", port: 1330}
```

Using Remote Debug Protocol Client
```
# via Remote Debug Protocol over WebSocket instruct page to goto url
url = "feg-cl-devel-01.orcs.io/public/documents/525177e7-e5da-489d-9d8b-e50d6e8a3006"
{:ok, res} = ChromeRemoteInterface.RPC.Page.navigate(pid, %{url: url})
```
