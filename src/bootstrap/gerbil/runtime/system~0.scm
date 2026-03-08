(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1773009261)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-137-g334a190d2"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value121075%_)
        (let ((_%new-value121078%_ _%new-value121075%_))
          (set! __build-manifest _%new-value121078%_))))
    (define build-manifest-set!
      (lambda (_%new-value120409%_)
        (if (list? _%new-value120409%_)
            (let ((_%new-value120414%_ _%new-value120409%_))
              (__build-manifest-set! _%new-value120414%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value120409%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest120998%_ _%port120999%_)
        (let* ((_%manifest121002%_ _%manifest120998%_)
               (_%port121010%_ _%port120999%_))
          (let ((_%p121023%_
                 (lambda (_%g121018121020%_)
                   (display _%g121018121020%_ _%port121010%_)))
                (_%l121024%_
                 (let () (declare (not safe)) (##length _%manifest121002%_)))
                (_%i121025%_ '0))
            (let ((__tmp121192
                   (lambda (_%layer121027%_)
                     (if (zero? _%i121025%_)
                         '#!void
                         (if (= _%i121025%_ '1)
                             (_%p121023%_ '" on ")
                             (_%p121023%_ '", ")))
                     (let* ((_%layer121031121038%_ _%layer121027%_)
                            (_%E121033121042%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer121031121038%_
                                      '([name . version]))
                               '#!void))
                            (_%K121034121048%_
                             (lambda (_%version121045%_ _%name121046%_)
                               (_%p121023%_ _%name121046%_)
                               (_%p121023%_ '" ")
                               (_%p121023%_ _%version121045%_))))
                       (if (pair? _%layer121031121038%_)
                           (let ((_%hd121035121051%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer121031121038%_)))
                                 (_%tl121036121053%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer121031121038%_))))
                             (let* ((_%name121056%_ _%hd121035121051%_)
                                    (_%version121058%_ _%tl121036121053%_))
                               (_%K121034121048%_
                                _%version121058%_
                                _%name121056%_)))
                           (_%E121033121042%_)))
                     (set! _%i121025%_ (+ _%i121025%_ '1)))))
              (declare (not safe))
              (##for-each __tmp121192 _%manifest121002%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest121064%_ __build-manifest)
               (_%port121066%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121064%_ _%port121066%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest121068%_)
        (let ((_%port121070%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121068%_ _%port121070%_))))
    (define __display-build-manifest
      (lambda _g121193_
        (let ((_g121194_ (let () (declare (not safe)) (##length _g121193_))))
          (cond ((let () (declare (not safe)) (##fx= _g121194_ 0))
                 (apply __display-build-manifest__0 _g121193_))
                ((let () (declare (not safe)) (##fx= _g121194_ 1))
                 (apply __display-build-manifest__1 _g121193_))
                ((let () (declare (not safe)) (##fx= _g121194_ 2))
                 (apply __display-build-manifest__% _g121193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g121193_))))))
    (define display-build-manifest__%
      (lambda (_%manifest120545%_ _%port120546%_)
        (if (list? _%manifest120545%_)
            (let ((_%manifest120550%_ _%manifest120545%_))
              (if (port? _%port120546%_)
                  (let ((_%port120560%_ _%port120546%_))
                    (__display-build-manifest__%
                     _%manifest120550%_
                     _%port120560%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port120546%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest120545%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest120574%_ __build-manifest)
               (_%port120576%_ (current-output-port)))
          (__display-build-manifest__% _%manifest120574%_ _%port120576%_))))
    (define display-build-manifest__1
      (lambda (_%manifest120578%_)
        (let ((_%port120580%_ (current-output-port)))
          (display-build-manifest__% _%manifest120578%_ _%port120580%_))))
    (define display-build-manifest
      (lambda _g121195_
        (let ((_g121196_ (let () (declare (not safe)) (##length _g121195_))))
          (cond ((let () (declare (not safe)) (##fx= _g121196_ 0))
                 (apply display-build-manifest__0 _g121195_))
                ((let () (declare (not safe)) (##fx= _g121196_ 1))
                 (apply display-build-manifest__1 _g121195_))
                ((let () (declare (not safe)) (##fx= _g121196_ 2))
                 (apply display-build-manifest__% _g121195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g121195_))))))
    (define build-manifest/layer
      (lambda (_%layer120993%_)
        (let ((_%l120995%_ (assoc _%layer120993%_ __build-manifest)))
          (if _%l120995%_ (cons _%l120995%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest120937%_)
        (let ((_%manifest120940%_ _%manifest120937%_))
          (call-with-output-string
           '()
           (lambda (_%p120949%_)
             (let* ((_%manifest120951%_ _%manifest120940%_)
                    (_%port120954%_ _%p120949%_)
                    (_%manifest120959%_ _%manifest120951%_))
               (if (port? _%port120954%_)
                   (let ((_%port120974%_ _%port120954%_))
                     (__display-build-manifest__%
                      _%manifest120959%_
                      _%port120974%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port120954%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest120988%_ __build-manifest))
          (__build-manifest-string__% _%manifest120988%_))))
    (define __build-manifest-string
      (lambda _g121197_
        (let ((_g121198_ (let () (declare (not safe)) (##length _g121197_))))
          (cond ((let () (declare (not safe)) (##fx= _g121198_ 0))
                 (apply __build-manifest-string__0 _g121197_))
                ((let () (declare (not safe)) (##fx= _g121198_ 1))
                 (apply __build-manifest-string__% _g121197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g121197_))))))
    (define build-manifest-string__%
      (lambda (_%manifest120706%_)
        (if (list? _%manifest120706%_)
            (let ((_%manifest120710%_ _%manifest120706%_))
              (__build-manifest-string__% _%manifest120710%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest120706%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest120724%_ __build-manifest))
          (__build-manifest-string__% _%manifest120724%_))))
    (define build-manifest-string
      (lambda _g121199_
        (let ((_g121200_ (let () (declare (not safe)) (##length _g121199_))))
          (cond ((let () (declare (not safe)) (##fx= _g121200_ 0))
                 (apply build-manifest-string__0 _g121199_))
                ((let () (declare (not safe)) (##fx= _g121200_ 1))
                 (apply build-manifest-string__% _g121199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g121199_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest120919%_ gerbil-system-manifest)
               (_%manifest120924%_ _%manifest120919%_))
          (__build-manifest-string__% _%manifest120924%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value120904%_)
        (let ((_%new-value120907%_ _%new-value120904%_))
          (set! __gerbil-greeting _%new-value120907%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value120848%_)
        (if (string? _%new-value120848%_)
            (let ((_%new-value120853%_ _%new-value120848%_))
              (__gerbil-greeting-set! _%new-value120853%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value120848%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e120900%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e120900%_ _%$e120900%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e120896%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e120896%_ _%$e120896%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp121201
             (lambda ()
               (if (let ((__tmp121202
                          (let* ((_%str120865%_ (configure-command-string))
                                 (_%char120868%_ '#\')
                                 (_%str120873%_ _%str120865%_)
                                 (_%char120885%_ _%char120868%_))
                            (declare (not safe))
                            (__string-split _%str120873%_ _%char120885%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp121202))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp121201)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
