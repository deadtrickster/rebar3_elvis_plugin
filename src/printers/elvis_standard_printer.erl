-module(elvis_standard_printer).

-export([print/1]).

%% Print

-spec print(elvis_result:item() |
            elvis_result:rule() |
            elvis_result:elvis_error() |
            [elvis_result:file()]) -> ok.
print([]) ->
    ok;
print([Result | Results]) ->
    print(Result),
    print(Results);
%% File
print(#{file := File, rules := Rules}) ->
    Path = elvis_file:path(File),
    Status = case elvis_result:status(Rules) of
                 ok -> "{{green-bold}}OK";
                 fail -> "{{red-bold}}FAIL"
             end,

    notice("# ~s [~s{{white-bold}}]", [Path, Status]),
    print(Rules);
%% Rule
print(#{items := []}) ->
    ok;
print(#{name := Name, items := Items}) ->
    notice("  - ~s", [atom_to_list(Name)]),
    print(Items);
%% Item
print(#{message := Msg, info := Info}) ->
    elvis_utils:notice("    - " ++ Msg, Info);
%% Error
print(#{error_msg := Msg, info := Info}) ->
    error_prn(Msg, Info).


-spec notice(string(), [term()]) -> ok.
notice(Message, Args) ->
    ColoredMessage = "{{white-bold}}" ++ Message ++ "{{reset}}~n",
    elvis_utils:print(ColoredMessage, Args).

-spec error_prn(string(), [term()]) -> ok.
error_prn(Message, Args) ->
    ColoredMessage = "{{red}}Error: {{reset}}" ++ Message ++ "{{reset}}~n",
    elvis_utils:print(ColoredMessage, Args).
