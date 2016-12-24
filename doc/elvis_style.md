

# Module elvis_style #
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

<a name="types"></a>

## Data Types ##




### <a name="type-empty_rule_config">empty_rule_config()</a> ###


<pre><code>
empty_rule_config() = #{}
</code></pre>




### <a name="type-function_naming_convention_config">function_naming_convention_config()</a> ###


<pre><code>
function_naming_convention_config() = #{regex =&gt; string(), ignore =&gt; [module()]}
</code></pre>




### <a name="type-function_spec">function_spec()</a> ###


<pre><code>
function_spec() = {module(), atom(), non_neg_integer()} | {module(), atom()}
</code></pre>




### <a name="type-god_modules_config">god_modules_config()</a> ###


<pre><code>
god_modules_config() = #{limit =&gt; integer()}
</code></pre>




### <a name="type-invalid_dynamic_call_config">invalid_dynamic_call_config()</a> ###


<pre><code>
invalid_dynamic_call_config() = #{ignore =&gt; [module()]}
</code></pre>




### <a name="type-line_length_config">line_length_config()</a> ###


<pre><code>
line_length_config() = #{limit =&gt; integer(), skip_comments =&gt; false | any | whole_line}
</code></pre>




### <a name="type-max_function_length_config">max_function_length_config()</a> ###


<pre><code>
max_function_length_config() = #{ignore_functions =&gt; [<a href="#type-function_spec">function_spec()</a>], max_length =&gt; non_neg_integer()}
</code></pre>




### <a name="type-max_module_length_config">max_module_length_config()</a> ###


<pre><code>
max_module_length_config() = #{count_comments =&gt; boolean(), count_whitespace =&gt; boolean(), ignore =&gt; [atom()], max_length =&gt; integer()}
</code></pre>




### <a name="type-module_naming_convention_config">module_naming_convention_config()</a> ###


<pre><code>
module_naming_convention_config() = #{regex =&gt; string(), ignore =&gt; [module()]}
</code></pre>




### <a name="type-nesting_level_config">nesting_level_config()</a> ###


<pre><code>
nesting_level_config() = #{level =&gt; integer()}
</code></pre>




### <a name="type-no_debug_call_config">no_debug_call_config()</a> ###


<pre><code>
no_debug_call_config() = #{debug_functions =&gt; [<a href="#type-function_spec">function_spec()</a>], ignore =&gt; [module()]}
</code></pre>




### <a name="type-operator_spaces_config">operator_spaces_config()</a> ###


<pre><code>
operator_spaces_config() = #{rules =&gt; [{right | left, string()}]}
</code></pre>




### <a name="type-variable_naming_convention_config">variable_naming_convention_config()</a> ###


<pre><code>
variable_naming_convention_config() = #{regex =&gt; string(), ignore =&gt; [module()]}
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#dont_repeat_yourself-3">dont_repeat_yourself/3</a></td><td></td></tr><tr><td valign="top"><a href="#function_naming_convention-3">function_naming_convention/3</a></td><td></td></tr><tr><td valign="top"><a href="#god_modules-3">god_modules/3</a></td><td></td></tr><tr><td valign="top"><a href="#invalid_dynamic_call-3">invalid_dynamic_call/3</a></td><td></td></tr><tr><td valign="top"><a href="#line_length-3">line_length/3</a></td><td>Target can be either a filename or the
name of a module.</td></tr><tr><td valign="top"><a href="#macro_module_names-3">macro_module_names/3</a></td><td></td></tr><tr><td valign="top"><a href="#macro_names-3">macro_names/3</a></td><td></td></tr><tr><td valign="top"><a href="#max_function_length-3">max_function_length/3</a></td><td></td></tr><tr><td valign="top"><a href="#max_module_length-3">max_module_length/3</a></td><td></td></tr><tr><td valign="top"><a href="#module_naming_convention-3">module_naming_convention/3</a></td><td></td></tr><tr><td valign="top"><a href="#nesting_level-3">nesting_level/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_behavior_info-3">no_behavior_info/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_debug_call-3">no_debug_call/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_if_expression-3">no_if_expression/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_nested_try_catch-3">no_nested_try_catch/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_seqbind-3">no_seqbind/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_spaces-3">no_spaces/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_spec_with_records-3">no_spec_with_records/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_tabs-3">no_tabs/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_trailing_whitespace-3">no_trailing_whitespace/3</a></td><td></td></tr><tr><td valign="top"><a href="#no_useless_seqbind-3">no_useless_seqbind/3</a></td><td></td></tr><tr><td valign="top"><a href="#operator_spaces-3">operator_spaces/3</a></td><td></td></tr><tr><td valign="top"><a href="#state_record_and_type-3">state_record_and_type/3</a></td><td></td></tr><tr><td valign="top"><a href="#used_ignored_variable-3">used_ignored_variable/3</a></td><td></td></tr><tr><td valign="top"><a href="#variable_naming_convention-3">variable_naming_convention/3</a></td><td></td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="dont_repeat_yourself-3"></a>

### dont_repeat_yourself/3 ###

<pre><code>
dont_repeat_yourself(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="function_naming_convention-3"></a>

### function_naming_convention/3 ###

<pre><code>
function_naming_convention(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-function_naming_convention_config">function_naming_convention_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="god_modules-3"></a>

### god_modules/3 ###

<pre><code>
god_modules(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-god_modules_config">god_modules_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="invalid_dynamic_call-3"></a>

### invalid_dynamic_call/3 ###

<pre><code>
invalid_dynamic_call(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-invalid_dynamic_call_config">invalid_dynamic_call_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="line_length-3"></a>

### line_length/3 ###

<pre><code>
line_length(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-line_length_config">line_length_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

Target can be either a filename or the
name of a module.

<a name="macro_module_names-3"></a>

### macro_module_names/3 ###

<pre><code>
macro_module_names(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="macro_names-3"></a>

### macro_names/3 ###

<pre><code>
macro_names(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="max_function_length-3"></a>

### max_function_length/3 ###

<pre><code>
max_function_length(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-max_function_length_config">max_function_length_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="max_module_length-3"></a>

### max_module_length/3 ###

<pre><code>
max_module_length(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-max_module_length_config">max_module_length_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="module_naming_convention-3"></a>

### module_naming_convention/3 ###

<pre><code>
module_naming_convention(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-module_naming_convention_config">module_naming_convention_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="nesting_level-3"></a>

### nesting_level/3 ###

<pre><code>
nesting_level(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-nesting_level_config">nesting_level_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_behavior_info-3"></a>

### no_behavior_info/3 ###

<pre><code>
no_behavior_info(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_debug_call-3"></a>

### no_debug_call/3 ###

<pre><code>
no_debug_call(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-no_debug_call_config">no_debug_call_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_if_expression-3"></a>

### no_if_expression/3 ###

<pre><code>
no_if_expression(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_nested_try_catch-3"></a>

### no_nested_try_catch/3 ###

<pre><code>
no_nested_try_catch(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_seqbind-3"></a>

### no_seqbind/3 ###

<pre><code>
no_seqbind(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_spaces-3"></a>

### no_spaces/3 ###

<pre><code>
no_spaces(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_spec_with_records-3"></a>

### no_spec_with_records/3 ###

<pre><code>
no_spec_with_records(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_tabs-3"></a>

### no_tabs/3 ###

<pre><code>
no_tabs(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_trailing_whitespace-3"></a>

### no_trailing_whitespace/3 ###

<pre><code>
no_trailing_whitespace(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::#{}) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="no_useless_seqbind-3"></a>

### no_useless_seqbind/3 ###

<pre><code>
no_useless_seqbind(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="operator_spaces-3"></a>

### operator_spaces/3 ###

<pre><code>
operator_spaces(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-operator_spaces_config">operator_spaces_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="state_record_and_type-3"></a>

### state_record_and_type/3 ###

<pre><code>
state_record_and_type(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="used_ignored_variable-3"></a>

### used_ignored_variable/3 ###

<pre><code>
used_ignored_variable(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-empty_rule_config">empty_rule_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

<a name="variable_naming_convention-3"></a>

### variable_naming_convention/3 ###

<pre><code>
variable_naming_convention(Config::<a href="elvis_config.md#type-config">elvis_config:config()</a>, Target::<a href="elvis_file.md#type-file">elvis_file:file()</a>, RuleConfig::<a href="#type-variable_naming_convention_config">variable_naming_convention_config()</a>) -&gt; [<a href="elvis_result.md#type-item">elvis_result:item()</a>]
</code></pre>
<br />

