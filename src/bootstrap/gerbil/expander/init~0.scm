(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/init::timestamp 1711709197)
  (begin
    (gx#current-expander-context
     (let ((__obj95382
            (let ()
              (declare (not safe))
              (##structure gx#top-context::t '#f '#f '#f '#f '#f))))
       (gx#top-context:::init! __obj95382)
       __obj95382))
    (gx#current-expander-module-import gx#core-import-module)
    (gx#current-expander-module-eval gx#core-eval-module)
    (gx#current-expander-compile __compile-top)
    (gx#current-expander-eval ##eval)
    (let ((__tmp95384
           (let ((__obj95383
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
             (gx#prelude-context:::init! __obj95383 '#f)
             __obj95383)))
      (declare (not safe))
      (gx#core-bind-root-syntax!__% ':<root> __tmp95384 '#t))))
