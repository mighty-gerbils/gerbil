(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1781119050)
  (begin
    (gx#current-expander-context (gx#make-top-context))
    (gx#current-expander-module-import gx#core-import-module)
    (gx#current-expander-module-eval gx#core-eval-module)
    (gx#current-expander-compile __compile-top)
    (gx#current-expander-eval ##eval)
    (gx#core-bind-root-syntax! ':<root> (gx#make-prelude-context '#f) '#t)))
