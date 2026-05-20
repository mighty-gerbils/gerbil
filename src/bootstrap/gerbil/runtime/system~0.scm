(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1779274767)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.2-90-g23278fd5"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value121085%_)
        (let ((_%new-value121088%_ _%new-value121085%_))
          (set! __build-manifest _%new-value121088%_))))
    (define build-manifest-set!
      (lambda (_%new-value120419%_)
        (if (list? _%new-value120419%_)
            (let ((_%new-value120424%_ _%new-value120419%_))
              (__build-manifest-set! _%new-value120424%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value120419%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest121008%_ _%port121009%_)
        (let* ((_%manifest121012%_ _%manifest121008%_)
               (_%port121020%_ _%port121009%_))
          (let ((_%p121033%_
                 (lambda (_%g121028121030%_)
                   (display _%g121028121030%_ _%port121020%_)))
                (_%l121034%_
                 (let () (declare (not safe)) (##length _%manifest121012%_)))
                (_%i121035%_ '0))
            (let ((__tmp121202
                   (lambda (_%layer121037%_)
                     (if (zero? _%i121035%_)
                         '#!void
                         (if (= _%i121035%_ '1)
                             (_%p121033%_ '" on ")
                             (_%p121033%_ '", ")))
                     (let* ((_%layer121041121048%_ _%layer121037%_)
                            (_%E121043121052%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer121041121048%_
                                      '([name . version]))
                               '#!void))
                            (_%K121044121058%_
                             (lambda (_%version121055%_ _%name121056%_)
                               (_%p121033%_ _%name121056%_)
                               (_%p121033%_ '" ")
                               (_%p121033%_ _%version121055%_))))
                       (if (pair? _%layer121041121048%_)
                           (let ((_%hd121045121061%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer121041121048%_)))
                                 (_%tl121046121063%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer121041121048%_))))
                             (let* ((_%name121066%_ _%hd121045121061%_)
                                    (_%version121068%_ _%tl121046121063%_))
                               (_%K121044121058%_
                                _%version121068%_
                                _%name121066%_)))
                           (_%E121043121052%_)))
                     (set! _%i121035%_ (+ _%i121035%_ '1)))))
              (declare (not safe))
              (##for-each __tmp121202 _%manifest121012%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest121074%_ __build-manifest)
               (_%port121076%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121074%_ _%port121076%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest121078%_)
        (let ((_%port121080%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121078%_ _%port121080%_))))
    (define __display-build-manifest
      (lambda _g121203_
        (let ((_g121204_ (let () (declare (not safe)) (##length _g121203_))))
          (cond ((let () (declare (not safe)) (##fx= _g121204_ 0))
                 (apply __display-build-manifest__0 _g121203_))
                ((let () (declare (not safe)) (##fx= _g121204_ 1))
                 (apply __display-build-manifest__1 _g121203_))
                ((let () (declare (not safe)) (##fx= _g121204_ 2))
                 (apply __display-build-manifest__% _g121203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g121203_))))))
    (define display-build-manifest__%
      (lambda (_%manifest120555%_ _%port120556%_)
        (if (list? _%manifest120555%_)
            (let ((_%manifest120560%_ _%manifest120555%_))
              (if (port? _%port120556%_)
                  (let ((_%port120570%_ _%port120556%_))
                    (__display-build-manifest__%
                     _%manifest120560%_
                     _%port120570%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port120556%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest120555%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest120584%_ __build-manifest)
               (_%port120586%_ (current-output-port)))
          (__display-build-manifest__% _%manifest120584%_ _%port120586%_))))
    (define display-build-manifest__1
      (lambda (_%manifest120588%_)
        (let ((_%port120590%_ (current-output-port)))
          (display-build-manifest__% _%manifest120588%_ _%port120590%_))))
    (define display-build-manifest
      (lambda _g121205_
        (let ((_g121206_ (let () (declare (not safe)) (##length _g121205_))))
          (cond ((let () (declare (not safe)) (##fx= _g121206_ 0))
                 (apply display-build-manifest__0 _g121205_))
                ((let () (declare (not safe)) (##fx= _g121206_ 1))
                 (apply display-build-manifest__1 _g121205_))
                ((let () (declare (not safe)) (##fx= _g121206_ 2))
                 (apply display-build-manifest__% _g121205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g121205_))))))
    (define build-manifest/layer
      (lambda (_%layer121003%_)
        (let ((_%l121005%_ (assoc _%layer121003%_ __build-manifest)))
          (if _%l121005%_ (cons _%l121005%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest120947%_)
        (let ((_%manifest120950%_ _%manifest120947%_))
          (call-with-output-string
           '()
           (lambda (_%p120959%_)
             (let* ((_%manifest120961%_ _%manifest120950%_)
                    (_%port120964%_ _%p120959%_)
                    (_%manifest120969%_ _%manifest120961%_))
               (if (port? _%port120964%_)
                   (let ((_%port120984%_ _%port120964%_))
                     (__display-build-manifest__%
                      _%manifest120969%_
                      _%port120984%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port120964%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest120998%_ __build-manifest))
          (__build-manifest-string__% _%manifest120998%_))))
    (define __build-manifest-string
      (lambda _g121207_
        (let ((_g121208_ (let () (declare (not safe)) (##length _g121207_))))
          (cond ((let () (declare (not safe)) (##fx= _g121208_ 0))
                 (apply __build-manifest-string__0 _g121207_))
                ((let () (declare (not safe)) (##fx= _g121208_ 1))
                 (apply __build-manifest-string__% _g121207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g121207_))))))
    (define build-manifest-string__%
      (lambda (_%manifest120716%_)
        (if (list? _%manifest120716%_)
            (let ((_%manifest120720%_ _%manifest120716%_))
              (__build-manifest-string__% _%manifest120720%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest120716%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest120734%_ __build-manifest))
          (__build-manifest-string__% _%manifest120734%_))))
    (define build-manifest-string
      (lambda _g121209_
        (let ((_g121210_ (let () (declare (not safe)) (##length _g121209_))))
          (cond ((let () (declare (not safe)) (##fx= _g121210_ 0))
                 (apply build-manifest-string__0 _g121209_))
                ((let () (declare (not safe)) (##fx= _g121210_ 1))
                 (apply build-manifest-string__% _g121209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g121209_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest120929%_ gerbil-system-manifest)
               (_%manifest120934%_ _%manifest120929%_))
          (__build-manifest-string__% _%manifest120934%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value120914%_)
        (let ((_%new-value120917%_ _%new-value120914%_))
          (set! __gerbil-greeting _%new-value120917%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value120858%_)
        (if (string? _%new-value120858%_)
            (let ((_%new-value120863%_ _%new-value120858%_))
              (__gerbil-greeting-set! _%new-value120863%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value120858%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e120910%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e120910%_ _%$e120910%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e120906%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e120906%_ _%$e120906%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp121211
             (lambda ()
               (if (let ((__tmp121212
                          (let* ((_%str120875%_ (configure-command-string))
                                 (_%char120878%_ '#\')
                                 (_%str120883%_ _%str120875%_)
                                 (_%char120895%_ _%char120878%_))
                            (declare (not safe))
                            (__string-split _%str120883%_ _%char120895%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp121212))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp121211)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
