# ChroxyClient

Chroxy Chrome Server client for [Chroxy](https://github.com/holsee/chroxy_client) which is intended to
be used in conjunction with `ChromeRemoteInterface`.

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
{:ok, ws} = ChroxyClient.session! %{host: "localhost", port: 1330}
# ws://localhost:1331/devtools/page/2CD7F0BC05863AB665D1FB95149665AF
```

### Using with `ChromeRemoteInterface`

Establishing a Client Connection
``` elixir
# Requests a WebSocket to a Chrome Page
{:ok, pid} = ChroxyClient.page_session! %{host: "localhost", port: 1330}
```

Using Remote Debug Protocol Client
``` elixir
# via Remote Debug Protocol over WebSocket instruct page to goto url
url = "https://github.com/holsee"
{:ok, res} = ChromeRemoteInterface.RPC.Page.navigate(pid, %{url: url})
```
