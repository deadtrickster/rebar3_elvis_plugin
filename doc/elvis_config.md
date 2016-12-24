

# Module elvis_config #
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

<a name="types"></a>

## Data Types ##




### <a name="type-config">config()</a> ###


<pre><code>
config() = [#{}]
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#apply_to_files-2">apply_to_files/2</a></td><td>Takes a function and configuration and applies the function to all
file in the configuration.</td></tr><tr><td valign="top"><a href="#default-0">default/0</a></td><td></td></tr><tr><td valign="top"><a href="#dirs-1">dirs/1</a></td><td></td></tr><tr><td valign="top"><a href="#files-1">files/1</a></td><td></td></tr><tr><td valign="top"><a href="#filter-1">filter/1</a></td><td></td></tr><tr><td valign="top"><a href="#ignore-1">ignore/1</a></td><td></td></tr><tr><td valign="top"><a href="#load-1">load/1</a></td><td></td></tr><tr><td valign="top"><a href="#load_file-1">load_file/1</a></td><td></td></tr><tr><td valign="top"><a href="#normalize-1">normalize/1</a></td><td></td></tr><tr><td valign="top"><a href="#resolve_files-1">resolve_files/1</a></td><td>Takes a configuration and finds all files according to its 'dirs'
end  'filter' key, or if not specified uses '*.erl'.</td></tr><tr><td valign="top"><a href="#resolve_files-2">resolve_files/2</a></td><td>Takes a configuration and a list of files, filtering some
of them according to the 'filter' key, or if not specified
uses '*.erl'.</td></tr><tr><td valign="top"><a href="#rules-1">rules/1</a></td><td></td></tr><tr><td valign="top"><a href="#validate-1">validate/1</a></td><td></td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="apply_to_files-2"></a>

### apply_to_files/2 ###

<pre><code>
apply_to_files(Fun::function(), Config::<a href="#type-config">config()</a> | #{}) -&gt; <a href="#type-config">config()</a> | #{}
</code></pre>
<br />

Takes a function and configuration and applies the function to all
file in the configuration.

<a name="default-0"></a>

### default/0 ###

<pre><code>
default() -&gt; <a href="#type-config">config()</a>
</code></pre>
<br />

<a name="dirs-1"></a>

### dirs/1 ###

<pre><code>
dirs(Config::<a href="#type-config">config()</a> | #{}) -&gt; [string()]
</code></pre>
<br />

<a name="files-1"></a>

### files/1 ###

<pre><code>
files(RuleGroup::<a href="#type-config">config()</a> | #{}) -&gt; [<a href="elvis_file.md#type-file">elvis_file:file()</a>] | undefined
</code></pre>
<br />

<a name="filter-1"></a>

### filter/1 ###

<pre><code>
filter(Config::<a href="#type-config">config()</a> | #{}) -&gt; [string()]
</code></pre>
<br />

<a name="ignore-1"></a>

### ignore/1 ###

<pre><code>
ignore(Config::<a href="#type-config">config()</a> | #{}) -&gt; [string()]
</code></pre>
<br />

<a name="load-1"></a>

### load/1 ###

<pre><code>
load(AppConfig::term()) -&gt; <a href="#type-config">config()</a>
</code></pre>
<br />

<a name="load_file-1"></a>

### load_file/1 ###

<pre><code>
load_file(Path::string()) -&gt; <a href="#type-config">config()</a>
</code></pre>
<br />

<a name="normalize-1"></a>

### normalize/1 ###

<pre><code>
normalize(Config::<a href="#type-config">config()</a>) -&gt; <a href="#type-config">config()</a>
</code></pre>
<br />

<a name="resolve_files-1"></a>

### resolve_files/1 ###

<pre><code>
resolve_files(RuleGroup::#{}) -&gt; #{}
</code></pre>
<br />

Takes a configuration and finds all files according to its 'dirs'
end  'filter' key, or if not specified uses '*.erl'.

<a name="resolve_files-2"></a>

### resolve_files/2 ###

<pre><code>
resolve_files(Config::<a href="#type-config">config()</a> | #{}, Files::[<a href="elvis_file.md#type-file">elvis_file:file()</a>]) -&gt; <a href="#type-config">config()</a> | #{}
</code></pre>
<br />

Takes a configuration and a list of files, filtering some
of them according to the 'filter' key, or if not specified
uses '*.erl'.

<a name="rules-1"></a>

### rules/1 ###

<pre><code>
rules(Rules::<a href="#type-config">config()</a> | #{}) -&gt; [string()] | undefined
</code></pre>
<br />

<a name="validate-1"></a>

### validate/1 ###

<pre><code>
validate(Config::<a href="#type-config">config()</a>) -&gt; ok
</code></pre>
<br />

