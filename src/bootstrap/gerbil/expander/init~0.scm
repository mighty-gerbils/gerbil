(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1781697564)
  (begin
    (let ((__tmp194865
           (let ((__obj194863
                  (let ()
                    (declare (not safe))
                    (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
             (let ()
               (declare (not safe))
               (gx#top-context:::init!__0 __obj194863))
             __obj194863)))
      (declare (not safe))
      (gx#current-expander-context __tmp194865))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-import gx#core-import-module))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-eval gx#core-eval-module))
    (let () (declare (not safe)) (gx#current-expander-compile __compile-top))
    (let () (declare (not safe)) (gx#current-expander-eval ##eval))
    (let ((__tmp194866
           (let ((__obj194864
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
               (gx#prelude-context:::init!__0 __obj194864 '#f))
             __obj194864)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp194866 '#t))))
