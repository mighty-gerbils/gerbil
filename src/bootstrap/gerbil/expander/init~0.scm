(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1712757955)
  (begin
    (let ((__tmp129558
           (let ((__obj129556
                  (let ()
                    (declare (not safe))
                    (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
             (gx#top-context:::init! __obj129556)
             __obj129556)))
      (declare (not safe))
      (gx#current-expander-context __tmp129558))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-import gx#core-import-module))
    (let ()
      (declare (not safe))
      (gx#current-expander-module-eval gx#core-eval-module))
    (let () (declare (not safe)) (gx#current-expander-compile __compile-top))
    (let () (declare (not safe)) (gx#current-expander-eval ##eval))
    (let ((__tmp129559
           (let ((__obj129557
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
             (gx#prelude-context:::init! __obj129557 '#f)
             __obj129557)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp129559 '#t))))
