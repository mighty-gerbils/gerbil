(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712643206)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-107-gaa66a182"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest90711%_ _%port90712%_)
        (let ((_%p90718%_
               (lambda (_%g9071390715%_)
                 (display _%g9071390715%_ _%port90712%_)))
              (_%l90719%_ (length _%manifest90711%_))
              (_%i90720%_ '0))
          (for-each
           (lambda (_%layer90722%_)
             (if (zero? _%i90720%_)
                 '#!void
                 (if (= _%i90720%_ '1)
                     (_%p90718%_ '" on ")
                     (_%p90718%_ '", ")))
             (let* ((_%layer9072690733%_ _%layer90722%_)
                    (_%E9072890737%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9072690733%_
                              '([name . version]))
                       '#!void))
                    (_%K9072990743%_
                     (lambda (_%version90740%_ _%name90741%_)
                       (_%p90718%_ _%name90741%_)
                       (_%p90718%_ '" ")
                       (_%p90718%_ _%version90740%_))))
               (if (let () (declare (not safe)) (##pair? _%layer9072690733%_))
                   (let ((_%hd9073090746%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9072690733%_)))
                         (_%tl9073190748%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9072690733%_))))
                     (let* ((_%name90751%_ _%hd9073090746%_)
                            (_%version90753%_ _%tl9073190748%_))
                       (_%K9072990743%_ _%version90753%_ _%name90751%_)))
                   (_%E9072890737%_)))
             (set! _%i90720%_ (+ _%i90720%_ '1)))
           _%manifest90711%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest90759%_ build-manifest)
               (_%port90761%_ (current-output-port)))
          (display-build-manifest__% _%manifest90759%_ _%port90761%_))))
    (define display-build-manifest__1
      (lambda (_%manifest90763%_)
        (let ((_%port90765%_ (current-output-port)))
          (display-build-manifest__% _%manifest90763%_ _%port90765%_))))
    (define display-build-manifest
      (lambda _g90771_
        (let ((_g90770_ (let () (declare (not safe)) (##length _g90771_))))
          (cond ((let () (declare (not safe)) (##fx= _g90770_ 0))
                 (apply display-build-manifest__0 _g90771_))
                ((let () (declare (not safe)) (##fx= _g90770_ 1))
                 (apply display-build-manifest__1 _g90771_))
                ((let () (declare (not safe)) (##fx= _g90770_ 2))
                 (apply display-build-manifest__% _g90771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g90771_))))))
    (define build-manifest/layer
      (lambda (_%layer90706%_)
        (let ((_%l90708%_ (assoc _%layer90706%_ build-manifest)))
          (if _%l90708%_ (cons _%l90708%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest90693%_)
        (call-with-output-string
         '()
         (lambda (_%p90695%_)
           (display-build-manifest__% _%manifest90693%_ _%p90695%_)))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest90701%_ build-manifest))
          (build-manifest-string__% _%manifest90701%_))))
    (define build-manifest-string
      (lambda _g90773_
        (let ((_g90772_ (let () (declare (not safe)) (##length _g90773_))))
          (cond ((let () (declare (not safe)) (##fx= _g90772_ 0))
                 (apply build-manifest-string__0 _g90773_))
                ((let () (declare (not safe)) (##fx= _g90772_ 1))
                 (apply build-manifest-string__% _g90773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g90773_))))))
    (define gerbil-system-version-string
      (lambda () (build-manifest-string__% gerbil-system-manifest)))
    (define gerbil-greeting (gerbil-system-version-string))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e90687%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e90687%_ _%$e90687%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e90683%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e90683%_ _%$e90683%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp90774
                             (let ((__tmp90775 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp90775 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp90774))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
