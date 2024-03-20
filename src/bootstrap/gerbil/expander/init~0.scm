(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1710943026)
  (begin
    (gx#current-expander-context
     (let ((__obj98955
            (let ()
              (declare (not safe))
              (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
       (gx#top-context:::init! __obj98955)
       __obj98955))
    (gx#current-expander-module-import gx#core-import-module)
    (gx#current-expander-module-eval gx#core-eval-module)
    (gx#current-expander-compile __compile-top)
    (gx#current-expander-eval ##eval)
    (let ((__tmp98957
           (let ((__obj98956
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
             (gx#prelude-context:::init! __obj98956 '#f)
             __obj98956)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp98957 '#t))))
