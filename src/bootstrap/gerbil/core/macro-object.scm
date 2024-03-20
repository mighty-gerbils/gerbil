(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "gerbil/core/runtime")
    (load-module "gerbil/core/expander")
    (load-module "gerbil/core/sugar")
    (load-module "gerbil/core/mop"))
  (load-module "gerbil/core/macro-object~0"))
