(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1710699091)
  (begin
    (gx#current-expander-context
     (let ((__obj98583
            (let ()
              (declare (not safe))
              (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
       (gx#top-context:::init! __obj98583)
       __obj98583))
    (gx#current-expander-module-import gx#core-import-module)
    (gx#current-expander-module-eval gx#core-eval-module)
    (gx#current-expander-compile __compile-top)
    (gx#current-expander-eval ##eval)
    (let ((__tmp98585
           (let ((__obj98584
                  (let ()
                    (declare (not safe))
                    (##structure
                     gx#prelude-context::t
                     '#f
                     '#f
                     '#f
                     '#f
                     '#f
                     '#f
                     '#f
                     '#f))))
             (gx#prelude-context:::init! __obj98584 '#f)
             __obj98584)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp98585 '#t))))
