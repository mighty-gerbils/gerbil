(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "gerbil/expander/common")
    (load-module "gerbil/expander/stx")
    (load-module "gerbil/expander/core"))
  (load-module "gerbil/expander/compile~0"))
