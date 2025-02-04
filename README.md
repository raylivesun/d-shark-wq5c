<div class="hyphenate" id="content">        
<div id="tools"><div>	<div class="tip smallprint">		<a href="https://issues.dlang.org/enter_bug.cgi?bug_file_loc=http%3A%2F%2Fdlang.org/&amp;component=dlang.org&amp;op_sys=All&amp;priority=P3&amp;product=D&amp;rep_platform=All&amp;short_desc=%5BTypes%5D&amp;version=D2&amp;bug_severity=enhancement">Report a bug</a>
		<div>			If you spot a problem with this page, click here to create a Bugzilla issue.
		</div>
	</div>
	<div class="tip smallprint">		<a href="https://github.com/dlang/dlang.org/edit/master/spec/type.dd">Improve this page</a>
		<div>			Quickly fork, edit online, and submit a pull request for this page.
			Requires a signed-in GitHub account. This works well for small changes.
			If you'd like to make larger changes you may want to consider using
			a local clone.
		</div>
	</div>
</div></div>
        <h1>Types</h1><div class="version-changer-container fa-select"><select id="version-changer"><option value="0" selected="">master</option><option value="1">2.109</option><option value="2">2.108</option><option value="3">2.107</option><option value="4">2.106</option><option value="5">2.105</option><option value="6">2.104</option><option value="7">2.103</option><option value="8">2.102</option><option value="9">2.101</option><option value="10">2.100</option><option value="11">2.099</option><option value="12">2.098</option><option value="13">2.097</option><option value="14">2.096</option><option value="15">2.095</option><option value="16">2.094</option><option value="17">2.093</option><option value="18">2.092</option><option value="19">2.091</option><option value="20">2.090</option><option value="21">2.089</option><option value="22">2.088</option><option value="23">2.087</option><option value="24">2.086</option><option value="25">2.085</option><option value="26">2.084</option><option value="27">2.083</option><option value="28">2.082</option><option value="29">2.081</option><option value="30">2.080</option><option value="31">2.079</option><option value="32">2.078</option><option value="33">2.077</option><option value="34">2.076</option><option value="35">2.075</option><option value="36">2.074</option><option value="37">2.073</option><option value="38">2.072</option><option value="39">2.071</option><option value="40">2.070</option><option value="41">2.069</option><option value="42">2.068</option><option value="43">2.067</option><option value="44">2.066</option></select></div>
        
<style>    body { counter-reset: h1 7; counter-increment: h1 -1; }
    h1 { counter-reset: h2 h3 p; }
    h2 { counter-reset: h3 h4 p; }
    h3 { counter-reset: h4 p; }
    h4 { counter-reset: p; }
    h1::before {
        counter-increment: h1;
        content: counter(h1) ". ";
    }
    .hyphenate h2::before {
        counter-increment: h2;
        content: counter(h1) "." counter(h2) " ";
    }
    h3::before {
        counter-increment: h3;
        content: counter(h1) "." counter(h2) "." counter(h3) " ";
    }
    h4::before {
        counter-increment: h4;
        content: counter(h1) "." counter(h2) "." counter(h3) "." counter(h4) " ";
    }
    p::before, .spec-boxes::before {
        counter-increment: p;
        content: counter(p) ". ";
    }
    h1::before, h2::before, h3::before, h4::before, p::before, .spec-boxes::before
    {
        color: #999;
        font-size: 80%;
        margin-right: 0.25em;
    }
</style>
        <div class="blankline"></div>
<div class="blankline"></div>
<div class="blankline"></div>
<div class="page-contents quickindex">    <div class="page-contents-header">        <b>Contents</b>
    <span><a href="javascript:void(0);">[hide]</a></span></div>
    <ol>    <li><a href="#grammar">Grammar</a></li>
    <li><a href="#basic-data-types">Basic Data Types</a></li>
    <li><a href="#derived-data-types">Derived Data Types</a><ol>        <li><a href="#pointers">Pointers</a></li>
    </ol></li>
    <li><a href="#user-defined-types">User-Defined Types</a></li>
    <li><a href="#type-conversions">Type Conversions</a><ol>        <li><a href="#pointer-conversions">Pointer Conversions</a></li>
        <li><a href="#implicit-conversions">Implicit Conversions</a></li>
        <li><a href="#integer-promotions">Integer Promotions</a></li>
        <li><a href="#usual-arithmetic-conversions">Usual Arithmetic Conversions</a></li>
        <li><a href="#integer-conversions">Integer Type Conversions</a></li>
        <li><a href="#floating-point-conversions">Floating Point Type Conversions</a></li>
        <li><a href="#vrp">Value Range Propagation</a></li>
    </ol></li>
    <li><a href="#bool"><span class="d_inlinecode donthyphenate notranslate">bool</span></a></li>
    <li><a href="#functions">Function Types</a><ol>        <li><a href="#delegates">Delegates</a></li>
    </ol></li>
    <li><a href="#typeof"><span class="d_inlinecode donthyphenate notranslate">typeof</span></a></li>
    <li><a href="#mixin_types">Mixin Types</a></li>
    <li><a href="#aliased-types">Aliased Types</a><ol>        <li><a href="#size_t"><span class="d_inlinecode donthyphenate notranslate">size_t</span></a></li>
        <li><a href="#ptrdiff_t"><span class="d_inlinecode donthyphenate notranslate">ptrdiff_t</span></a></li>
        <li><a href="#string"><span class="d_inlinecode donthyphenate notranslate">string</span></a></li>
        <li><a href="#noreturn"><span class="d_inlinecode donthyphenate notranslate">noreturn</span></a></li>
    </ol></li>
</ol>
</div>
<div class="blankline"></div>
<h2><a class="anchor" title="Permalink to this section" id="grammar" href="#grammar">Grammar</a></h2>
<div class="blankline"></div>
    <p>D is statically typed. Every expression has a type. Types constrain the values
    an expression can hold, and determine the semantics of operations on those values.
    </p>
<div class="blankline"></div>
<pre class="bnf notranslate"><a id="Type"><span class="gname">Type</span></a>:
    <a href="#TypeCtors"><i>TypeCtors</i></a><sub>opt</sub> <a href="#BasicType"><i>BasicType</i></a> <a href="#TypeSuffixes"><i>TypeSuffixes</i></a><sub>opt</sub>
<div class="blankline"></div>
<a id="TypeCtors"><span class="gname">TypeCtors</span></a>:
    <a href="#TypeCtor"><i>TypeCtor</i></a>
    <a href="#TypeCtor"><i>TypeCtor</i></a> <i>TypeCtors</i>
<div class="blankline"></div>
<a id="TypeCtor"><span class="gname">TypeCtor</span></a>:
    <span class="d_inlinecode donthyphenate notranslate">const</span>
    <span class="d_inlinecode donthyphenate notranslate">immutable</span>
    <span class="d_inlinecode donthyphenate notranslate">inout</span>
    <span class="d_inlinecode donthyphenate notranslate">shared</span>
<div class="blankline"></div>
<a id="BasicType"><span class="gname">BasicType</span></a>:
    <a href="#FundamentalType"><i>FundamentalType</i></a>
    <span class="d_inlinecode donthyphenate notranslate">.</span> <a href="#QualifiedIdentifier"><i>QualifiedIdentifier</i></a>
    <a href="#QualifiedIdentifier"><i>QualifiedIdentifier</i></a>
    <a href="#Typeof"><i>Typeof</i></a>
    <a href="#Typeof"><i>Typeof</i></a> <span class="d_inlinecode donthyphenate notranslate">.</span> <a href="#QualifiedIdentifier"><i>QualifiedIdentifier</i></a>
    <a href="#TypeCtor"><i>TypeCtor</i></a> <span class="d_inlinecode donthyphenate notranslate">(</span> <a href="#Type"><i>Type</i></a> <span class="d_inlinecode donthyphenate notranslate">)</span>
    <a href="#Vector"><i>Vector</i></a>
    <a href="../spec/traits.html#TraitsExpression"><i>TraitsExpression</i></a>
    <a href="#MixinType"><i>MixinType</i></a>
<div class="blankline"></div>
<a id="Vector"><span class="gname">Vector</span></a>:
    <span class="d_inlinecode donthyphenate notranslate">__vector</span> <span class="d_inlinecode donthyphenate notranslate">(</span> <a href="#VectorBaseType"><i>VectorBaseType</i></a> <span class="d_inlinecode donthyphenate notranslate">)</span>
<div class="blankline"></div>
<a id="VectorBaseType"><span class="gname">VectorBaseType</span></a>:
    <a href="#Type"><i>Type</i></a>
<div class="blankline"></div>
<a id="FundamentalType"><span class="gname">FundamentalType</span></a>:
    <span class="d_inlinecode donthyphenate notranslate">bool</span>
    <span class="d_inlinecode donthyphenate notranslate">byte</span>
    <span class="d_inlinecode donthyphenate notranslate">ubyte</span>
    <span class="d_inlinecode donthyphenate notranslate">short</span>
    <span class="d_inlinecode donthyphenate notranslate">ushort</span>
    <span class="d_inlinecode donthyphenate notranslate">int</span>
    <span class="d_inlinecode donthyphenate notranslate">uint</span>
    <span class="d_inlinecode donthyphenate notranslate">long</span>
    <span class="d_inlinecode donthyphenate notranslate">ulong</span>
    <span class="d_inlinecode donthyphenate notranslate">cent</span>
    <span class="d_inlinecode donthyphenate notranslate">ucent</span>
    <span class="d_inlinecode donthyphenate notranslate">char</span>
    <span class="d_inlinecode donthyphenate notranslate">wchar</span>
    <span class="d_inlinecode donthyphenate notranslate">dchar</span>
    <span class="d_inlinecode donthyphenate notranslate">float</span>
    <span class="d_inlinecode donthyphenate notranslate">double</span>
    <span class="d_inlinecode donthyphenate notranslate">real</span>
    <span class="d_inlinecode donthyphenate notranslate">ifloat</span>
    <span class="d_inlinecode donthyphenate notranslate">idouble</span>
    <span class="d_inlinecode donthyphenate notranslate">ireal</span>
    <span class="d_inlinecode donthyphenate notranslate">cfloat</span>
    <span class="d_inlinecode donthyphenate notranslate">cdouble</span>
    <span class="d_inlinecode donthyphenate notranslate">creal</span>
    <span class="d_inlinecode donthyphenate notranslate">void</span>
<div class="blankline"></div>
<a id="TypeSuffixes"><span class="gname">TypeSuffixes</span></a>:
    <a href="#TypeSuffix"><i>TypeSuffix</i></a> <i>TypeSuffixes</i><sub>opt</sub>
<div class="blankline"></div>
<a id="TypeSuffix"><span class="gname">TypeSuffix</span></a>:
    <span class="d_inlinecode donthyphenate notranslate">*</span>
    <span class="d_inlinecode donthyphenate notranslate">[ ]</span>
    <span class="d_inlinecode donthyphenate notranslate">[</span> <a href="../spec/expression.html#AssignExpression"><i>AssignExpression</i></a> <span class="d_inlinecode donthyphenate notranslate">]</span>
    <span class="d_inlinecode donthyphenate notranslate">[</span> <a href="../spec/expression.html#AssignExpression"><i>AssignExpression</i></a> <span class="d_inlinecode donthyphenate notranslate">..</span> <a href="../spec/expression.html#AssignExpression"><i>AssignExpression</i></a> <span class="d_inlinecode donthyphenate notranslate">]</span>
    <span class="d_inlinecode donthyphenate notranslate">[</span> <a href="#Type"><i>Type</i></a> <span class="d_inlinecode donthyphenate notranslate">]</span>
    <span class="d_inlinecode donthyphenate notranslate">delegate</span> <a href="../spec/function.html#Parameters"><i>Parameters</i></a> <a href="../spec/function.html#MemberFunctionAttributes"><i>MemberFunctionAttributes</i></a><sub>opt</sub>
    <span class="d_inlinecode donthyphenate notranslate">function</span> <a href="../spec/function.html#Parameters"><i>Parameters</i></a> <a href="../spec/function.html#FunctionAttributes"><i>FunctionAttributes</i></a><sub>opt</sub>
<div class="blankline"></div>
<a id="QualifiedIdentifier"><span class="gname">QualifiedIdentifier</span></a>:
    <a href="../spec/lex.html#Identifier"><i>Identifier</i></a>
    <a href="../spec/lex.html#Identifier"><i>Identifier</i></a> <span class="d_inlinecode donthyphenate notranslate">.</span> <i>QualifiedIdentifier</i>
    <a href="../spec/template.html#TemplateInstance"><i>TemplateInstance</i></a>
    <a href="../spec/template.html#TemplateInstance"><i>TemplateInstance</i></a> <span class="d_inlinecode donthyphenate notranslate">.</span> <i>QualifiedIdentifier</i>
    <a href="../spec/lex.html#Identifier"><i>Identifier</i></a> <span class="d_inlinecode donthyphenate notranslate">[</span> <a href="../spec/expression.html#AssignExpression"><i>AssignExpression</i></a> <span class="d_inlinecode donthyphenate notranslate">]</span>
    <a href="../spec/lex.html#Identifier"><i>Identifier</i></a> <span class="d_inlinecode donthyphenate notranslate">[</span> <a href="../spec/expression.html#AssignExpression"><i>AssignExpression</i></a> <span class="d_inlinecode donthyphenate notranslate">] .</span> <i>QualifiedIdentifier</i>
</pre>

<ul><li><a href="#basic-data-types">Basic Data Types</a> are leaf types.</li>
<li><a href="#derived-data-types">Derived Data Types</a> build on leaf types.</li>
<li><a href="#user-defined-types">User-Defined Types</a> are aggregates of basic and derived types.
</li>
</ul>
<h2><span id="Basic Data Types"><a class="anchor" title="Permalink to this section" id="basic-data-types" href="#basic-data-types">Basic Data Types</a></span></h2>
<div class="blankline"></div>
    <center><table><caption>Basic Data Types</caption>    <tbody><tr><th class="donthyphenate"><b>Keyword</b></th><th class="donthyphenate"><b>Default Initializer (<span class="d_inlinecode donthyphenate notranslate">.init</span>)</b></th><th class="donthyphenate"><b>Description</b></th></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">void</span></td><td>no default initializer</td><td><span class="d_inlinecode donthyphenate notranslate">void</span> has no value</td></tr>
    <tr><td><a href="#bool"><span class="d_inlinecode donthyphenate notranslate">bool</span></a></td><td><span class="d_inlinecode donthyphenate notranslate">false</span></td><td>boolean value</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">byte</span></td><td><span class="d_inlinecode donthyphenate notranslate">0</span></td><td>signed 8 bits</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">ubyte</span></td><td><span class="d_inlinecode donthyphenate notranslate">0u</span></td><td>unsigned 8 bits</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">short</span></td><td><span class="d_inlinecode donthyphenate notranslate">0</span></td><td>signed 16 bits</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">ushort</span></td><td><span class="d_inlinecode donthyphenate notranslate">0u</span></td><td>unsigned 16 bits</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">int</span></td><td><span class="d_inlinecode donthyphenate notranslate">0</span></td><td>signed 32 bits</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">uint</span></td><td><span class="d_inlinecode donthyphenate notranslate">0u</span></td><td>unsigned 32 bits</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">long</span></td><td><span class="d_inlinecode donthyphenate notranslate">0L</span></td><td>signed 64 bits</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">ulong</span></td><td><span class="d_inlinecode donthyphenate notranslate">0uL</span></td><td>unsigned 64 bits</td></tr>
    <tr><td><del title="deprecated"><span class="d_inlinecode donthyphenate notranslate">cent</span></del></td><td><span class="d_inlinecode donthyphenate notranslate">0</span></td><td>signed 128 bits</td></tr>
    <tr><td><del title="deprecated"><span class="d_inlinecode donthyphenate notranslate">ucent</span></del></td><td><span class="d_inlinecode donthyphenate notranslate">0u</span></td><td>unsigned 128 bits</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">float</span></td><td><span class="d_inlinecode donthyphenate notranslate">float.nan</span></td><td>32 bit floating point</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">double</span></td><td><span class="d_inlinecode donthyphenate notranslate">double.nan</span></td><td>64 bit floating point</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">real</span></td><td><span class="d_inlinecode donthyphenate notranslate">real.nan</span></td><td>largest floating point size available</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">ifloat</span></td><td><span class="d_inlinecode donthyphenate notranslate">float.nan*1.0i</span></td><td>imaginary float</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">idouble</span></td><td><span class="d_inlinecode donthyphenate notranslate">double.nan*1.0i</span></td><td>imaginary double</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">ireal</span></td><td><span class="d_inlinecode donthyphenate notranslate">real.nan*1.0i</span></td><td>imaginary real</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">cfloat</span></td><td><span class="d_inlinecode donthyphenate notranslate">float.nan+float.nan*1.0i</span></td><td>a complex number of two float values</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">cdouble</span></td><td><span class="d_inlinecode donthyphenate notranslate">double.nan+double.nan*1.0i</span></td><td>complex double</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">creal</span></td><td><span class="d_inlinecode donthyphenate notranslate">real.nan+real.nan*1.0i</span></td><td>complex real</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">char</span></td><td><span class="d_inlinecode donthyphenate notranslate">'\xFF'</span></td><td>unsigned 8 bit (UTF-8 code unit)</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">wchar</span></td><td><span class="d_inlinecode donthyphenate notranslate">'\uFFFF'</span></td><td>unsigned 16 bit (UTF-16 code unit)</td></tr>
    <tr><td><span class="d_inlinecode donthyphenate notranslate">dchar</span></td><td><span class="d_inlinecode donthyphenate notranslate">'\U0000FFFF'</span></td><td>unsigned 32 bit (UTF-32 code unit)</td></tr>
    </tbody></table></center>
<div class="blankline"></div>
    <p>Endianness of basic types is part of the <a href="../spec/abi.html#endianness">ABI</a></p>
<div class="blankline"></div>
    <div class="spec-boxes implementation-defined"><b>Implementation Defined:</b> The real floating point type has at least the range and precision
    of the <span class="d_inlinecode donthyphenate notranslate">double</span> type. On x86 CPUs it is often implemented as the 80 bit Extended Real
    type supported by the x86 FPU.
    </div>


<div class="blankline"></div>
    <div class="spec-boxes note"><b>Note:</b> 128-bit integer types <span class="d_inlinecode donthyphenate notranslate">cent</span> and <span class="d_inlinecode donthyphenate notranslate">ucent</span>
    <a href="../deprecate.html#128-bit integer types">have been deprecated</a>.</div>
<div class="blankline"></div>
    <p>NOTE: Complex and imaginary types <span class="d_inlinecode donthyphenate notranslate">ifloat</span>, <span class="d_inlinecode donthyphenate notranslate">idouble</span>, <span class="d_inlinecode donthyphenate notranslate">ireal</span>, <span class="d_inlinecode donthyphenate notranslate">cfloat</span>, <span class="d_inlinecode donthyphenate notranslate">cdouble</span>,
    and <span class="d_inlinecode donthyphenate notranslate">creal</span> have been deprecated in favor of <span class="d_inlinecode donthyphenate notranslate">std.complex.Complex</span>.</p>
<div class="blankline"></div>
<h2><span id="Derived Data Types"><a class="anchor" title="Permalink to this section" id="derived-data-types" href="#derived-data-types">Derived Data Types</a></span></h2>
<div class="blankline"></div>
    <ul>    <li>Pointers</li>
    <li><a href="../spec/arrays.html#static-arrays">Static Arrays</a></li>
    <li><a href="../spec/arrays.html#dynamic-arrays">Dynamic Arrays</a></li>
    <li><a href="../spec/hash-map.html">Associative Arrays</a></li>
    <li><a href="#functions">Function Types</a></li>
    <li><a href="#delegates">Delegate Types</a></li>
    <li><a href="../spec/template.html#homogeneous_sequences">Type Sequences</a></li>
    </ul>
<div class="blankline"></div>
<div class="runnable-examples" data-compile="">
<div class="d_code"><pre class="d_code"><span class="d_keyword">int</span>* p; <span class="d_comment">// pointer
</span><span class="d_keyword">int</span>[2] sa; <span class="d_comment">// static array
</span><span class="d_keyword">int</span>[] da; <span class="d_comment">// dynamic array/slice
</span>
<span class="d_keyword">int</span>[string] aa; <span class="d_comment">// associative array
</span><span class="d_keyword">void</span> <span class="d_keyword">function</span>() fp; <span class="d_comment">// function pointer
</span>
<span class="d_keyword">import</span> std.meta : AliasSeq;
AliasSeq!(<span class="d_keyword">int</span>, string) tsi; <span class="d_comment">// type sequence instance
</span></pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Compile"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
<h3><a class="anchor" title="Permalink to this section" id="pointers" href="#pointers">Pointers</a></h3>
<div class="blankline"></div>
        <p>A pointer to type <span class="d_inlinecode donthyphenate notranslate">T</span> has a value which is a reference (address) to another
        object of type <span class="d_inlinecode donthyphenate notranslate">T</span>. It is commonly called a <i>pointer to T</i> and its type is
        <span class="d_inlinecode donthyphenate notranslate">T*</span>. To access the object value, use the <span class="d_inlinecode donthyphenate notranslate">*</span> dereference operator:
        </p>
<div class="blankline"></div>
<div class="runnable-examples">
<div class="d_code"><pre class="d_code"><span class="d_keyword">int</span>* p;

<span class="d_keyword">assert</span>(p == <span class="d_keyword">null</span>);
p = <span class="d_keyword">new</span> <span class="d_keyword">int</span>(5);
<span class="d_keyword">assert</span>(p != <span class="d_keyword">null</span>);

<span class="d_keyword">assert</span>(*p == 5);
(*p)++;
<span class="d_keyword">assert</span>(*p == 6);
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Run" title="Note: Wraps code in `main` automatically if `main` is missing &amp; imports std.stdio.write[f][ln]"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
        <p>If a pointer contains a <i>null</i> value, it is not pointing to a valid object.</p>
<div class="blankline"></div>
        <p>When a pointer to <i>T</i> is dereferenced, it must either contain a <i>null</i> value,
        or point to a valid object of type <i>T</i>.</p>
<div class="blankline"></div>
        <div class="spec-boxes implementation-defined"><b>Implementation Defined:</b>         <ol>        <li>The behavior when a <i>null</i> pointer is dereferenced. Typically the program
        will be aborted.</li>
        </ol></div>


<div class="blankline"></div>
        <div class="spec-boxes undefined-behavior"><b>Undefined Behavior:</b> dereferencing a pointer that is not <i>null</i> and does not point
        to a valid object of type <i>T</i>.</div>


<div class="blankline"></div>
        <p>To set a pointer to point at an existing object, use the
        <span class="d_inlinecode donthyphenate notranslate">&amp;</span> <em>address of</em> operator:</p>
<div class="blankline"></div>
<div class="runnable-examples">
<div class="d_code"><pre class="d_code"><span class="d_keyword">int</span> i = 2;
<span class="d_keyword">int</span>* p = &amp;i;

<span class="d_keyword">assert</span>(p == &amp;i);
<span class="d_keyword">assert</span>(*p == 2);
*p = 4;
<span class="d_keyword">assert</span>(i == 4);
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Run" title="Note: Wraps code in `main` automatically if `main` is missing &amp; imports std.stdio.write[f][ln]"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
        <p>See also <a href="../spec/expression.html#pointer_arithmetic">Pointer Arithmetic</a>.</p>
<div class="blankline"></div>
<div class="blankline"></div>
<h2><span id="User Defined Types"><a class="anchor" title="Permalink to this section" id="user-defined-types" href="#user-defined-types">User-Defined Types</a></span></h2>
<div class="blankline"></div>
    <ul>    <li><a href="../spec/enum.html">Enums</a></li>
    <li><a href="../spec/struct.html">Structs and Unions</a></li>
    <li><a href="../spec/class.html">Classes</a></li>
    <li><a href="../spec/interface.html">Interfaces</a></li>
    </ul>
<div class="blankline"></div>
<h2><a class="anchor" title="Permalink to this section" id="type-conversions" href="#type-conversions">Type Conversions</a></h2>
<div class="blankline"></div>
    See also: <a href="../spec/expression.html#CastExpression"><i>CastExpression</i></a>.
<div class="blankline"></div>
<h3><span id="Pointer Conversions"><a class="anchor" title="Permalink to this section" id="pointer-conversions" href="#pointer-conversions">Pointer Conversions</a></span></h3>
<div class="blankline"></div>
    <p><a href="#pointers">Pointers</a> implicitly convert to <span class="d_inlinecode donthyphenate notranslate">void*</span>.</p>
<div class="blankline"></div>
    <p>Casting between pointers and non-pointers is allowed. Some pointer casts
    are disallowed in <a href="../spec/memory-safe-d.html"><span class="d_inlinecode donthyphenate notranslate">@safe</span> code</a>.</p>
<div class="blankline"></div>
    <div class="spec-boxes best-practice"><b>Best Practices:</b> do not cast any pointer to a non-pointer type that points to data
    allocated by the garbage collector.
    </div>


<div class="blankline"></div>
<h3><span id="Implicit Conversions"><a class="anchor" title="Permalink to this section" id="implicit-conversions" href="#implicit-conversions">Implicit Conversions</a></span></h3>
<div class="blankline"></div>
    <p>Implicit conversions are used to automatically convert
    types as required. The rules for integers are detailed in the next sections.
    </p>
<div class="blankline"></div>
    <p>An enum can be <a href="../spec/enum.html#named_enums">implicitly converted</a> to its base
    type, but going the other way requires an explicit
    conversion.</p>
<div class="blankline"></div>
    <ul>    <li>All types implicitly convert to <a href="#noreturn"><span class="d_inlinecode donthyphenate notranslate">noreturn</span></a>.</li>
    <li>Static and dynamic arrays implicitly convert to <a href="../spec/arrays.html#void_arrays"><span class="d_inlinecode donthyphenate notranslate">void</span> arrays</a>.</li>
    <li><a href="../spec/function.html#function-pointers-delegates">Function pointers and delegates</a>
        can convert to covariant types.</li>
    </ul>
<div class="blankline"></div>
<h4><a class="anchor" title="Permalink to this section" id="class-conversions" href="#class-conversions">Class Conversions</a></h4>
<div class="blankline"></div>
    <p>A derived class can be implicitly converted to its base class, but going
    the other way requires an explicit cast. For example:</p>
<div class="blankline"></div>
<div class="runnable-examples">
<div class="d_code"><pre class="d_code"><span class="d_keyword">class</span> Base {}
<span class="d_keyword">class</span> Derived : Base {}
Base bd = <span class="d_keyword">new</span> Derived();              <span class="d_comment">// implicit conversion
</span>Derived db = <span class="d_keyword">cast</span>(Derived)<span class="d_keyword">new</span> Base(); <span class="d_comment">// explicit conversion
</span></pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Run" title="Note: Wraps code in `main` automatically if `main` is missing &amp; imports std.stdio.write[f][ln]"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
    <p>A dynamic array, say <span class="d_inlinecode donthyphenate notranslate">x</span>, of a derived class can be implicitly converted
    to a dynamic array, say <span class="d_inlinecode donthyphenate notranslate">y</span>, of a base class iff elements of <span class="d_inlinecode donthyphenate notranslate">x</span> and <span class="d_inlinecode donthyphenate notranslate">y</span> are
    qualified as being either both <span class="d_inlinecode donthyphenate notranslate">const</span> or both <span class="d_inlinecode donthyphenate notranslate">immutable</span>.</p>
<div class="blankline"></div>
<div class="runnable-examples">
<div class="d_code"><pre class="d_code"><span class="d_keyword">class</span> Base {}
<span class="d_keyword">class</span> Derived : Base {}
<span class="d_keyword">const</span>(Base)[] ca = (<span class="d_keyword">const</span>(Derived)[]).init; <span class="d_comment">// `const` elements
</span><span class="d_keyword">immutable</span>(Base)[] ia = (<span class="d_keyword">immutable</span>(Derived)[]).init; <span class="d_comment">// `immutable` elements
</span></pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Run" title="Note: Wraps code in `main` automatically if `main` is missing &amp; imports std.stdio.write[f][ln]"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
    <p>A static array, say <span class="d_inlinecode donthyphenate notranslate">x</span>, of a derived class can be implicitly converted
    to a static array, say <span class="d_inlinecode donthyphenate notranslate">y</span>, of a base class iff elements of <span class="d_inlinecode donthyphenate notranslate">x</span> and <span class="d_inlinecode donthyphenate notranslate">y</span> are
    qualified as being either both <span class="d_inlinecode donthyphenate notranslate">const</span> or both <span class="d_inlinecode donthyphenate notranslate">immutable</span> or both mutable
    (neither <span class="d_inlinecode donthyphenate notranslate">const</span> nor <span class="d_inlinecode donthyphenate notranslate">immutable</span>).</p>
<div class="blankline"></div>
<div class="runnable-examples">
<div class="d_code"><pre class="d_code"><span class="d_keyword">class</span> Base {}
<span class="d_keyword">class</span> Derived : Base {}
Base[3] ma = (Derived[3]).init; <span class="d_comment">// mutable elements
</span><span class="d_keyword">const</span>(Base)[3] ca = (<span class="d_keyword">const</span>(Derived)[3]).init; <span class="d_comment">// `const` elements
</span><span class="d_keyword">immutable</span>(Base)[3] ia = (<span class="d_keyword">immutable</span>(Derived)[3]).init; <span class="d_comment">// `immutable` elements
</span></pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Run" title="Note: Wraps code in `main` automatically if `main` is missing &amp; imports std.stdio.write[f][ln]"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
<h3><span id="Integer Promotions"><a class="anchor" title="Permalink to this section" id="integer-promotions" href="#integer-promotions">Integer Promotions</a></span></h3>
<div class="blankline"></div>
    <p>Integer Promotions are conversions of the following types:
    </p>
<div class="blankline"></div>
    <center><table><caption>Integer Promotions</caption>    <tbody><tr><th class="donthyphenate"><b>from</b></th><th class="donthyphenate"><b>to</b></th></tr>
    <tr><td>    <span class="d_inlinecode donthyphenate notranslate">bool</span></td><td>    <span class="d_inlinecode donthyphenate notranslate">int</span>
    </td></tr>
    <tr><td>    <span class="d_inlinecode donthyphenate notranslate">byte</span></td><td>    <span class="d_inlinecode donthyphenate notranslate">int</span>
    </td></tr>
    <tr><td>    <span class="d_inlinecode donthyphenate notranslate">ubyte</span></td><td>    <span class="d_inlinecode donthyphenate notranslate">int</span>
    </td></tr>
    <tr><td>    <span class="d_inlinecode donthyphenate notranslate">short</span></td><td>    <span class="d_inlinecode donthyphenate notranslate">int</span>
    </td></tr>
    <tr><td>    <span class="d_inlinecode donthyphenate notranslate">ushort</span></td><td>    <span class="d_inlinecode donthyphenate notranslate">int</span>
    </td></tr>
    <tr><td>    <span class="d_inlinecode donthyphenate notranslate">char</span></td><td>    <span class="d_inlinecode donthyphenate notranslate">int</span>
    </td></tr>
    <tr><td>    <span class="d_inlinecode donthyphenate notranslate">wchar</span></td><td>    <span class="d_inlinecode donthyphenate notranslate">int</span>
    </td></tr>
    <tr><td>    <span class="d_inlinecode donthyphenate notranslate">dchar</span></td><td>    <span class="d_inlinecode donthyphenate notranslate">uint</span>
    </td></tr>
    </tbody></table></center>
<div class="blankline"></div>
    <p>If an enum has as a base type one of the types
    in the left column, it is converted to the type in the right
    column.
    </p>
<div class="blankline"></div>
    <p>Integer promotion applies to each operand of a binary expression:</p>
<div class="blankline"></div>
    <div class="runnable-examples" data-compile="">
<div class="d_code"><pre class="d_code"><span class="d_keyword">void</span> fun()
{
    <span class="d_keyword">byte</span> a;
    <span class="d_keyword">auto</span> b = a + a;
    <span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(b) == <span class="d_keyword">int</span>));
    <span class="d_comment">// error: can't implicitly convert expression of type int to byte:
</span>    <span class="d_comment">//byte c = a + a;
</span>
    <span class="d_keyword">ushort</span> d;
    <span class="d_comment">// error: can't implicitly convert expression of type int to ushort:
</span>    <span class="d_comment">//d = d * d;
</span>    <span class="d_keyword">int</span> e = d * d; <span class="d_comment">// OK
</span>    <span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(<span class="d_keyword">int</span>() * d) == <span class="d_keyword">int</span>));

    <span class="d_keyword">dchar</span> f;
    <span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(f - f) == <span class="d_keyword">uint</span>));
}
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Compile"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>
    
</div>
<div class="blankline"></div>
    <div class="spec-boxes rationale"><b>Rationale:</b> <ul><li>32-bit integer operations are often faster than smaller integer types
      for single variables on modern architectures.</li>
<li>Promotion helps avoid accidental overflow which is more common with small integer types.</li>
</ul>
    </div>


<div class="blankline"></div>
<h3><span id="Usual Arithmetic Conversions"><a class="anchor" title="Permalink to this section" id="usual-arithmetic-conversions" href="#usual-arithmetic-conversions">Usual Arithmetic Conversions</a></span></h3>
<div class="blankline"></div>
    <p>The usual arithmetic conversions convert operands of binary
    operators to a common type. The operands must already be
    of arithmetic types.
    The following rules are applied
    in order, looking at the base type:
    </p>
<div class="blankline"></div>
    <ol>    <li>If either operand is <span class="d_inlinecode donthyphenate notranslate">real</span>, the other operand is
    converted to <span class="d_inlinecode donthyphenate notranslate">real</span>.</li>
<div class="blankline"></div>
    <li>Else if either operand is <span class="d_inlinecode donthyphenate notranslate">double</span>, the other operand is
    converted to <span class="d_inlinecode donthyphenate notranslate">double</span>.</li>
<div class="blankline"></div>
    <li>Else if either operand is <span class="d_inlinecode donthyphenate notranslate">float</span>, the other operand is
    converted to <span class="d_inlinecode donthyphenate notranslate">float</span>.</li>
<div class="blankline"></div>
    <li>Else the integer promotions above are done on each operand,
    followed by:
<div class="blankline"></div>
    <ol>        <li>If both are the same type, no more conversions are done.</li>
<div class="blankline"></div>
        <li>If both are signed or both are unsigned, the
        smaller type is converted to the larger.</li>
<div class="blankline"></div>
        <li>If the signed type is larger than the unsigned
        type, the unsigned type is converted to the signed type.</li>
<div class="blankline"></div>
        <li>The signed type is converted to the unsigned type.</li>
    </ol>
    </li>
    </ol>
<div class="blankline"></div>
    <div class="spec-boxes rationale"><b>Rationale:</b> The above rules follow C99, which makes porting code from C easier.</div>


<div class="blankline"></div>
    <p><b>Example:</b> Signed and unsigned conversions:</p>
    <div class="runnable-examples" data-compile="">
<div class="d_code"><pre class="d_code"><span class="d_keyword">int</span> i;
<span class="d_keyword">uint</span> u;
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(i + u) == <span class="d_keyword">uint</span>));
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(<span class="d_keyword">short</span>() + u) == <span class="d_keyword">uint</span>));
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(<span class="d_keyword">ulong</span>() + i) == <span class="d_keyword">ulong</span>));
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(<span class="d_keyword">long</span>() - u) == <span class="d_keyword">long</span>));
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(<span class="d_keyword">long</span>() * <span class="d_keyword">ulong</span>()) == <span class="d_keyword">ulong</span>));
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Compile"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>
    
</div>
<div class="blankline"></div>
    <p><b>Example:</b> Floating point:</p>
    <div class="runnable-examples" data-compile="">
<div class="d_code"><pre class="d_code"><span class="d_keyword">float</span> f;
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(f + <span class="d_keyword">ulong</span>()) == <span class="d_keyword">float</span>));

<span class="d_keyword">double</span> d;
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(f * d) == <span class="d_keyword">double</span>));
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(<span class="d_keyword">real</span>() / d) == <span class="d_keyword">real</span>));
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Compile"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>
    
</div>
<div class="blankline"></div>
<h4><a class="anchor" title="Permalink to this section" id="enum-ops" href="#enum-ops">Enum Operations</a></h4>
<div class="blankline"></div>
    <p>If one or both of the operand types is an <a href="../spec/enum.html">enum</a> after
    undergoing the above conversions, the result type is determined as follows:</p>
<div class="blankline"></div>
    <ol>    <li>If the operands are the same type, the result will be of
    that type.</li>
    <li>If one operand is an enum  and the other is the base type
    of that  enum, the result is the base type.</li>
    <li>If the two operands are different  enums,
    the result is the closest base type common to both. A base type being closer
    means there is a shorter sequence of conversions to base type to get there from the
    original type.</li>
    </ol>
<div class="blankline"></div>
<div class="runnable-examples" data-compile="">
<div class="d_code"><pre class="d_code"><span class="d_keyword">enum</span> E { a, b, c }
<span class="d_keyword">enum</span> F { x, y }

<span class="d_keyword">void</span> test()
{
    E e = E.a;
    e = e | E.c;
    <span class="d_comment">//e = e + 4; // error, can't assign int to E
</span>    <span class="d_keyword">int</span> i = e + 4;
    e += 4; <span class="d_comment">// OK, see below
</span>
    F f;
    <span class="d_comment">//f = e | f; // error, can't assign int to F
</span>    i = e | f;
}
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Compile"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
    <div class="spec-boxes note"><b>Note:</b> Above, <span class="d_inlinecode donthyphenate notranslate">e += 4</span> compiles because the
    <a href="../spec/expression.html#assignment_operator_expressions">operator assignment</a>
    is equivalent to <span class="d_inlinecode donthyphenate notranslate">e = cast(E)(e + 4)</span>.</div>
<div class="blankline"></div>
<h3><span id="disallowed-conversions"><a class="anchor" title="Permalink to this section" id="integer-conversions" href="#integer-conversions">Integer Type Conversions</a></span></h3>
<div class="blankline"></div>
    <p>An integer of type <span class="d_inlinecode donthyphenate notranslate">I</span> implicitly converts to another integer type <span class="d_inlinecode donthyphenate notranslate">J</span> when
    <span class="d_inlinecode donthyphenate notranslate">J.sizeof &gt;= I.sizeof</span>.</p>
<div class="blankline"></div>
<div class="runnable-examples">
<div class="d_code"><pre class="d_code"><span class="d_keyword">void</span> f(<span class="d_keyword">byte</span> b, <span class="d_keyword">ubyte</span> ub, <span class="d_keyword">short</span> s)
{
    b = ub; <span class="d_comment">// OK, bit pattern same
</span>    ub = b; <span class="d_comment">// OK, bit pattern same
</span>    s = b; <span class="d_comment">// OK, widening conversion
</span>    b = s; <span class="d_comment">// error, implicit narrowing
</span>}
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Run" title="Note: Wraps code in `main` automatically if `main` is missing &amp; imports std.stdio.write[f][ln]"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
    <p>Integer values cannot be implicitly converted to another
    type that cannot represent the integer bit pattern after
    <a href="#integer-promotions">integral promotion</a>. For example:</p>
<div class="blankline"></div>
<div class="runnable-examples">
<div class="d_code"><pre class="d_code"><span class="d_keyword">ubyte</span>  u1 = -1; <span class="d_comment">// error, -1 cannot be represented in a ubyte
</span><span class="d_keyword">ushort</span> u2 = -1; <span class="d_comment">// error, -1 cannot be represented in a ushort
</span><span class="d_keyword">uint</span>   u3 = -1; <span class="d_comment">// ok, -1 can be represented in an int, which can be converted to a uint
</span><span class="d_keyword">ulong</span>  u4 = -1; <span class="d_comment">// ok, -1 can be represented in a long, which can be converted to a ulong
</span></pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Run" title="Note: Wraps code in `main` automatically if `main` is missing &amp; imports std.stdio.write[f][ln]"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
<h3><a class="anchor" title="Permalink to this section" id="floating-point-conversions" href="#floating-point-conversions">Floating Point Type Conversions</a></h3>

<ul><li>Integral types implicitly convert to floating point types.</li>
<li>Floating point types cannot be implicitly converted to integral types.
</li>
</ul>
    <div class="runnable-examples">
<div class="d_code"><pre class="d_code"><span class="d_keyword">void</span> f(<span class="d_keyword">int</span> i, <span class="d_keyword">float</span> f)
{
    f = i; <span class="d_comment">// OK
</span>    i = f; <span class="d_comment">// error
</span>}
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Run" title="Note: Wraps code in `main` automatically if `main` is missing &amp; imports std.stdio.write[f][ln]"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>
    
</div>

<ul><li>Complex or imaginary floating point types cannot be implicitly converted
      to non-complex floating point types.</li>
<li>Non-complex floating point types cannot be implicitly converted to imaginary floating
      point types.
</li>
</ul>
<h3><a class="anchor" title="Permalink to this section" id="vrp" href="#vrp">Value Range Propagation</a></h3>
<div class="blankline"></div>
    <p>Besides type-based implicit conversions, D allows certain integer
        expressions to implicitly convert to a narrower type after
        integer promotion. This works by analysing the minimum and
        maximum possible range of values for each expression.
        If that range of values matches or is a subset of a narrower
        target type's value range, implicit
        conversion is allowed. If a subexpression is known at compile-time,
        that can further narrow the range of values.</p>
<div class="blankline"></div>
    <div class="runnable-examples" data-compile="">
<div class="d_code"><pre class="d_code"><span class="d_keyword">void</span> fun(<span class="d_keyword">char</span> c, <span class="d_keyword">int</span> i, <span class="d_keyword">ubyte</span> b)
{
    <span class="d_comment">// min is c.min + 100 &gt; short.min
</span>    <span class="d_comment">// max is c.max + 100 &lt; short.max
</span>    <span class="d_keyword">short</span> s = c + 100; <span class="d_comment">// OK
</span>
    <span class="d_keyword">ubyte</span> j = i &amp; 0x3F; <span class="d_comment">// OK, 0 ... 0x3F
</span>    <span class="d_comment">//ubyte k = i &amp; 0x14A; // error, 0x14A &gt; ubyte.max
</span>    <span class="d_keyword">ushort</span> k = i &amp; 0x14A; <span class="d_comment">// OK
</span>
    k = i &amp; b; <span class="d_comment">// OK, 0 ... b.max
</span>    <span class="d_comment">//b = b + b; // error, b.max + b.max &gt; b.max
</span>    s = b + b; <span class="d_comment">// OK, 0 ... b.max + b.max
</span>}
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Compile"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>
    
</div>
    <p>Note the implementation does not track the range of possible values for
    mutable variables:</p>
<div class="blankline"></div>
    <div class="runnable-examples" data-compile="">
<div class="d_code"><pre class="d_code"><span class="d_keyword">void</span> fun(<span class="d_keyword">int</span> i)
{
    <span class="d_keyword">ushort</span> s = i &amp; 0xff; <span class="d_comment">// OK
</span>    <span class="d_comment">// s is now assumed to be s.min ... s.max, not 0 ... 0xff
</span>    <span class="d_comment">//ubyte b = s; // error
</span>    <span class="d_keyword">ubyte</span> b = s &amp; 0xff; <span class="d_comment">// OK
</span>
    <span class="d_keyword">const</span> <span class="d_keyword">int</span> c = i &amp; 0xff;
    <span class="d_comment">// c's range is fixed and known
</span>    b = c; <span class="d_comment">// OK
</span>}
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Compile"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>
    
</div>
<ul><li>For more information, see <a href="https://digitalmars.com/articles/b62.html">the dmc article</a>.</li>
<li>See also: <a href="https://en.wikipedia.org/wiki/Value_range_analysis">https://en.wikipedia.org/wiki/Value_range_analysis</a>.
<div class="blankline"></div>
</li>
</ul>
<h2><a class="anchor" title="Permalink to this section" id="bool" href="#bool"><span class="d_inlinecode donthyphenate notranslate">bool</span></a></h2>
<div class="blankline"></div>
<p>The bool type is a byte-size type that can only hold the value <span class="d_inlinecode donthyphenate notranslate">true</span> or
<span class="d_inlinecode donthyphenate notranslate">false</span>.</p>
<div class="blankline"></div>
<p>The only operators that can accept operands of type bool are: <span class="d_inlinecode donthyphenate notranslate">&amp;</span>
<span class="d_inlinecode donthyphenate notranslate">|</span>, <span class="d_inlinecode donthyphenate notranslate">^</span>, <span class="d_inlinecode donthyphenate notranslate">&amp;</span><span class="d_inlinecode donthyphenate notranslate">=</span>, <span class="d_inlinecode donthyphenate notranslate">|</span><span class="d_inlinecode donthyphenate notranslate">=</span>, <span class="d_inlinecode donthyphenate notranslate">^=</span>, !,
<span class="d_inlinecode donthyphenate notranslate">&amp;</span><span class="d_inlinecode donthyphenate notranslate">&amp;</span>, <span class="d_inlinecode donthyphenate notranslate">|</span><span class="d_inlinecode donthyphenate notranslate">|</span>, and <span class="d_inlinecode donthyphenate notranslate">?:</span>.</p>
<div class="blankline"></div>
<p>A <span class="d_inlinecode donthyphenate notranslate">bool</span> value can be implicitly converted to any integral type, with
<span class="d_inlinecode donthyphenate notranslate">false</span> becoming 0 and <span class="d_inlinecode donthyphenate notranslate">true</span> becoming 1.</p>
<div class="blankline"></div>
<p>The numeric literals <span class="d_inlinecode donthyphenate notranslate">0</span> and <span class="d_inlinecode donthyphenate notranslate">1</span> can be implicitly converted to the <span class="d_inlinecode donthyphenate notranslate">bool</span>
values <span class="d_inlinecode donthyphenate notranslate">false</span> and <span class="d_inlinecode donthyphenate notranslate">true</span>, respectively. Casting an expression to <span class="d_inlinecode donthyphenate notranslate">bool</span> means
testing <span class="d_inlinecode donthyphenate notranslate">!=0</span> for arithmetic types, and <span class="d_inlinecode donthyphenate notranslate">!=null</span> for
pointers or references.</p>
<div class="blankline"></div>
<div class="spec-boxes undefined-behavior"><b>Undefined Behavior:</b> </div>


<ul><li>Interpreting a value with a byte representation
  other than 0 or 1 as <span class="d_inlinecode donthyphenate notranslate">bool</span> (e.g. an overlapped union field).</li>
<li>Reading a <span class="d_inlinecode donthyphenate notranslate">void</span>-initialized <span class="d_inlinecode donthyphenate notranslate">bool</span>.
</li>
</ul>
<div class="runnable-examples">
<div class="d_code"><pre class="d_code"><span class="d_keyword">byte</span> i = 2;
<span class="d_keyword">bool</span> b = <span class="d_keyword">cast</span>(<span class="d_keyword">bool</span>) i; <span class="d_comment">// OK, same as `i != 0`
</span><span class="d_keyword">assert</span>(b);

<span class="d_keyword">bool</span>* p = <span class="d_keyword">cast</span>(<span class="d_keyword">bool</span>*) &amp;i; <span class="d_comment">// unsafe cast
</span><span class="d_comment">// `*p` holds 0x2, an invalid bool value
</span><span class="d_comment">// reading `*p` is undefined behavior
</span></pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Run" title="Note: Wraps code in `main` automatically if `main` is missing &amp; imports std.stdio.write[f][ln]"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
<h2><a class="anchor" title="Permalink to this section" id="functions" href="#functions">Function Types</a></h2>
<div class="blankline"></div>
<p>A function type has the form:</p>
<div class="blankline"></div>
<pre class="bnf notranslate"><a href="../spec/declaration.html#StorageClasses"><i>StorageClasses</i></a><sub>opt</sub> <a href="#Type"><i>Type</i></a> <a href="../spec/function.html#Parameters"><i>Parameters</i></a> <a href="../spec/function.html#FunctionAttributes"><i>FunctionAttributes</i></a><sub>opt</sub>
</pre>
<div class="blankline"></div>
<p>Function types are not included in the <a href="#Type"><i>Type</i></a> grammar.
A function type e.g. <span class="d_inlinecode donthyphenate notranslate">int(int)</span> <a href="../spec/declaration.html#alias-function">can be aliased</a>.
A function type is only used for type tests or as the target type of a pointer.</p>
<div class="blankline"></div>
<p>Instantiating a function type is illegal. Instead, a pointer to function
or delegate can be used. Those have these type forms respectively:</p>
<div class="blankline"></div>
<pre class="bnf notranslate"><a href="#Type"><i>Type</i></a> <span class="d_inlinecode donthyphenate notranslate">function</span> <a href="../spec/function.html#Parameters"><i>Parameters</i></a> <a href="../spec/function.html#FunctionAttributes"><i>FunctionAttributes</i></a><sub>opt</sub>
<a href="#Type"><i>Type</i></a> <span class="d_inlinecode donthyphenate notranslate">delegate</span> <a href="../spec/function.html#Parameters"><i>Parameters</i></a> <a href="../spec/function.html#MemberFunctionAttributes"><i>MemberFunctionAttributes</i></a><sub>opt</sub>
</pre>
<div class="blankline"></div>
<div class="runnable-examples" data-compile="">
<div class="d_code"><pre class="d_code"><span class="d_keyword">void</span> f(<span class="d_keyword">int</span>);
<span class="d_keyword">alias</span> Fun = <span class="d_keyword">void</span>(<span class="d_keyword">int</span>);
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(f) == Fun));
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(Fun* == <span class="d_keyword">void</span> <span class="d_keyword">function</span>(<span class="d_keyword">int</span>)));
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Compile"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
<p>See <a href="../spec/function.html#function-pointers">Function Pointers</a>.</p>
<div class="blankline"></div>
<h3><a class="anchor" title="Permalink to this section" id="delegates" href="#delegates">Delegates</a></h3>
<div class="blankline"></div>
<p>Delegates are an aggregate of two pieces of data, either:</p>
<ul><li>An object reference and a pointer to a non-static
  <a href="../spec/class.html#member-functions">member function</a>.</li>
<li>A pointer to a closure and a pointer to a
  <a href="../spec/function.html#nested">nested function</a>.
  The object reference forms the <span class="d_inlinecode donthyphenate notranslate">this</span> pointer when the function is called.</li>
</ul>
<div class="blankline"></div>
<p>Delegates are declared and initialized similarly to function pointers:</p>
<div class="blankline"></div>
<div class="runnable-examples" data-compile="">
<div class="d_code"><pre class="d_code"><span class="d_keyword">int</span> <span class="d_keyword">delegate</span>(<span class="d_keyword">int</span>) dg; <span class="d_comment">// dg is a delegate to a function
</span>
<span class="d_keyword">class</span> OB
{
    <span class="d_keyword">int</span> member(<span class="d_keyword">int</span>);
}

<span class="d_keyword">void</span> f(OB o)
{
    dg = &amp;o.member; <span class="d_comment">// dg is a delegate to object o and member function member
</span>}
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Compile"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
    <p>Delegates cannot be initialized with static member functions
    or non-member functions.
    </p>
<div class="blankline"></div>
    <p>Delegates are called analogously to function pointers:
    </p>
<div class="blankline"></div>
<pre class="d_code notranslate">fp(3);   <span class="d_comment">// call func(3)
</span>dg(3);   <span class="d_comment">// call o.member(3)
</span></pre>
<div class="blankline"></div>
    <p>The equivalent of member function pointers can be constructed
    using <a href="../spec/expression.html#function_literals">anonymous lambda functions</a>:</p>
<div class="blankline"></div>
<div class="runnable-examples">
<div class="d_code"><pre class="d_code"><span class="d_keyword">class</span> C
{
    <span class="d_keyword">int</span> a;
    <span class="d_keyword">int</span> foo(<span class="d_keyword">int</span> i) { <span class="d_keyword">return</span> i + a; }
}

<span class="d_comment">// mfp is the member function pointer
</span><span class="d_keyword">auto</span> mfp = <span class="d_keyword">function</span>(C self, <span class="d_keyword">int</span> i) { <span class="d_keyword">return</span> self.foo(i); };
<span class="d_keyword">auto</span> c = <span class="d_keyword">new</span> C();  <span class="d_comment">// create an instance of C
</span>mfp(c, 1);  <span class="d_comment">// and call c.foo(1)
</span></pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Run" title="Note: Wraps code in `main` automatically if `main` is missing &amp; imports std.stdio.write[f][ln]"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
<h2><a class="anchor" title="Permalink to this section" id="typeof" href="#typeof"><span class="d_inlinecode donthyphenate notranslate">typeof</span></a></h2>
<div class="blankline"></div>
<pre class="bnf notranslate"><a id="Typeof"><span class="gname">Typeof</span></a>:
    <span class="d_inlinecode donthyphenate notranslate">typeof (</span> <a href="../spec/expression.html#Expression"><i>Expression</i></a> <span class="d_inlinecode donthyphenate notranslate">)</span>
    <span class="d_inlinecode donthyphenate notranslate">typeof (</span> <span class="d_inlinecode donthyphenate notranslate">return</span> <span class="d_inlinecode donthyphenate notranslate">)</span>
</pre>
<div class="blankline"></div>
        <p>        <span class="d_inlinecode donthyphenate notranslate">typeof</span> is a way to specify a type based on the type
        of an expression. For example:
        </p>
<div class="blankline"></div>
<pre class="d_code notranslate"><span class="d_keyword">void</span> func(<span class="d_keyword">int</span> i)
{
    <span class="d_keyword">typeof</span>(i) j;       <span class="d_comment">// j is of type int
</span>    <span class="d_keyword">typeof</span>(3 + 6.0) x; <span class="d_comment">// x is of type double
</span>    <span class="d_keyword">typeof</span>(1)* p;      <span class="d_comment">// p is of type pointer to int
</span>    <span class="d_keyword">int</span>[<span class="d_keyword">typeof</span>(p)] a;  <span class="d_comment">// a is of type int[int*]
</span>
    writeln(<span class="d_keyword">typeof</span>('c').sizeof); <span class="d_comment">// prints 1
</span>    <span class="d_keyword">double</span> c = <span class="d_keyword">cast</span>(<span class="d_keyword">typeof</span>(1.0))j; <span class="d_comment">// cast j to double
</span>}
</pre>
<div class="blankline"></div>
        <p>        <i>Expression</i> is not evaluated, it is used purely to
        generate the type:
        </p>
<div class="blankline"></div>
<pre class="d_code notranslate"><span class="d_keyword">void</span> func()
{
    <span class="d_keyword">int</span> i = 1;
    <span class="d_keyword">typeof</span>(++i) j; <span class="d_comment">// j is declared to be an int, i is not incremented
</span>    writeln(i);  <span class="d_comment">// prints 1
</span>}
</pre>
<div class="blankline"></div>
        <p>If <em>Expression</em> is a
        <a href="../spec/template.html#variadic-templates"><i>ValueSeq</i></a>
        it will produce a <em>TypeSeq</em> containing the types of each element.</p>
<div class="blankline"></div>
        <p>Special cases: </p>
    <ol>        <li><span class="d_inlinecode donthyphenate notranslate">typeof(return)</span> will, when inside a function scope,
        give the return type of that function.
        </li>
        <li><a class="anchor" title="Permalink to this section" id="typeof-this" href="#typeof-this"><span class="d_inlinecode donthyphenate notranslate">typeof(this)</span></a> will generate the type of what <span class="d_inlinecode donthyphenate notranslate">this</span>
        would be in a non-static member function, even if not in a member
        function.
        </li>
        <li>Analogously, <span class="d_inlinecode donthyphenate notranslate">typeof(super)</span> will generate the type of what
        <span class="d_inlinecode donthyphenate notranslate">super</span> would be in a non-static member function.
        </li>
<div class="blankline"></div>
<pre class="d_code notranslate"><span class="d_keyword">class</span> A { }

<span class="d_keyword">class</span> B : A
{
    <span class="d_keyword">typeof</span>(<span class="d_keyword">this</span>) x;  <span class="d_comment">// x is declared to be a B
</span>    <span class="d_keyword">typeof</span>(<span class="d_keyword">super</span>) y; <span class="d_comment">// y is declared to be an A
</span>}

<span class="d_keyword">struct</span> C
{
    <span class="d_keyword">static</span> <span class="d_keyword">typeof</span>(<span class="d_keyword">this</span>) z;  <span class="d_comment">// z is declared to be a C
</span>
    <span class="d_keyword">typeof</span>(<span class="d_keyword">super</span>) q; <span class="d_comment">// error, no super struct for C
</span>}

<span class="d_keyword">typeof</span>(<span class="d_keyword">this</span>) r;   <span class="d_comment">// error, no enclosing struct or class
</span></pre>
    </ol>
<div class="blankline"></div>
        <p>If the expression is a <a href="../spec/function.html#property-functions">        Property Function</a>, <span class="d_inlinecode donthyphenate notranslate">typeof</span> gives its return type.
        </p>
<div class="blankline"></div>
<pre class="d_code notranslate"><span class="d_keyword">struct</span> S
{
    @property <span class="d_keyword">int</span> foo() { <span class="d_keyword">return</span> 1; }
}
<span class="d_keyword">typeof</span>(S.foo) n;  <span class="d_comment">// n is declared to be an int
</span></pre>
<div class="blankline"></div>
        <p>If the expression is a <a href="../spec/template.html">Template</a>,
        <span class="d_inlinecode donthyphenate notranslate">typeof</span> gives the type <span class="d_inlinecode donthyphenate notranslate">void</span>.
        </p>
<div class="blankline"></div>
<pre class="d_code notranslate"><span class="d_keyword">template</span> t {}
<span class="d_keyword">static</span> <span class="d_keyword">assert</span>(<span class="d_keyword">is</span>(<span class="d_keyword">typeof</span>(t) == <span class="d_keyword">void</span>));
</pre>
<div class="blankline"></div>
        <div class="spec-boxes best-practice"><b>Best Practices:</b>         <ol>        <li><i>Typeof</i> is most useful in writing generic
        template code.</li>
        </ol>
        </div>


<div class="blankline"></div>
<h2><a class="anchor" title="Permalink to this section" id="mixin_types" href="#mixin_types">Mixin Types</a></h2>
<div class="blankline"></div>
<pre class="bnf notranslate"><a id="MixinType"><span class="gname">MixinType</span></a>:
    <span class="d_inlinecode donthyphenate notranslate">mixin (</span> <a href="../spec/expression.html#ArgumentList"><i>ArgumentList</i></a> <span class="d_inlinecode donthyphenate notranslate">)</span>
</pre>
<div class="blankline"></div>
    <p>Each <a href="../spec/expression.html#AssignExpression"><i>AssignExpression</i></a> in the <i>ArgumentList</i> is
        evaluated at compile time, and the result must be representable
        as a string.
        The resulting strings are concatenated to form a string.
        The text contents of the string must be compilable as a valid
        <a href="../spec/type.html#Type"><i>Type</i></a>, and is compiled as such.</p>
<div class="blankline"></div>
<pre class="d_code notranslate"><span class="d_keyword">void</span> test(<span class="d_keyword">mixin</span>(<span class="d_string">"int"</span>)* p) <span class="d_comment">// int* p
</span>{
    <span class="d_keyword">mixin</span>(<span class="d_string">"int"</span>)[] a;      <span class="d_comment">// int[] a;
</span>    <span class="d_keyword">mixin</span>(<span class="d_string">"int[]"</span>) b;      <span class="d_comment">// int[] b;
</span>}
</pre>
<div class="blankline"></div>
<div class="blankline"></div>
<h2><a class="anchor" title="Permalink to this section" id="aliased-types" href="#aliased-types">Aliased Types</a></h2>
<div class="blankline"></div>
<h3><a class="anchor" title="Permalink to this section" id="size_t" href="#size_t"><span class="d_inlinecode donthyphenate notranslate">size_t</span></a></h3>
<div class="blankline"></div>
    <p><span class="d_inlinecode donthyphenate notranslate">size_t</span> is an alias to one of the unsigned integral basic types,
    and represents a type that is large enough to represent an offset into
    all addressable memory.</p>
<div class="blankline"></div>
<h3><a class="anchor" title="Permalink to this section" id="ptrdiff_t" href="#ptrdiff_t"><span class="d_inlinecode donthyphenate notranslate">ptrdiff_t</span></a></h3>
    <p><span class="d_inlinecode donthyphenate notranslate">ptrdiff_t</span> is an alias to the signed integral basic type the same size as <span class="d_inlinecode donthyphenate notranslate">size_t</span>.</p>
<div class="blankline"></div>
<h3><a class="anchor" title="Permalink to this section" id="string" href="#string"><span class="d_inlinecode donthyphenate notranslate">string</span></a></h3>
<div class="blankline"></div>
    <p>A <a href="../spec/arrays.html#strings"><i>string</i> is a special case of an array.</a></p>
<div class="blankline"></div>
<h3><a class="anchor" title="Permalink to this section" id="noreturn" href="#noreturn"><span class="d_inlinecode donthyphenate notranslate">noreturn</span></a></h3>
<div class="blankline"></div>
    <p><span class="d_inlinecode donthyphenate notranslate">noreturn</span> is the <a href="https://en.wikipedia.org/wiki/Bottom_type">bottom type</a>
    which can implicitly convert to any type, including <span class="d_inlinecode donthyphenate notranslate">void</span>.
    A value of type <span class="d_inlinecode donthyphenate notranslate">noreturn</span> will never be produced and the compiler can
    optimize such code accordingly.</p>
<div class="blankline"></div>
    <p>A function that <a href="../spec/function.html#function-return-values">never returns</a>
    has the return type <span class="d_inlinecode donthyphenate notranslate">noreturn</span>. This can
    occur due to an infinite loop or always throwing an exception.</p>
<div class="blankline"></div>
<div class="runnable-examples" data-compile="">
<div class="d_code"><pre class="d_code">noreturn abort(<span class="d_keyword">const</span>(<span class="d_keyword">char</span>)[] message);

<span class="d_keyword">int</span> example(<span class="d_keyword">int</span> i)
{
    <span class="d_keyword">if</span> (i &lt; 0)
    {
        <span class="d_comment">// abort does not return, so it doesn't need to produce an int
</span>        <span class="d_keyword">int</span> val = abort(<span class="d_string">"less than zero"</span>);
    }
    <span class="d_comment">// ternary expression's common type is still int
</span>    <span class="d_keyword">return</span> i != 0 ? 1024 / i : abort(<span class="d_string">"calculation went awry."</span>);
}
</pre></div><div class="d_run_code" style="display: block;"><textarea class="d_code" style="display: none;"></textarea><div class="d_code_output"><span class="d_code_title">Application output</span><br><pre class="d_code_output" readonly="">Running...</pre></div><input type="button" class="editButton" value="Edit"><input type="button" class="runButton" value="Compile"><input type="button" class="resetButton" value="Reset"><input type="button" class="openInEditorButton" value="Open in IDE"></div>

</div>
<div class="blankline"></div>
    <p><span class="d_inlinecode donthyphenate notranslate">noreturn</span> is defined as <span class="d_inlinecode donthyphenate notranslate">typeof(*null)</span>. This is because
    dereferencing a null literal halts execution.</p>
<div class="blankline"></div>
<div class="blankline"></div>

<div style="float: left"><i class="fa fa-angle-left" aria-hidden="true"></i> <a href="../spec/declaration.html">Declarations</a></div>
<div style="float: right"><a href="../spec/property.html">Properties</a> <i class="fa fa-angle-right" aria-hidden="true"></i></div>
<div style="clear:both"></div>
)


        <div class="smallprint" id="copyright">Copyright © 1999-2025 by the <a href="../foundation_overview.html">D Language Foundation</a> | Page generated by
<a href="../spec/ddoc.html">Ddoc</a> on Sun Jan 19 00:16:20 2025
</div>
    </div>
