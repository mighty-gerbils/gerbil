(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "gerbil/core/expander")
    (load-module "gerbil/expander")
    (load-module "gerbil/compiler/base")
    (load-module "gerbil/compiler/method")
    (load-module "gerbil/compiler/optimize-base")
    (load-module "gerbil/compiler/optimize-xform"))
  (load-module "gerbil/compiler/optimize-call~0"))
