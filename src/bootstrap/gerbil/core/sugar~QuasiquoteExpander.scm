(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "gerbil/core/sugar~Sugar-1")
    (load-module "gerbil/core/sugar~Sugar-2")
    (load-module "gerbil/core/expander"))
  (load-module "gerbil/core/sugar~QuasiquoteExpander~0"))
