(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712121897)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-142-g93e149b5"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil"
                  (let () (declare (not safe)) (gerbil-version-string)))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest90488%_ _%port90489%_)
        (let ((_%p90495%_
               (lambda (_%g9049090492%_)
                 (display _%g9049090492%_ _%port90489%_)))
              (_%l90496%_ (length _%manifest90488%_))
              (_%i90497%_ '0))
          (for-each
           (lambda (_%layer90499%_)
             (if (zero? _%i90497%_)
                 (let () '#!void)
                 (if (= _%i90497%_ '1)
                     (let ()
                       (let () (declare (not safe)) (_%p90495%_ '" on ")))
                     (let ()
                       (let () (declare (not safe)) (_%p90495%_ '", ")))))
             (let* ((_%layer9050390510%_ _%layer90499%_)
                    (_%E9050590514%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9050390510%_
                              '([name . version]))
                       '#!void))
                    (_%K9050690520%_
                     (lambda (_%version90517%_ _%name90518%_)
                       (let () (declare (not safe)) (_%p90495%_ _%name90518%_))
                       (let () (declare (not safe)) (_%p90495%_ '" "))
                       (let ()
                         (declare (not safe))
                         (_%p90495%_ _%version90517%_)))))
               (if (let () (declare (not safe)) (##pair? _%layer9050390510%_))
                   (let ((_%hd9050790523%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9050390510%_)))
                         (_%tl9050890525%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9050390510%_))))
                     (let* ((_%name90528%_ _%hd9050790523%_)
                            (_%version90530%_ _%tl9050890525%_))
                       (declare (not safe))
                       (_%K9050690520%_ _%version90530%_ _%name90528%_)))
                   (let () (declare (not safe)) (_%E9050590514%_))))
             (set! _%i90497%_ (+ _%i90497%_ '1)))
           _%manifest90488%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest90536%_ build-manifest)
               (_%port90538%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest90536%_ _%port90538%_))))
    (define display-build-manifest__1
      (lambda (_%manifest90540%_)
        (let ((_%port90542%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest90540%_ _%port90542%_))))
    (define display-build-manifest
      (lambda _g90548_
        (let ((_g90547_ (let () (declare (not safe)) (##length _g90548_))))
          (cond ((let () (declare (not safe)) (##fx= _g90547_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g90548_))
                ((let () (declare (not safe)) (##fx= _g90547_ 1))
                 (apply (lambda (_%manifest90540%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _%manifest90540%_)))
                        _g90548_))
                ((let () (declare (not safe)) (##fx= _g90547_ 2))
                 (apply (lambda (_%manifest90544%_ _%port90545%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _%manifest90544%_
                             _%port90545%_)))
                        _g90548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g90548_))))))
    (define build-manifest/layer
      (lambda (_%layer90483%_)
        (let ((_%l90485%_ (assoc _%layer90483%_ build-manifest)))
          (if _%l90485%_ (cons _%l90485%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest90470%_)
        (call-with-output-string
         '()
         (lambda (_%p90472%_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _%manifest90470%_ _%p90472%_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest90478%_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _%manifest90478%_))))
    (define build-manifest-string
      (lambda _g90550_
        (let ((_g90549_ (let () (declare (not safe)) (##length _g90550_))))
          (cond ((let () (declare (not safe)) (##fx= _g90549_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g90550_))
                ((let () (declare (not safe)) (##fx= _g90549_ 1))
                 (apply (lambda (_%manifest90480%_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _%manifest90480%_)))
                        _g90550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g90550_))))))
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
        (let ((_%$e90464%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e90464%_ _%$e90464%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e90460%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e90460%_ _%$e90460%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (if (let ((__tmp90551
                             (let ((__tmp90552 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp90552 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp90551))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
