-module(chrono_ffi).

-export([date_now/0, datetime_now/0]).

date_now() -> erlang:date().

datetime_now() -> erlang:localtime().