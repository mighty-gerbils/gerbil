(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1713001406)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-110-ga4eceede8"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (define build-manifest-set!
      (lambda (_%new-value92901%_)
        (if (list? _%new-value92901%_)
            (let ((_%new-value92905%_ _%new-value92901%_))
              (__build-manifest-set! _%new-value92905%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value92901%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value92888%_)
        (let ((_%new-value92892%_ _%new-value92888%_))
          (set! build-manifest _%new-value92892%_))))
    (define display-build-manifest__%
      (lambda (_%manifest92829%_ _%port92830%_)
        (let ((_%p92836%_
               (lambda (_%g9283192833%_)
                 (display _%g9283192833%_ _%port92830%_)))
              (_%l92837%_ (length _%manifest92829%_))
              (_%i92838%_ '0))
          (for-each
           (lambda (_%layer92840%_)
             (if (zero? _%i92838%_)
                 '#!void
                 (if (= _%i92838%_ '1)
                     (_%p92836%_ '" on ")
                     (_%p92836%_ '", ")))
             (let* ((_%layer9284492851%_ _%layer92840%_)
                    (_%E9284692855%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9284492851%_
                              '([name . version]))
                       '#!void))
                    (_%K9284792861%_
                     (lambda (_%version92858%_ _%name92859%_)
                       (_%p92836%_ _%name92859%_)
                       (_%p92836%_ '" ")
                       (_%p92836%_ _%version92858%_))))
               (if (let () (declare (not safe)) (##pair? _%layer9284492851%_))
                   (let ((_%hd9284892864%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9284492851%_)))
                         (_%tl9284992866%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9284492851%_))))
                     (let* ((_%name92869%_ _%hd9284892864%_)
                            (_%version92871%_ _%tl9284992866%_))
                       (_%K9284792861%_ _%version92871%_ _%name92869%_)))
                   (_%E9284692855%_)))
             (set! _%i92838%_ (+ _%i92838%_ '1)))
           _%manifest92829%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest92877%_ build-manifest)
               (_%port92879%_ (current-output-port)))
          (display-build-manifest__% _%manifest92877%_ _%port92879%_))))
    (define display-build-manifest__1
      (lambda (_%manifest92881%_)
        (let ((_%port92883%_ (current-output-port)))
          (display-build-manifest__% _%manifest92881%_ _%port92883%_))))
    (define display-build-manifest
      (lambda _g92916_
        (let ((_g92915_ (let () (declare (not safe)) (##length _g92916_))))
          (cond ((let () (declare (not safe)) (##fx= _g92915_ 0))
                 (apply display-build-manifest__0 _g92916_))
                ((let () (declare (not safe)) (##fx= _g92915_ 1))
                 (apply display-build-manifest__1 _g92916_))
                ((let () (declare (not safe)) (##fx= _g92915_ 2))
                 (apply display-build-manifest__% _g92916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g92916_))))))
    (define build-manifest/layer
      (lambda (_%layer92824%_)
        (let ((_%l92826%_ (assoc _%layer92824%_ build-manifest)))
          (if _%l92826%_ (cons _%l92826%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest92811%_)
        (call-with-output-string
         '()
         (lambda (_%p92813%_)
           (display-build-manifest__% _%manifest92811%_ _%p92813%_)))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest92819%_ build-manifest))
          (build-manifest-string__% _%manifest92819%_))))
    (define build-manifest-string
      (lambda _g92918_
        (let ((_g92917_ (let () (declare (not safe)) (##length _g92918_))))
          (cond ((let () (declare (not safe)) (##fx= _g92917_ 0))
                 (apply build-manifest-string__0 _g92918_))
                ((let () (declare (not safe)) (##fx= _g92917_ 1))
                 (apply build-manifest-string__% _g92918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g92918_))))))
    (define gerbil-system-version-string
      (lambda () (build-manifest-string__% gerbil-system-manifest)))
    (define gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting-set!
      (lambda (_%new-value92795%_)
        (if (string? _%new-value92795%_)
            (let ((_%new-value92799%_ _%new-value92795%_))
              (__gerbil-greeting-set! _%new-value92799%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value92795%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value92781%_)
        (let ((_%new-value92785%_ _%new-value92781%_))
          (set! gerbil-greeting _%new-value92785%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e92777%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e92777%_ _%$e92777%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e92773%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e92773%_ _%$e92773%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp92919
                             (let ((__tmp92920 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp92920 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp92919))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
