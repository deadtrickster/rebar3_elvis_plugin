-module(rebar3_elvis_plugin).

-export([init/1,
         do/1,
         format_error/1]).

-define(PROVIDER, elvis).
-define(DEPS, [compile]).

%% ===================================================================
%% Public API
%% ===================================================================

-spec init(rebar_state:t()) -> {ok, rebar_state:t()}.
init(State) ->
    Provider = providers:create([{name, ?PROVIDER},
                                 {module, ?MODULE},
                                 {deps, ?DEPS},
                                 {bare, true},
                                 {example, "rebar3 elvis"},
                                 {short_desc, short_desc()},
                                 {desc, desc()}]),
    State1 = rebar_state:add_provider(State, Provider),
    {ok, State1}.

-spec do(rebar_state:t()) -> {ok, rebar_state:t()} | {error, string()}.
do(State) ->
    Config = rebar_state:get(State, elvis, elvis_config:default()),
    rebar_api:debug("Elvis configuration: ~p", [Config]),
    try elvis_core:rock(Config) of
        ok -> {ok, State};
        {fail, Files} -> {error, {?MODULE, {rules, Files}}}
    catch
        throw:{invalid_config, ICReason} ->
            {error, {?MODULE, {invalid_config, ICReason}}}
    end.

-spec format_error({kind, any()}) -> iolist().
format_error({invalid_config, {missing_dirs, Group}}) ->
    rebar_api:debug("Elvis config error group: ~p", [Group]),
    io_lib:format("Elvis config is invalid: missing 'dirs' key.", []);
format_error({invalid_config, {missing_filter, Group}}) ->
    rebar_api:debug("Group: ~p", [Group]),
    io_lib:format("Elvis config is invalid: missing 'filter' key.", []);
format_error({invalid_config, {missing_rules, Group}}) ->
    rebar_api:debug("Group: ~p", [Group]),
    io_lib:format("Elvis config is invalid: missing 'rules' key.", []);
format_error({rules, _Reason}) ->
    io_lib:format("You disappointed Elvis. Not good.", []).

%% ===================================================================
%% Internal functions
%% ===================================================================

short_desc() ->
    "Run Elvis, the Erlang style reviewer.".

desc() ->
    io_lib:format(
      "~s~n"
      "~n"
      "Valid elvis options:~n"
      "  ~p~n",
      [short_desc(),
       "https://github.com/inaka/elvis_core/wiki/Rules"
      ]).
