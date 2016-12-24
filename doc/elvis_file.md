

# Module elvis_file #
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

<a name="types"></a>

## Data Types ##




### <a name="type-file">file()</a> ###


<pre><code>
file() = #{path =&gt; string(), content =&gt; binary(), term() =&gt; term()}
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#filter_files-4">filter_files/4</a></td><td>Filter files based on the glob provided.</td></tr><tr><td valign="top"><a href="#find_files-2">find_files/2</a></td><td>Returns all files under the specified Path
that match the pattern Name.</td></tr><tr><td valign="top"><a href="#load_file_data-2">load_file_data/2</a></td><td>Loads and adds all related file data.</td></tr><tr><td valign="top"><a href="#parse_tree-2">parse_tree/2</a></td><td>Add the root node of the parse tree to the file data.</td></tr><tr><td valign="top"><a href="#path-1">path/1</a></td><td>Given a file() returns its path.</td></tr><tr><td valign="top"><a href="#src-1">src/1</a></td><td>Returns a tuple with the contents of the file and the file itself.</td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="filter_files-4"></a>

### filter_files/4 ###

<pre><code>
filter_files(Files::[<a href="#type-file">file()</a>], Dirs::[string()], Filter::string(), IgnoreList::[string()]) -&gt; [<a href="#type-file">file()</a>]
</code></pre>
<br />

Filter files based on the glob provided.

<a name="find_files-2"></a>

### find_files/2 ###

<pre><code>
find_files(Dirs::[string()], Pattern::string()) -&gt; [<a href="#type-file">file()</a>]
</code></pre>
<br />

Returns all files under the specified Path
that match the pattern Name.

<a name="load_file_data-2"></a>

### load_file_data/2 ###

<pre><code>
load_file_data(Config::#{}, File0::<a href="#type-file">file()</a>) -&gt; <a href="#type-file">file()</a>
</code></pre>
<br />

Loads and adds all related file data.

<a name="parse_tree-2"></a>

### parse_tree/2 ###

<pre><code>
parse_tree(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a> | #{}, File::<a href="#type-file">file()</a>) -&gt; {<a href="ktn_code.md#type-tree_node">ktn_code:tree_node()</a>, <a href="#type-file">file()</a>}
</code></pre>
<br />

Add the root node of the parse tree to the file data.

<a name="path-1"></a>

### path/1 ###

<pre><code>
path(File::<a href="#type-file">file()</a>) -&gt; string()
</code></pre>
<br />

Given a file() returns its path.

<a name="src-1"></a>

### src/1 ###

<pre><code>
src(File::<a href="#type-file">file()</a>) -&gt; {binary(), <a href="#type-file">file()</a>} | {error, enoent}
</code></pre>
<br />

Returns a tuple with the contents of the file and the file itself.

