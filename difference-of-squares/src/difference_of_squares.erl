-module(difference_of_squares).

-export([difference_of_squares/1, square_of_sum/1, sum_of_squares/1]).


difference_of_squares(_Number) ->
  square_of_sum(_Number) - sum_of_squares(_Number).

square_of_sum(_Number) ->
  power_of(lists:sum(sequence_of_ints(_Number)), 2).

sum_of_squares(_Number) -> 
  lists:sum([power_of(N, 2) || N <- sequence_of_ints(_Number)]).

sequence_of_ints(From) ->
  lists:seq(0, From).

power_of(X, Y) ->
  % Had do look up example to figure out int from float.
  erlang:trunc(math:pow(X, Y)).
