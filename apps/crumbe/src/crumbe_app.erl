%%%-------------------------------------------------------------------
%% @doc crumbe public API
%% @end
%%%-------------------------------------------------------------------

-module('crumbe_app').

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    'crumbe_sup':start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
