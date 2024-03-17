(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxCase[:0:]#syntax| gx#macro-expand-syntax)
  (define |gerbil/core/expander~SyntaxCase[:0:]#syntax-case|
    gx#macro-expand-syntax-case))
