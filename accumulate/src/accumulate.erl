-module(accumulate).
-export([accumulate/2]).

%%
%% given a fun and a list, apply fun to each list item replacing list item with fun's return value.
%%
%% Thank you List Comprehensions!
%% https://learnyousomeerlang.com/starting-out-for-real#list-comprehensions
-spec accumulate(fun((A) -> B), list(A)) -> list(B).
accumulate(_Fn, _List) -> [_Fn(X) || X <- _List].
