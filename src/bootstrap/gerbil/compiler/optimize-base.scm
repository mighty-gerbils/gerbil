(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "gerbil/core/expander")
    (load-module "gerbil/expander")
    (load-module "gerbil/runtime/c3")
    (load-module "gerbil/compiler/base")
    (load-module "gerbil/compiler/compile"))
  (load-module "gerbil/compiler/optimize-base~0"))
