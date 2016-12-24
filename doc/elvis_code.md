

# Module elvis_code #
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

<a name="types"></a>

## Data Types ##




### <a name="type-find_options">find_options()</a> ###


<pre><code>
find_options() = #{mode =&gt; node | zipper, traverse =&gt; content | all}
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#code_zipper-1">code_zipper/1</a></td><td></td></tr><tr><td valign="top"><a href="#code_zipper-2">code_zipper/2</a></td><td></td></tr><tr><td valign="top"><a href="#exported_functions-1">exported_functions/1</a></td><td>Takes the root node of a parse_tree and returns name and arity
of each exported function.</td></tr><tr><td valign="top"><a href="#find-2">find/2</a></td><td>Same as calling find/3 with <code>#{mode => node, traverse => content}</code> as
the options map.</td></tr><tr><td valign="top"><a href="#find-3">find/3</a></td><td>Find all nodes in the tree for which the predicate function returns
<code>true</code>.</td></tr><tr><td valign="top"><a href="#find_by_location-2">find_by_location/2</a></td><td></td></tr><tr><td valign="top"><a href="#find_token-2">find_token/2</a></td><td></td></tr><tr><td valign="top"><a href="#function_names-1">function_names/1</a></td><td>Takes the root node of a parse_tree and returns the name
of each function, whether exported or not.</td></tr><tr><td valign="top"><a href="#module_name-1">module_name/1</a></td><td>Takes the root node and returns the module's name.</td></tr><tr><td valign="top"><a href="#past_nesting_limit-2">past_nesting_limit/2</a></td><td>Takes a node and returns all nodes where the nesting limit is exceeded.</td></tr><tr><td valign="top"><a href="#print_node-1">print_node/1</a></td><td>Debugging utility function.</td></tr><tr><td valign="top"><a href="#print_node-2">print_node/2</a></td><td></td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="code_zipper-1"></a>

### code_zipper/1 ###

<pre><code>
code_zipper(Root::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>) -&gt; <a href="zipper.md#type-zipper">zipper:zipper()</a>
</code></pre>
<br />

<a name="code_zipper-2"></a>

### code_zipper/2 ###

<pre><code>
code_zipper(Root::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>, Mode::content | all) -&gt; <a href="zipper.md#type-zipper">zipper:zipper()</a>
</code></pre>
<br />

<a name="exported_functions-1"></a>

### exported_functions/1 ###

<pre><code>
exported_functions(X1::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>) -&gt; [{atom(), integer()}]
</code></pre>
<br />

Takes the root node of a parse_tree and returns name and arity
of each exported function.

<a name="find-2"></a>

### find/2 ###

<pre><code>
find(Pred::fun((<a href="zipper.md#type-zipper">zipper:zipper()</a>) -&gt; boolean()), Root::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>) -&gt; [<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>]
</code></pre>
<br />

Same as calling find/3 with `#{mode => node, traverse => content}` as
the options map.

<a name="find-3"></a>

### find/3 ###

<pre><code>
find(Pred::fun((<a href="zipper.md#type-zipper">zipper:zipper()</a>) -&gt; boolean()), Root::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>, Opts::<a href="#type-find_options">find_options()</a>) -&gt; [<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>]
</code></pre>
<br />

Find all nodes in the tree for which the predicate function returns
`true`. The options map has two keys:

* - `mode`: when the value `node` is specified the predicate function
receives a tree_node() as its argument. When `zipper` is specified
the argument is the zipper location for the current node.

* - `traverse`: the value `content` indicates to only take into account
nodes in the parent-child hierarchy. When `all` is provided the
nodes held in the `node_attrs` map are also taken into account in
the search.


<a name="find_by_location-2"></a>

### find_by_location/2 ###

<pre><code>
find_by_location(Root::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>, Location::{integer(), integer()}) -&gt; not_found | {ok, <a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>}
</code></pre>
<br />

<a name="find_token-2"></a>

### find_token/2 ###

<pre><code>
find_token(Root::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>, Location::{integer(), integer()}) -&gt; not_found | {ok, #{}}
</code></pre>
<br />

<a name="function_names-1"></a>

### function_names/1 ###

<pre><code>
function_names(X1::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>) -&gt; [atom()]
</code></pre>
<br />

Takes the root node of a parse_tree and returns the name
of each function, whether exported or not.

<a name="module_name-1"></a>

### module_name/1 ###

<pre><code>
module_name(X1::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>) -&gt; atom()
</code></pre>
<br />

Takes the root node and returns the module's name.

<a name="past_nesting_limit-2"></a>

### past_nesting_limit/2 ###

<pre><code>
past_nesting_limit(Node::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>, MaxLevel::integer()) -&gt; [{<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>, integer()}]
</code></pre>
<br />

Takes a node and returns all nodes where the nesting limit is exceeded.

<a name="print_node-1"></a>

### print_node/1 ###

<pre><code>
print_node(Node::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>) -&gt; ok
</code></pre>
<br />

Debugging utility function.

<a name="print_node-2"></a>

### print_node/2 ###

<pre><code>
print_node(Node::<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>, CurrentLevel::integer()) -&gt; ok
</code></pre>
<br />

