-module(collatz_conjecture).

-export([steps/1]).

% https://learnyousomeerlang.com/errors-and-exceptions#raising-exceptions
%
% Did have to look up the example for this part, didn't know I had to
% raise an exception given the argument was a negative integer.
steps(_N) when _N =< 0 -> erlang:error(badarg);
steps(_N)  -> steps(_N, 0).

% https://learnyousomeerlang.com/recursion
steps(1, Acc) -> Acc;
steps(_N, Acc) when _N rem 2 =:= 0 -> steps(_N div 2, Acc + 1);
steps(_N, Acc) -> steps(_N * 3 +1, Acc + 1).
