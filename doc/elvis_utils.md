

# Module elvis_utils #
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

<a name="types"></a>

## Data Types ##




### <a name="type-file">file()</a> ###


<pre><code>
file() = #{path =&gt; string(), content =&gt; binary()}
</code></pre>




### <a name="type-line_content">line_content()</a> ###


<pre><code>
line_content() = {integer(), integer()}
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#check_lines-3">check_lines/3</a></td><td>Takes a binary that holds source code and applies
Fun to each line.</td></tr><tr><td valign="top"><a href="#check_lines_with_context-4">check_lines_with_context/4</a></td><td>Checks each line calling fun and providing the previous and next
lines based on the context tuple {Before, After}.</td></tr><tr><td valign="top"><a href="#check_nodes-3">check_nodes/3</a></td><td>Takes a binary that holds source code and applies
Fun to each line.</td></tr><tr><td valign="top"><a href="#erlang_halt-1">erlang_halt/1</a></td><td>This is defined so that it can be mocked for tests.</td></tr><tr><td valign="top"><a href="#error_prn-1">error_prn/1</a></td><td></td></tr><tr><td valign="top"><a href="#error_prn-2">error_prn/2</a></td><td></td></tr><tr><td valign="top"><a href="#indentation-3">indentation/3</a></td><td>Takes a line, a character and a count, returning the indentation level
invalid if the number of character is not a multiple of count.</td></tr><tr><td valign="top"><a href="#info-1">info/1</a></td><td></td></tr><tr><td valign="top"><a href="#info-2">info/2</a></td><td></td></tr><tr><td valign="top"><a href="#notice-1">notice/1</a></td><td></td></tr><tr><td valign="top"><a href="#notice-2">notice/2</a></td><td></td></tr><tr><td valign="top"><a href="#parse_colors-1">parse_colors/1</a></td><td></td></tr><tr><td valign="top"><a href="#to_str-1">to_str/1</a></td><td></td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="check_lines-3"></a>

### check_lines/3 ###

<pre><code>
check_lines(Src::binary(), Fun::function(), Args::term()) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

Takes a binary that holds source code and applies
Fun to each line. Fun takes 3 arguments (the line
as a binary, the line number and the supplied Args) and
returns 'no_result' or {'ok', Result}.

<a name="check_lines_with_context-4"></a>

### check_lines_with_context/4 ###

<pre><code>
check_lines_with_context(Src::binary(), Fun::function(), Args::term(), Ctx::<a href="#type-line_content">line_content()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

Checks each line calling fun and providing the previous and next
lines based on the context tuple {Before, After}.

<a name="check_nodes-3"></a>

### check_nodes/3 ###

<pre><code>
check_nodes(RootNode::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>, Fun::function(), Args::[term()]) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

Takes a binary that holds source code and applies
Fun to each line. Fun takes 3 arguments (the line
as a binary, the line number and the supplied Args) and
returns 'no_result' or {'ok', Result}.

<a name="erlang_halt-1"></a>

### erlang_halt/1 ###

<pre><code>
erlang_halt(Code::integer()) -&gt; no_return()
</code></pre>
<br />

This is defined so that it can be mocked for tests.

<a name="error_prn-1"></a>

### error_prn/1 ###

<pre><code>
error_prn(Message::string()) -&gt; ok
</code></pre>
<br />

<a name="error_prn-2"></a>

### error_prn/2 ###

<pre><code>
error_prn(Message::string(), Args::[term()]) -&gt; ok
</code></pre>
<br />

<a name="indentation-3"></a>

### indentation/3 ###

<pre><code>
indentation(Line::binary() | string(), Char::char(), Count::integer()) -&gt; invalid | integer()
</code></pre>
<br />

Takes a line, a character and a count, returning the indentation level
invalid if the number of character is not a multiple of count.

<a name="info-1"></a>

### info/1 ###

<pre><code>
info(Message::string()) -&gt; ok
</code></pre>
<br />

<a name="info-2"></a>

### info/2 ###

<pre><code>
info(Message::string(), Args::[term()]) -&gt; ok
</code></pre>
<br />

<a name="notice-1"></a>

### notice/1 ###

<pre><code>
notice(Message::string()) -&gt; ok
</code></pre>
<br />

<a name="notice-2"></a>

### notice/2 ###

<pre><code>
notice(Message::string(), Args::[term()]) -&gt; ok
</code></pre>
<br />

<a name="parse_colors-1"></a>

### parse_colors/1 ###

<pre><code>
parse_colors(Message::string()) -&gt; string()
</code></pre>
<br />

<a name="to_str-1"></a>

### to_str/1 ###

<pre><code>
to_str(Arg::binary() | list() | atom() | integer()) -&gt; string()
</code></pre>
<br />

