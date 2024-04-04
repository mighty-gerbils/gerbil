(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1712256087)
  (begin
    (let ((__tmp129897
           (let ((__obj129895
                  (let ()
                    (declare (not safe))
                    (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
             (gx#top-context:::init! __obj129895)
             __obj129895)))
      (declare (not safe))
      (gx#current-expander-context __tmp129897))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-import gx#core-import-module))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-eval gx#core-eval-module))
    (let () (declare (not safe)) (gx#current-expander-compile __compile-top))
    (let () (declare (not safe)) (gx#current-expander-eval ##eval))
    (let ((__tmp129898
           (let ((__obj129896
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
             (gx#prelude-context:::init! __obj129896 '#f)
             __obj129896)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp129898 '#t))))
