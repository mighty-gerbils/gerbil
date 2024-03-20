(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1710943498)
  (begin
    (gx#current-expander-context
     (let ((__obj98936
            (let ()
              (declare (not safe))
              (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
       (gx#top-context:::init! __obj98936)
       __obj98936))
    (gx#current-expander-module-import gx#core-import-module)
    (gx#current-expander-module-eval gx#core-eval-module)
    (gx#current-expander-compile __compile-top)
    (gx#current-expander-eval ##eval)
    (let ((__tmp98938
           (let ((__obj98937
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
             (gx#prelude-context:::init! __obj98937 '#f)
             __obj98937)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp98938 '#t))))
