-module(hello).

-export([start/0]).

start() ->
  spawn(fun() -> loop(0) end).

loop(N) ->
  ok = timer:sleep(10000),
  ok = error_logger:info_msg("Hello~n"),
  loop(N + 1).
