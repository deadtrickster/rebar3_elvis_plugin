

# Module elvis_result #
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

<a name="types"></a>

## Data Types ##




### <a name="type-elvis_error">elvis_error()</a> ###


<pre><code>
elvis_error() = #{error_msg =&gt; string(), info =&gt; list()}
</code></pre>




### <a name="type-file">file()</a> ###


<pre><code>
file() = #{file =&gt; <a href="elvis_file.md#type-file">elvis_file:file()</a>, rules =&gt; [<a href="#type-rule">rule()</a>]}
</code></pre>




### <a name="type-item">item()</a> ###


<pre><code>
item() = #{message =&gt; string(), info =&gt; iodata(), line_num =&gt; integer()}
</code></pre>




### <a name="type-rule">rule()</a> ###


<pre><code>
rule() = #{name =&gt; atom(), items =&gt; [<a href="#type-item">item()</a>]}
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#clean-1">clean/1</a></td><td>Removes files that don't have any failures.</td></tr><tr><td valign="top"><a href="#get_file-1">get_file/1</a></td><td></td></tr><tr><td valign="top"><a href="#get_info-1">get_info/1</a></td><td></td></tr><tr><td valign="top"><a href="#get_items-1">get_items/1</a></td><td></td></tr><tr><td valign="top"><a href="#get_line_num-1">get_line_num/1</a></td><td></td></tr><tr><td valign="top"><a href="#get_message-1">get_message/1</a></td><td></td></tr><tr><td valign="top"><a href="#get_name-1">get_name/1</a></td><td></td></tr><tr><td valign="top"><a href="#get_rules-1">get_rules/1</a></td><td></td></tr><tr><td valign="top"><a href="#new-3">new/3</a></td><td></td></tr><tr><td valign="top"><a href="#new-4">new/4</a></td><td></td></tr><tr><td valign="top"><a href="#print-1">print/1</a></td><td></td></tr><tr><td valign="top"><a href="#status-1">status/1</a></td><td></td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="clean-1"></a>

### clean/1 ###

<pre><code>
clean(Files::[<a href="#type-file">file()</a> | <a href="#type-rule">rule()</a>]) -&gt; [<a href="#type-file">file()</a> | <a href="#type-rule">rule()</a>]
</code></pre>
<br />

Removes files that don't have any failures.

<a name="get_file-1"></a>

### get_file/1 ###

<pre><code>
get_file(X1::<a href="#type-file">file()</a>) -&gt; <a href="elvis_file.md#type-file">elvis_file:file()</a>
</code></pre>
<br />

<a name="get_info-1"></a>

### get_info/1 ###

<pre><code>
get_info(X1::<a href="#type-item">item()</a>) -&gt; string()
</code></pre>
<br />

<a name="get_items-1"></a>

### get_items/1 ###

<pre><code>
get_items(X1::<a href="#type-rule">rule()</a>) -&gt; [<a href="#type-item">item()</a>]
</code></pre>
<br />

<a name="get_line_num-1"></a>

### get_line_num/1 ###

<pre><code>
get_line_num(X1::<a href="#type-item">item()</a>) -&gt; integer()
</code></pre>
<br />

<a name="get_message-1"></a>

### get_message/1 ###

<pre><code>
get_message(X1::<a href="#type-item">item()</a>) -&gt; string()
</code></pre>
<br />

<a name="get_name-1"></a>

### get_name/1 ###

<pre><code>
get_name(X1::<a href="#type-rule">rule()</a>) -&gt; atom()
</code></pre>
<br />

<a name="get_rules-1"></a>

### get_rules/1 ###

<pre><code>
get_rules(X1::<a href="#type-file">file()</a>) -&gt; [<a href="#type-rule">rule()</a>]
</code></pre>
<br />

<a name="new-3"></a>

### new/3 ###

<pre><code>
new(X1::item, Msg::string(), Info::[term()]) -&gt; <a href="#type-item">item()</a>
</code></pre>
<br />

<a name="new-4"></a>

### new/4 ###

<pre><code>
new(X1::item, Msg::string(), Info::[term()], LineNum::integer()) -&gt; <a href="#type-item">item()</a>
</code></pre>
<br />

<a name="print-1"></a>

### print/1 ###

<pre><code>
print(Results::<a href="#type-item">item()</a> | <a href="#type-rule">rule()</a> | <a href="#type-elvis_error">elvis_error()</a> | [<a href="#type-file">file()</a>]) -&gt; ok
</code></pre>
<br />

<a name="status-1"></a>

### status/1 ###

<pre><code>
status(Files::[<a href="#type-file">file()</a> | <a href="#type-rule">rule()</a>]) -&gt; ok | fail
</code></pre>
<br />

