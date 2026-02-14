(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1771037606)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-115-g931a223d9"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value129459%_)
        (let ((_%new-value129462%_ _%new-value129459%_))
          (set! __build-manifest _%new-value129462%_))))
    (define build-manifest-set!
      (lambda (_%new-value128793%_)
        (if (list? _%new-value128793%_)
            (let ((_%new-value128798%_ _%new-value128793%_))
              (__build-manifest-set! _%new-value128798%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value128793%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest129382%_ _%port129383%_)
        (let* ((_%manifest129386%_ _%manifest129382%_)
               (_%port129394%_ _%port129383%_))
          (let ((_%p129407%_
                 (lambda (_%g129402129404%_)
                   (display _%g129402129404%_ _%port129394%_)))
                (_%l129408%_
                 (let () (declare (not safe)) (##length _%manifest129386%_)))
                (_%i129409%_ '0))
            (let ((__tmp129576
                   (lambda (_%layer129411%_)
                     (if (zero? _%i129409%_)
                         '#!void
                         (if (= _%i129409%_ '1)
                             (_%p129407%_ '" on ")
                             (_%p129407%_ '", ")))
                     (let* ((_%layer129415129422%_ _%layer129411%_)
                            (_%E129417129426%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer129415129422%_
                                      '([name . version]))
                               '#!void))
                            (_%K129418129432%_
                             (lambda (_%version129429%_ _%name129430%_)
                               (_%p129407%_ _%name129430%_)
                               (_%p129407%_ '" ")
                               (_%p129407%_ _%version129429%_))))
                       (if (pair? _%layer129415129422%_)
                           (let ((_%hd129419129435%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer129415129422%_)))
                                 (_%tl129420129437%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer129415129422%_))))
                             (let* ((_%name129440%_ _%hd129419129435%_)
                                    (_%version129442%_ _%tl129420129437%_))
                               (_%K129418129432%_
                                _%version129442%_
                                _%name129440%_)))
                           (_%E129417129426%_)))
                     (set! _%i129409%_ (+ _%i129409%_ '1)))))
              (declare (not safe))
              (##for-each __tmp129576 _%manifest129386%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest129448%_ __build-manifest)
               (_%port129450%_ (current-output-port)))
          (__display-build-manifest__% _%manifest129448%_ _%port129450%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest129452%_)
        (let ((_%port129454%_ (current-output-port)))
          (__display-build-manifest__% _%manifest129452%_ _%port129454%_))))
    (define __display-build-manifest
      (lambda _g129577_
        (let ((_g129578_ (let () (declare (not safe)) (##length _g129577_))))
          (cond ((let () (declare (not safe)) (##fx= _g129578_ 0))
                 (apply __display-build-manifest__0 _g129577_))
                ((let () (declare (not safe)) (##fx= _g129578_ 1))
                 (apply __display-build-manifest__1 _g129577_))
                ((let () (declare (not safe)) (##fx= _g129578_ 2))
                 (apply __display-build-manifest__% _g129577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g129577_))))))
    (define display-build-manifest__%
      (lambda (_%manifest128929%_ _%port128930%_)
        (if (list? _%manifest128929%_)
            (let ((_%manifest128934%_ _%manifest128929%_))
              (if (port? _%port128930%_)
                  (let ((_%port128944%_ _%port128930%_))
                    (__display-build-manifest__%
                     _%manifest128934%_
                     _%port128944%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port128930%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest128929%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest128958%_ __build-manifest)
               (_%port128960%_ (current-output-port)))
          (__display-build-manifest__% _%manifest128958%_ _%port128960%_))))
    (define display-build-manifest__1
      (lambda (_%manifest128962%_)
        (let ((_%port128964%_ (current-output-port)))
          (display-build-manifest__% _%manifest128962%_ _%port128964%_))))
    (define display-build-manifest
      (lambda _g129579_
        (let ((_g129580_ (let () (declare (not safe)) (##length _g129579_))))
          (cond ((let () (declare (not safe)) (##fx= _g129580_ 0))
                 (apply display-build-manifest__0 _g129579_))
                ((let () (declare (not safe)) (##fx= _g129580_ 1))
                 (apply display-build-manifest__1 _g129579_))
                ((let () (declare (not safe)) (##fx= _g129580_ 2))
                 (apply display-build-manifest__% _g129579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g129579_))))))
    (define build-manifest/layer
      (lambda (_%layer129377%_)
        (let ((_%l129379%_ (assoc _%layer129377%_ __build-manifest)))
          (if _%l129379%_ (cons _%l129379%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest129321%_)
        (let ((_%manifest129324%_ _%manifest129321%_))
          (call-with-output-string
           '()
           (lambda (_%p129333%_)
             (let* ((_%manifest129335%_ _%manifest129324%_)
                    (_%port129338%_ _%p129333%_)
                    (_%manifest129343%_ _%manifest129335%_))
               (if (port? _%port129338%_)
                   (let ((_%port129358%_ _%port129338%_))
                     (__display-build-manifest__%
                      _%manifest129343%_
                      _%port129358%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port129338%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest129372%_ __build-manifest))
          (__build-manifest-string__% _%manifest129372%_))))
    (define __build-manifest-string
      (lambda _g129581_
        (let ((_g129582_ (let () (declare (not safe)) (##length _g129581_))))
          (cond ((let () (declare (not safe)) (##fx= _g129582_ 0))
                 (apply __build-manifest-string__0 _g129581_))
                ((let () (declare (not safe)) (##fx= _g129582_ 1))
                 (apply __build-manifest-string__% _g129581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g129581_))))))
    (define build-manifest-string__%
      (lambda (_%manifest129090%_)
        (if (list? _%manifest129090%_)
            (let ((_%manifest129094%_ _%manifest129090%_))
              (__build-manifest-string__% _%manifest129094%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest129090%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest129108%_ __build-manifest))
          (__build-manifest-string__% _%manifest129108%_))))
    (define build-manifest-string
      (lambda _g129583_
        (let ((_g129584_ (let () (declare (not safe)) (##length _g129583_))))
          (cond ((let () (declare (not safe)) (##fx= _g129584_ 0))
                 (apply build-manifest-string__0 _g129583_))
                ((let () (declare (not safe)) (##fx= _g129584_ 1))
                 (apply build-manifest-string__% _g129583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g129583_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest129303%_ gerbil-system-manifest)
               (_%manifest129308%_ _%manifest129303%_))
          (__build-manifest-string__% _%manifest129308%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value129288%_)
        (let ((_%new-value129291%_ _%new-value129288%_))
          (set! __gerbil-greeting _%new-value129291%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value129232%_)
        (if (string? _%new-value129232%_)
            (let ((_%new-value129237%_ _%new-value129232%_))
              (__gerbil-greeting-set! _%new-value129237%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value129232%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e129284%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e129284%_ _%$e129284%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e129280%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e129280%_ _%$e129280%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp129585
             (lambda ()
               (if (let ((__tmp129586
                          (let* ((_%str129249%_ (configure-command-string))
                                 (_%char129252%_ '#\')
                                 (_%str129257%_ _%str129249%_)
                                 (_%char129269%_ _%char129252%_))
                            (declare (not safe))
                            (__string-split _%str129257%_ _%char129269%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp129586))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp129585)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
