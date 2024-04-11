(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1712836658)
  (begin
    (let ((__tmp131105
           (let ((__obj131103
                  (let ()
                    (declare (not safe))
                    (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
             (let ()
               (declare (not safe))
               (gx#top-context:::init!__0 __obj131103))
             __obj131103)))
      (declare (not safe))
      (gx#current-expander-context __tmp131105))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-import gx#core-import-module))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-eval gx#core-eval-module))
    (let () (declare (not safe)) (gx#current-expander-compile __compile-top))
    (let () (declare (not safe)) (gx#current-expander-eval ##eval))
    (let ((__tmp131106
           (let ((__obj131104
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
               (gx#prelude-context:::init!__0 __obj131104 '#f))
             __obj131104)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp131106 '#t))))
