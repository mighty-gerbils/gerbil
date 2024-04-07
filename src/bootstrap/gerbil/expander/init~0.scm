(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1712526090)
  (begin
    (let ((__tmp129824
           (let ((__obj129822
                  (let ()
                    (declare (not safe))
                    (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
             (gx#top-context:::init! __obj129822)
             __obj129822)))
      (declare (not safe))
      (gx#current-expander-context __tmp129824))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-import gx#core-import-module))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-eval gx#core-eval-module))
    (let () (declare (not safe)) (gx#current-expander-compile __compile-top))
    (let () (declare (not safe)) (gx#current-expander-eval ##eval))
    (let ((__tmp129825
           (let ((__obj129823
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
             (gx#prelude-context:::init! __obj129823 '#f)
             __obj129823)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp129825 '#t))))
