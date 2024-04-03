(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712124233)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-144-g915395dd"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil"
                  (let () (declare (not safe)) (gerbil-version-string)))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest90523%_ _%port90524%_)
        (let ((_%p90530%_
               (lambda (_%g9052590527%_)
                 (display _%g9052590527%_ _%port90524%_)))
              (_%l90531%_ (length _%manifest90523%_))
              (_%i90532%_ '0))
          (for-each
           (lambda (_%layer90534%_)
             (if (zero? _%i90532%_)
                 (let () '#!void)
                 (if (= _%i90532%_ '1)
                     (let ()
                       (let () (declare (not safe)) (_%p90530%_ '" on ")))
                     (let ()
                       (let () (declare (not safe)) (_%p90530%_ '", ")))))
             (let* ((_%layer9053890545%_ _%layer90534%_)
                    (_%E9054090549%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9053890545%_
                              '([name . version]))
                       '#!void))
                    (_%K9054190555%_
                     (lambda (_%version90552%_ _%name90553%_)
                       (let () (declare (not safe)) (_%p90530%_ _%name90553%_))
                       (let () (declare (not safe)) (_%p90530%_ '" "))
                       (let ()
                         (declare (not safe))
                         (_%p90530%_ _%version90552%_)))))
               (if (let () (declare (not safe)) (##pair? _%layer9053890545%_))
                   (let ((_%hd9054290558%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9053890545%_)))
                         (_%tl9054390560%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9053890545%_))))
                     (let* ((_%name90563%_ _%hd9054290558%_)
                            (_%version90565%_ _%tl9054390560%_))
                       (declare (not safe))
                       (_%K9054190555%_ _%version90565%_ _%name90563%_)))
                   (let () (declare (not safe)) (_%E9054090549%_))))
             (set! _%i90532%_ (+ _%i90532%_ '1)))
           _%manifest90523%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest90571%_ build-manifest)
               (_%port90573%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest90571%_ _%port90573%_))))
    (define display-build-manifest__1
      (lambda (_%manifest90575%_)
        (let ((_%port90577%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest90575%_ _%port90577%_))))
    (define display-build-manifest
      (lambda _g90583_
        (let ((_g90582_ (let () (declare (not safe)) (##length _g90583_))))
          (cond ((let () (declare (not safe)) (##fx= _g90582_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g90583_))
                ((let () (declare (not safe)) (##fx= _g90582_ 1))
                 (apply (lambda (_%manifest90575%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _%manifest90575%_)))
                        _g90583_))
                ((let () (declare (not safe)) (##fx= _g90582_ 2))
                 (apply (lambda (_%manifest90579%_ _%port90580%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _%manifest90579%_
                             _%port90580%_)))
                        _g90583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g90583_))))))
    (define build-manifest/layer
      (lambda (_%layer90518%_)
        (let ((_%l90520%_ (assoc _%layer90518%_ build-manifest)))
          (if _%l90520%_ (cons _%l90520%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest90505%_)
        (call-with-output-string
         '()
         (lambda (_%p90507%_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _%manifest90505%_ _%p90507%_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest90513%_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _%manifest90513%_))))
    (define build-manifest-string
      (lambda _g90585_
        (let ((_g90584_ (let () (declare (not safe)) (##length _g90585_))))
          (cond ((let () (declare (not safe)) (##fx= _g90584_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g90585_))
                ((let () (declare (not safe)) (##fx= _g90584_ 1))
                 (apply (lambda (_%manifest90515%_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _%manifest90515%_)))
                        _g90585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g90585_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let ()
          (declare (not safe))
          (build-manifest-string__% gerbil-system-manifest))))
    (define gerbil-greeting
      (let () (declare (not safe)) (gerbil-system-version-string)))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e90499%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e90499%_ _%$e90499%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e90495%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e90495%_ _%$e90495%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (if (let ((__tmp90586
                             (let ((__tmp90587 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp90587 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp90586))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
