(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1712093477)
  (begin
    (let ((__tmp129370
           (let ((__obj129368
                  (let ()
                    (declare (not safe))
                    (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
             (gx#top-context:::init! __obj129368)
             __obj129368)))
      (declare (not safe))
      (gx#current-expander-context __tmp129370))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-import gx#core-import-module))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-eval gx#core-eval-module))
    (let () (declare (not safe)) (gx#current-expander-compile __compile-top))
    (let () (declare (not safe)) (gx#current-expander-eval ##eval))
    (let ((__tmp129371
           (let ((__obj129369
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
             (gx#prelude-context:::init! __obj129369 '#f)
             __obj129369)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp129371 '#t))))
