(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1768865824)
  (begin
    (let ((__tmp145041
           (let ((__obj145039
                  (let ()
                    (declare (not safe))
                    (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
             (let ()
               (declare (not safe))
               (gx#top-context:::init!__0 __obj145039))
             __obj145039)))
      (declare (not safe))
      (gx#current-expander-context __tmp145041))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-import gx#core-import-module))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-eval gx#core-eval-module))
    (let () (declare (not safe)) (gx#current-expander-compile __compile-top))
    (let () (declare (not safe)) (gx#current-expander-eval ##eval))
    (let ((__tmp145042
           (let ((__obj145040
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
             (let ()
               (declare (not safe))
               (gx#prelude-context:::init!__0 __obj145040 '#f))
             __obj145040)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp145042 '#t))))
