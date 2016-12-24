

# Module elvis_core #
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

<a name="types"></a>

## Data Types ##




### <a name="type-source_filename">source_filename()</a> ###


<pre><code>
source_filename() = nonempty_string()
</code></pre>




### <a name="type-target">target()</a> ###


<pre><code>
target() = <a href="#type-source_filename">source_filename()</a> | module()
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#rock-0">rock/0</a></td><td></td></tr><tr><td valign="top"><a href="#rock-1">rock/1</a></td><td></td></tr><tr><td valign="top"><a href="#rock_this-1">rock_this/1</a></td><td></td></tr><tr><td valign="top"><a href="#rock_this-2">rock_this/2</a></td><td></td></tr><tr><td valign="top"><a href="#start-0">start/0</a></td><td>Used when starting the application on the shell.</td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="rock-0"></a>

### rock/0 ###

<pre><code>
rock() -&gt; ok | {fail, [<a href="elvis_result.md#type-file">elvis_result:file()</a>]}
</code></pre>
<br />

<a name="rock-1"></a>

### rock/1 ###

<pre><code>
rock(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>) -&gt; ok | {fail, [<a href="elvis_result.md#type-file">elvis_result:file()</a>]}
</code></pre>
<br />

<a name="rock_this-1"></a>

### rock_this/1 ###

<pre><code>
rock_this(Target::<a href="#type-target">target()</a>) -&gt; ok | {fail, <a href="elvis_result.md#type-file">elvis_result:file()</a>}
</code></pre>
<br />

<a name="rock_this-2"></a>

### rock_this/2 ###

<pre><code>
rock_this(Module::<a href="#type-target">target()</a>, Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>) -&gt; ok | {fail, <a href="elvis_result.md#type-file">elvis_result:file()</a>}
</code></pre>
<br />

<a name="start-0"></a>

### start/0 ###

<pre><code>
start() -&gt; ok
</code></pre>
<br />

Used when starting the application on the shell.

