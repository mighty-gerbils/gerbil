(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1712773526)
  (begin
    (let ((__tmp129949
           (let ((__obj129947
                  (let ()
                    (declare (not safe))
                    (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
             (gx#top-context:::init! __obj129947)
             __obj129947)))
      (declare (not safe))
      (gx#current-expander-context __tmp129949))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-import gx#core-import-module))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-eval gx#core-eval-module))
    (let () (declare (not safe)) (gx#current-expander-compile __compile-top))
    (let () (declare (not safe)) (gx#current-expander-eval ##eval))
    (let ((__tmp129950
           (let ((__obj129948
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
             (gx#prelude-context:::init! __obj129948 '#f)
             __obj129948)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp129950 '#t))))
