(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1770607524)
  (begin
    (let ((__tmp187812
           (let ((__obj187810
                  (let ()
                    (declare (not safe))
                    (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
             (let ()
               (declare (not safe))
               (gx#top-context:::init!__0 __obj187810))
             __obj187810)))
      (declare (not safe))
      (gx#current-expander-context __tmp187812))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-import gx#core-import-module))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-eval gx#core-eval-module))
    (let () (declare (not safe)) (gx#current-expander-compile __compile-top))
    (let () (declare (not safe)) (gx#current-expander-eval ##eval))
    (let ((__tmp187813
           (let ((__obj187811
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
               (gx#prelude-context:::init!__0 __obj187811 '#f))
             __obj187811)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp187813 '#t))))
