## 目录
[toc]

*斜体*
**加粗**
***加粗的斜体***
~~带删除线的文本~~

# 一号标题
## 二号标题
### 三号标题
#### 四号标题
##### 五号标题
###### 六号标题
####### 没有七号标题

## 引用
> 引用的内容

> 外层引用
> > 嵌套引用
> > > 嵌套引用2

## 代码格式化
支持的语言：1c, abnf, accesslog, actionscript, ada, apache, applescript, arduino, armasm, asciidoc, aspectj, autohotkey, autoit, avrasm, awk, axapta, bash, basic, bnf, brainfuck, cal, capnproto, ceylon, clean, clojure, clojure-repl, cmake, coffeescript, coq, cos, cpp, crmsh, crystal, cs, csp, css, d, dart, delphi, diff, django, dns, dockerfile, dos, dsconfig, dts, dust, ebnf, elixir, elm, erb, erlang, erlang-repl, excel, fix, flix, fortran, fsharp, gams, gauss, gcode, gherkin, glsl, go, golo, gradle, groovy, haml, handlebars, haskell, haxe, hsp, htmlbars, http, hy, inform7, ini, irpf90, java, javascript, json, julia, kotlin, lasso, ldif, leaf, less, lisp, livecodeserver, livescript, llvm, lsl, lua, makefile, markdown, mathematica, matlab, maxima, mel, mercury, mipsasm, mizar, mojolicious, monkey, moonscript, n1ql, nginx, nimrod, nix, nsis, objectivec, ocaml, openscad, oxygene, parser3, perl, pf, php, pony, powershell, processing, profile, prolog, protobuf, puppet, purebasic, python, q, qml, r, rib, roboconf, rsl, ruby, ruleslanguage, rust, scala, scheme, scilab, scss, smali, smalltalk, sml, sqf, sql, stan, stata, step21, stylus, subunit, swift, taggerscript, tap, tcl, tex, thrift, tp, twig, typescript, vala, vbnet, vbscript, vbscript-html, verilog, vhdl, vim, x86asm, xl, xml, xquery, yaml, zephir
### 行内代码
`String s="1"`
### 代码块
```css
p{
text-indent:2em;
}
```

```cs
String a = 12;
```
```java
String a = 12;
```
```javascript
var a = 12;
```

## 列表

- 沈阳
- 大连
- 鞍山
 - 多层嵌套
  - 多层嵌套
   - 多层嵌套
    - 多层嵌套
1. 沈阳
    1. 和平
    2. 沈河
  - 南塔
  - 五爱
2. 大连
3. 鞍山

## 链接
### 行内式链接
[baidu](https://baidu.com "链接")

### 参考式链接(先定义再使用)
[baidu]: http://www.baidu.com "百度"
[百度][baidu]

## 图片
### 行内式图片
![海报](https://gaoqing.fm/uploads/2019/13fa8fc40be2.jpg "舞出我人生")

### 参考式图片(先定义再使用)
[film]: https://gaoqing.fm/uploads/2019/13fa8fc40be2.jpg "舞出我人生"
![海报][film]

## 脚注(定义的脚注永远显示在页面的最下方)
### 先定义再使用
[^fs]:Farseer

[^bm]:BladeMaster

#### 先知[^fs]的狼被增强!
#### 但剑圣[^bm]依然是首发第一选择.
#### 因为先知[^fs]后期不给力.

## 表格 *(每行两端的竖线可以省略,冒号用来对齐)*
英雄|所属种族|主要属性
----|:----:|----:
|先知|Orc|智力|
剑圣|Orc|敏捷
牛头人酋长|Orc|力量
暗影萨满|Orc|敏捷

## 公式编辑(语法为MathJax)
### 行内公式
圆的面积:
$ s=\pi r^2 $
### 陈列公式
$$
s=\pi r^2
$$

## 序列图
```sequence
title:作业通知提交序列图
教师-->班长: 明天交作业
note left of 教师: 通知
班长-->同学们:记得明天交作业
同学们->>班长:了解
同学们-->教师:交作业
note right of 同学们:作业
```
