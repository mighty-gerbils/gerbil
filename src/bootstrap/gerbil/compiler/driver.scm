(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "gerbil/expander")
    (load-module "gerbil/runtime/error")
    (load-module "gerbil/compiler/base")
    (load-module "gerbil/compiler/compile")
    (load-module "gerbil/compiler/optimize"))
  (load-module "gerbil/compiler/driver~0"))
