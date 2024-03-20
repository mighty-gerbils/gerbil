(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "gerbil/runtime")
    (load-module "gerbil/expander/core")
    (load-module "gerbil/expander/module")
    (load-module "gerbil/expander/top")
    (load-module "gerbil/expander/root"))
  (load-module "gerbil/expander/init~0"))
