(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1733868034)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-135-gadd552d7e"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value94563%_)
        (if (list? _%new-value94563%_)
            (let ((_%new-value94567%_ _%new-value94563%_))
              (__build-manifest-set! _%new-value94567%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value94563%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value94550%_)
        (let ((_%new-value94554%_ _%new-value94550%_))
          (set! __build-manifest _%new-value94554%_))))
    (define display-build-manifest__%
      (lambda (_%manifest94510%_ _%port94511%_)
        (if (list? _%manifest94510%_)
            (let ((_%manifest94515%_ _%manifest94510%_))
              (if (port? _%port94511%_)
                  (let ((_%port94525%_ _%port94511%_))
                    (__display-build-manifest__%
                     _%manifest94515%_
                     _%port94525%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port94511%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest94510%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest94539%_ __build-manifest)
               (_%port94541%_ (current-output-port)))
          (__display-build-manifest__% _%manifest94539%_ _%port94541%_))))
    (define display-build-manifest__1
      (lambda (_%manifest94543%_)
        (let ((_%port94545%_ (current-output-port)))
          (display-build-manifest__% _%manifest94543%_ _%port94545%_))))
    (define display-build-manifest
      (lambda _g94579_
        (let ((_g94578_ (let () (declare (not safe)) (##length _g94579_))))
          (cond ((let () (declare (not safe)) (##fx= _g94578_ 0))
                 (apply display-build-manifest__0 _g94579_))
                ((let () (declare (not safe)) (##fx= _g94578_ 1))
                 (apply display-build-manifest__1 _g94579_))
                ((let () (declare (not safe)) (##fx= _g94578_ 2))
                 (apply display-build-manifest__% _g94579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g94579_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest94432%_ _%port94433%_)
        (let* ((_%manifest94436%_ _%manifest94432%_)
               (_%port94444%_ _%port94433%_))
          (let ((_%p94457%_
                 (lambda (_%g9445294454%_)
                   (display _%g9445294454%_ _%port94444%_)))
                (_%l94458%_
                 (let () (declare (not safe)) (##length _%manifest94436%_)))
                (_%i94459%_ '0))
            (let ((__tmp94580
                   (lambda (_%layer94461%_)
                     (if (zero? _%i94459%_)
                         '#!void
                         (if (= _%i94459%_ '1)
                             (_%p94457%_ '" on ")
                             (_%p94457%_ '", ")))
                     (let* ((_%layer9446594472%_ _%layer94461%_)
                            (_%E9446794476%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9446594472%_
                                      '([name . version]))
                               '#!void))
                            (_%K9446894482%_
                             (lambda (_%version94479%_ _%name94480%_)
                               (_%p94457%_ _%name94480%_)
                               (_%p94457%_ '" ")
                               (_%p94457%_ _%version94479%_))))
                       (if (pair? _%layer9446594472%_)
                           (let ((_%hd9446994485%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9446594472%_)))
                                 (_%tl9447094487%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9446594472%_))))
                             (let* ((_%name94490%_ _%hd9446994485%_)
                                    (_%version94492%_ _%tl9447094487%_))
                               (_%K9446894482%_
                                _%version94492%_
                                _%name94490%_)))
                           (_%E9446794476%_)))
                     (set! _%i94459%_ (+ _%i94459%_ '1)))))
              (declare (not safe))
              (##for-each __tmp94580 _%manifest94436%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest94498%_ __build-manifest)
               (_%port94500%_ (current-output-port)))
          (__display-build-manifest__% _%manifest94498%_ _%port94500%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest94502%_)
        (let ((_%port94504%_ (current-output-port)))
          (__display-build-manifest__% _%manifest94502%_ _%port94504%_))))
    (define __display-build-manifest
      (lambda _g94582_
        (let ((_g94581_ (let () (declare (not safe)) (##length _g94582_))))
          (cond ((let () (declare (not safe)) (##fx= _g94581_ 0))
                 (apply __display-build-manifest__0 _g94582_))
                ((let () (declare (not safe)) (##fx= _g94581_ 1))
                 (apply __display-build-manifest__1 _g94582_))
                ((let () (declare (not safe)) (##fx= _g94581_ 2))
                 (apply __display-build-manifest__% _g94582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g94582_))))))
    (define build-manifest/layer
      (lambda (_%layer94427%_)
        (let ((_%l94429%_ (assoc _%layer94427%_ __build-manifest)))
          (if _%l94429%_ (cons _%l94429%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest94404%_)
        (if (list? _%manifest94404%_)
            (let ((_%manifest94408%_ _%manifest94404%_))
              (__build-manifest-string__% _%manifest94408%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest94404%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest94422%_ __build-manifest))
          (__build-manifest-string__% _%manifest94422%_))))
    (define build-manifest-string
      (lambda _g94584_
        (let ((_g94583_ (let () (declare (not safe)) (##length _g94584_))))
          (cond ((let () (declare (not safe)) (##fx= _g94583_ 0))
                 (apply build-manifest-string__0 _g94584_))
                ((let () (declare (not safe)) (##fx= _g94583_ 1))
                 (apply build-manifest-string__% _g94584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g94584_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest94381%_)
        (let ((_%manifest94384%_ _%manifest94381%_))
          (call-with-output-string
           '()
           (lambda (_%p94393%_)
             (display-build-manifest__% _%manifest94384%_ _%p94393%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest94399%_ __build-manifest))
          (__build-manifest-string__% _%manifest94399%_))))
    (define __build-manifest-string
      (lambda _g94586_
        (let ((_g94585_ (let () (declare (not safe)) (##length _g94586_))))
          (cond ((let () (declare (not safe)) (##fx= _g94585_ 0))
                 (apply __build-manifest-string__0 _g94586_))
                ((let () (declare (not safe)) (##fx= _g94585_ 1))
                 (apply __build-manifest-string__% _g94586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g94586_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value94363%_)
        (if (string? _%new-value94363%_)
            (let ((_%new-value94367%_ _%new-value94363%_))
              (__gerbil-greeting-set! _%new-value94367%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value94363%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value94349%_)
        (let ((_%new-value94353%_ _%new-value94349%_))
          (set! __gerbil-greeting _%new-value94353%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e94345%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e94345%_ _%$e94345%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e94341%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e94341%_ _%$e94341%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp94587
                             (let ((__tmp94588 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp94588 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp94587))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
