# Proxies: Network Programming in Gerbil

In this tutorial we illustrate network programming facilities in Gerbil, by writing
a couple of network proxies.

The first one is a transparent TCP proxy, written using low level socket programming
with the `:std/os/socket` package. This packages utilizes raw devices and opens sockets
through FFI, thus providing access to the full POSIX socket programming API.

The second one is a full-blown SOCKS4a proxy, written using the `:std/net/server` package.
This package provides high level network programming facilities using multiplexed
i/o optimized for the operating system of the host. On linux this utilizes `epoll`
and soon `kqueue` on BSD/MacOS, with a fallback implementation of polling using
Gambit's `##wait-for-io!`.

<!-- toc -->

- [Preliminaries](#preliminaries)
- [A Transparent TCP Proxy](#a-transparent-tcp-proxy)
- [A SOCKS4a Proxy](#a-socks4a-proxy)

<!-- tocstop -->

## Preliminaries

## A Transparent TCP Proxy

## A SOCKS4a Proxy
