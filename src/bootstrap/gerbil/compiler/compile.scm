(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "gerbil/core/expander")
    (load-module "gerbil/expander")
    (load-module "gerbil/compiler/base")
    (load-module "gerbil/compiler/method"))
  (load-module "gerbil/compiler/compile~0"))
