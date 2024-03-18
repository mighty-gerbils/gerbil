(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "gerbil/runtime/gambit")
    (load-module "gerbil/runtime/util")
    (load-module "gerbil/runtime/error")
    (load-module "gerbil/runtime/hash"))
  (load-module "gerbil/runtime/thread~0"))
