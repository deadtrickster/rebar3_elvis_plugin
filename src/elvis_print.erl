-module(elvis_print).

-export([print/2]).

print(#{format := standard}, Result) ->
    elvis_standard_printer:print(Result);
print(#{format := flycheck}, Result) ->
    elvis_flycheck_printer:print(Result);
print(_, Result) ->    
    elvis_standard_printer:print(Result).




