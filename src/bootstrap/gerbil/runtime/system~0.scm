(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1713453198)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-110-g2544c9061"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value93279%_)
        (if (list? _%new-value93279%_)
            (let ((_%new-value93283%_ _%new-value93279%_))
              (__build-manifest-set! _%new-value93283%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value93279%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value93266%_)
        (let ((_%new-value93270%_ _%new-value93266%_))
          (set! __build-manifest _%new-value93270%_))))
    (define display-build-manifest__%
      (lambda (_%manifest93226%_ _%port93227%_)
        (if (list? _%manifest93226%_)
            (let ((_%manifest93231%_ _%manifest93226%_))
              (if (port? _%port93227%_)
                  (let ((_%port93241%_ _%port93227%_))
                    (__display-build-manifest__%
                     _%manifest93231%_
                     _%port93241%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port93227%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest93226%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest93255%_ __build-manifest)
               (_%port93257%_ (current-output-port)))
          (__display-build-manifest__% _%manifest93255%_ _%port93257%_))))
    (define display-build-manifest__1
      (lambda (_%manifest93259%_)
        (let ((_%port93261%_ (current-output-port)))
          (display-build-manifest__% _%manifest93259%_ _%port93261%_))))
    (define display-build-manifest
      (lambda _g93295_
        (let ((_g93294_ (let () (declare (not safe)) (##length _g93295_))))
          (cond ((let () (declare (not safe)) (##fx= _g93294_ 0))
                 (apply display-build-manifest__0 _g93295_))
                ((let () (declare (not safe)) (##fx= _g93294_ 1))
                 (apply display-build-manifest__1 _g93295_))
                ((let () (declare (not safe)) (##fx= _g93294_ 2))
                 (apply display-build-manifest__% _g93295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g93295_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest93148%_ _%port93149%_)
        (let* ((_%manifest93152%_ _%manifest93148%_)
               (_%port93160%_ _%port93149%_))
          (let ((_%p93173%_
                 (lambda (_%g9316893170%_)
                   (display _%g9316893170%_ _%port93160%_)))
                (_%l93174%_
                 (let () (declare (not safe)) (##length _%manifest93152%_)))
                (_%i93175%_ '0))
            (let ((__tmp93296
                   (lambda (_%layer93177%_)
                     (if (zero? _%i93175%_)
                         '#!void
                         (if (= _%i93175%_ '1)
                             (_%p93173%_ '" on ")
                             (_%p93173%_ '", ")))
                     (let* ((_%layer9318193188%_ _%layer93177%_)
                            (_%E9318393192%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9318193188%_
                                      '([name . version]))
                               '#!void))
                            (_%K9318493198%_
                             (lambda (_%version93195%_ _%name93196%_)
                               (_%p93173%_ _%name93196%_)
                               (_%p93173%_ '" ")
                               (_%p93173%_ _%version93195%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%layer9318193188%_))
                           (let ((_%hd9318593201%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9318193188%_)))
                                 (_%tl9318693203%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9318193188%_))))
                             (let* ((_%name93206%_ _%hd9318593201%_)
                                    (_%version93208%_ _%tl9318693203%_))
                               (_%K9318493198%_
                                _%version93208%_
                                _%name93206%_)))
                           (_%E9318393192%_)))
                     (set! _%i93175%_ (+ _%i93175%_ '1)))))
              (declare (not safe))
              (##for-each __tmp93296 _%manifest93152%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest93214%_ __build-manifest)
               (_%port93216%_ (current-output-port)))
          (__display-build-manifest__% _%manifest93214%_ _%port93216%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest93218%_)
        (let ((_%port93220%_ (current-output-port)))
          (__display-build-manifest__% _%manifest93218%_ _%port93220%_))))
    (define __display-build-manifest
      (lambda _g93298_
        (let ((_g93297_ (let () (declare (not safe)) (##length _g93298_))))
          (cond ((let () (declare (not safe)) (##fx= _g93297_ 0))
                 (apply __display-build-manifest__0 _g93298_))
                ((let () (declare (not safe)) (##fx= _g93297_ 1))
                 (apply __display-build-manifest__1 _g93298_))
                ((let () (declare (not safe)) (##fx= _g93297_ 2))
                 (apply __display-build-manifest__% _g93298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g93298_))))))
    (define build-manifest/layer
      (lambda (_%layer93143%_)
        (let ((_%l93145%_ (assoc _%layer93143%_ __build-manifest)))
          (if _%l93145%_ (cons _%l93145%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest93120%_)
        (if (list? _%manifest93120%_)
            (let ((_%manifest93124%_ _%manifest93120%_))
              (__build-manifest-string__% _%manifest93124%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest93120%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest93138%_ __build-manifest))
          (__build-manifest-string__% _%manifest93138%_))))
    (define build-manifest-string
      (lambda _g93300_
        (let ((_g93299_ (let () (declare (not safe)) (##length _g93300_))))
          (cond ((let () (declare (not safe)) (##fx= _g93299_ 0))
                 (apply build-manifest-string__0 _g93300_))
                ((let () (declare (not safe)) (##fx= _g93299_ 1))
                 (apply build-manifest-string__% _g93300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g93300_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest93097%_)
        (let ((_%manifest93100%_ _%manifest93097%_))
          (call-with-output-string
           '()
           (lambda (_%p93109%_)
             (display-build-manifest__% _%manifest93100%_ _%p93109%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest93115%_ __build-manifest))
          (__build-manifest-string__% _%manifest93115%_))))
    (define __build-manifest-string
      (lambda _g93302_
        (let ((_g93301_ (let () (declare (not safe)) (##length _g93302_))))
          (cond ((let () (declare (not safe)) (##fx= _g93301_ 0))
                 (apply __build-manifest-string__0 _g93302_))
                ((let () (declare (not safe)) (##fx= _g93301_ 1))
                 (apply __build-manifest-string__% _g93302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g93302_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value93079%_)
        (if (string? _%new-value93079%_)
            (let ((_%new-value93083%_ _%new-value93079%_))
              (__gerbil-greeting-set! _%new-value93083%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value93079%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value93065%_)
        (let ((_%new-value93069%_ _%new-value93065%_))
          (set! __gerbil-greeting _%new-value93069%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e93061%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e93061%_ _%$e93061%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e93057%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e93057%_ _%$e93057%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp93303
                             (let ((__tmp93304 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp93304 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp93303))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
