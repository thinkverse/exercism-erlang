-module(leap).

-export([leap_year/1]).

% https://learnyousomeerlang.com/types-or-lack-thereof#for-type-junkies
% https://www.erlang.org/doc/reference_manual/typespec.html
% type bool() is now called boolean(); please use the new name instead.
-spec leap_year(non_neg_integer()) -> boolean().
leap_year(_Year) when _Year rem 400 =:= 0 -> true;
leap_year(_Year) when _Year rem 100 =:= 0 -> false;
leap_year(_Year) when _Year rem 4 =:= 0 -> true;
leap_year(_) -> false.
