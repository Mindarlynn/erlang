%%%-------------------------------------------------------------------
%%% @author yegukwon
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. 6월 2023 13:08
%%%-------------------------------------------------------------------
-module(main).
-author("yegukwon").

%% API
-export([qsort/1, area/1]).

qsort([]) -> [];
qsort([X|Xs]) ->
  qsort([Y || Y <-Xs, Y =< X]) ++ [X] ++ qsort([Y || Y <- Xs, Y > X]).


%% 여기서 {square, Side}라는 tuple이 인자로 들어오게 되는데
%% square는 Atom이라고 부른다
%% (소문자로 시작하는 word는 atom, 대문자는 bounded identifier (immutable variable))
area({square, Side}) -> {ok, Side * Side};

area({circle, Radius}) -> {ok, math:pi() * Radius * Radius};

area({_, _}) -> {error, 0}.

