

# Module elvis_project #
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

<a name="types"></a>

## Data Types ##




### <a name="type-empty_rule_config">empty_rule_config()</a> ###


<pre><code>
empty_rule_config() = #{}
</code></pre>




### <a name="type-no_deps_master_erlang_mk_config">no_deps_master_erlang_mk_config()</a> ###


<pre><code>
no_deps_master_erlang_mk_config() = #{ignore =&gt; [module()]}
</code></pre>




### <a name="type-no_deps_master_rebar_config">no_deps_master_rebar_config()</a> ###


<pre><code>
no_deps_master_rebar_config() = #{ignore =&gt; [module()]}
</code></pre>




### <a name="type-protocol_for_deps_erlang_mk_config">protocol_for_deps_erlang_mk_config()</a> ###


<pre><code>
protocol_for_deps_erlang_mk_config() = #{ignore =&gt; [module()]}
</code></pre>




### <a name="type-protocol_for_deps_rebar_config">protocol_for_deps_rebar_config()</a> ###


<pre><code>
protocol_for_deps_rebar_config() = #{ignore =&gt; [module()]}
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#git_for_deps_erlang_mk-3">git_for_deps_erlang_mk/3</a></td><td></td></tr><tr><td valign="top"><a href="#git_for_deps_rebar-3">git_for_deps_rebar/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_deps_master_erlang_mk-3">no_deps_master_erlang_mk/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_deps_master_rebar-3">no_deps_master_rebar/3</a></td><td></td></tr><tr><td valign="top"><a href="#old_configuration_format-3">old_configuration_format/3</a></td><td></td></tr><tr><td valign="top"><a href="#protocol_for_deps_erlang_mk-3">protocol_for_deps_erlang_mk/3</a></td><td></td></tr><tr><td valign="top"><a href="#protocol_for_deps_rebar-3">protocol_for_deps_rebar/3</a></td><td></td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="git_for_deps_erlang_mk-3"></a>

### git_for_deps_erlang_mk/3 ###

<pre><code>
git_for_deps_erlang_mk(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-protocol_for_deps_erlang_mk_config">protocol_for_deps_erlang_mk_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="git_for_deps_rebar-3"></a>

### git_for_deps_rebar/3 ###

<pre><code>
git_for_deps_rebar(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-protocol_for_deps_rebar_config">protocol_for_deps_rebar_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_deps_master_erlang_mk-3"></a>

### no_deps_master_erlang_mk/3 ###

<pre><code>
no_deps_master_erlang_mk(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-no_deps_master_erlang_mk_config">no_deps_master_erlang_mk_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_deps_master_rebar-3"></a>

### no_deps_master_rebar/3 ###

<pre><code>
no_deps_master_rebar(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-no_deps_master_rebar_config">no_deps_master_rebar_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="old_configuration_format-3"></a>

### old_configuration_format/3 ###

<pre><code>
old_configuration_format(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="protocol_for_deps_erlang_mk-3"></a>

### protocol_for_deps_erlang_mk/3 ###

<pre><code>
protocol_for_deps_erlang_mk(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-protocol_for_deps_erlang_mk_config">protocol_for_deps_erlang_mk_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="protocol_for_deps_rebar-3"></a>

### protocol_for_deps_rebar/3 ###

<pre><code>
protocol_for_deps_rebar(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-protocol_for_deps_rebar_config">protocol_for_deps_rebar_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

