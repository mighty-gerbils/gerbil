(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1779435577)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.2-15-g8973e3cb"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value121532%_)
        (let ((_%new-value121535%_ _%new-value121532%_))
          (set! __build-manifest _%new-value121535%_))))
    (define build-manifest-set!
      (lambda (_%new-value120866%_)
        (if (list? _%new-value120866%_)
            (let ((_%new-value120871%_ _%new-value120866%_))
              (__build-manifest-set! _%new-value120871%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value120866%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest121455%_ _%port121456%_)
        (let* ((_%manifest121459%_ _%manifest121455%_)
               (_%port121467%_ _%port121456%_))
          (let ((_%p121480%_
                 (lambda (_%g121475121477%_)
                   (display _%g121475121477%_ _%port121467%_)))
                (_%l121481%_
                 (let () (declare (not safe)) (##length _%manifest121459%_)))
                (_%i121482%_ '0))
            (let ((__tmp121649
                   (lambda (_%layer121484%_)
                     (if (zero? _%i121482%_)
                         '#!void
                         (if (= _%i121482%_ '1)
                             (_%p121480%_ '" on ")
                             (_%p121480%_ '", ")))
                     (let* ((_%layer121488121495%_ _%layer121484%_)
                            (_%E121490121499%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer121488121495%_
                                      '([name . version]))
                               '#!void))
                            (_%K121491121505%_
                             (lambda (_%version121502%_ _%name121503%_)
                               (_%p121480%_ _%name121503%_)
                               (_%p121480%_ '" ")
                               (_%p121480%_ _%version121502%_))))
                       (if (pair? _%layer121488121495%_)
                           (let ((_%hd121492121508%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer121488121495%_)))
                                 (_%tl121493121510%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer121488121495%_))))
                             (let* ((_%name121513%_ _%hd121492121508%_)
                                    (_%version121515%_ _%tl121493121510%_))
                               (_%K121491121505%_
                                _%version121515%_
                                _%name121513%_)))
                           (_%E121490121499%_)))
                     (set! _%i121482%_ (+ _%i121482%_ '1)))))
              (declare (not safe))
              (##for-each __tmp121649 _%manifest121459%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest121521%_ __build-manifest)
               (_%port121523%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121521%_ _%port121523%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest121525%_)
        (let ((_%port121527%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121525%_ _%port121527%_))))
    (define __display-build-manifest
      (lambda _g121650_
        (let ((_g121651_ (let () (declare (not safe)) (##length _g121650_))))
          (cond ((let () (declare (not safe)) (##fx= _g121651_ 0))
                 (apply __display-build-manifest__0 _g121650_))
                ((let () (declare (not safe)) (##fx= _g121651_ 1))
                 (apply __display-build-manifest__1 _g121650_))
                ((let () (declare (not safe)) (##fx= _g121651_ 2))
                 (apply __display-build-manifest__% _g121650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g121650_))))))
    (define display-build-manifest__%
      (lambda (_%manifest121002%_ _%port121003%_)
        (if (list? _%manifest121002%_)
            (let ((_%manifest121007%_ _%manifest121002%_))
              (if (port? _%port121003%_)
                  (let ((_%port121017%_ _%port121003%_))
                    (__display-build-manifest__%
                     _%manifest121007%_
                     _%port121017%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port121003%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest121002%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest121031%_ __build-manifest)
               (_%port121033%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121031%_ _%port121033%_))))
    (define display-build-manifest__1
      (lambda (_%manifest121035%_)
        (let ((_%port121037%_ (current-output-port)))
          (display-build-manifest__% _%manifest121035%_ _%port121037%_))))
    (define display-build-manifest
      (lambda _g121652_
        (let ((_g121653_ (let () (declare (not safe)) (##length _g121652_))))
          (cond ((let () (declare (not safe)) (##fx= _g121653_ 0))
                 (apply display-build-manifest__0 _g121652_))
                ((let () (declare (not safe)) (##fx= _g121653_ 1))
                 (apply display-build-manifest__1 _g121652_))
                ((let () (declare (not safe)) (##fx= _g121653_ 2))
                 (apply display-build-manifest__% _g121652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g121652_))))))
    (define build-manifest/layer
      (lambda (_%layer121450%_)
        (let ((_%l121452%_ (assoc _%layer121450%_ __build-manifest)))
          (if _%l121452%_ (cons _%l121452%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest121394%_)
        (let ((_%manifest121397%_ _%manifest121394%_))
          (call-with-output-string
           '()
           (lambda (_%p121406%_)
             (let* ((_%manifest121408%_ _%manifest121397%_)
                    (_%port121411%_ _%p121406%_)
                    (_%manifest121416%_ _%manifest121408%_))
               (if (port? _%port121411%_)
                   (let ((_%port121431%_ _%port121411%_))
                     (__display-build-manifest__%
                      _%manifest121416%_
                      _%port121431%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port121411%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest121445%_ __build-manifest))
          (__build-manifest-string__% _%manifest121445%_))))
    (define __build-manifest-string
      (lambda _g121654_
        (let ((_g121655_ (let () (declare (not safe)) (##length _g121654_))))
          (cond ((let () (declare (not safe)) (##fx= _g121655_ 0))
                 (apply __build-manifest-string__0 _g121654_))
                ((let () (declare (not safe)) (##fx= _g121655_ 1))
                 (apply __build-manifest-string__% _g121654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g121654_))))))
    (define build-manifest-string__%
      (lambda (_%manifest121163%_)
        (if (list? _%manifest121163%_)
            (let ((_%manifest121167%_ _%manifest121163%_))
              (__build-manifest-string__% _%manifest121167%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest121163%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest121181%_ __build-manifest))
          (__build-manifest-string__% _%manifest121181%_))))
    (define build-manifest-string
      (lambda _g121656_
        (let ((_g121657_ (let () (declare (not safe)) (##length _g121656_))))
          (cond ((let () (declare (not safe)) (##fx= _g121657_ 0))
                 (apply build-manifest-string__0 _g121656_))
                ((let () (declare (not safe)) (##fx= _g121657_ 1))
                 (apply build-manifest-string__% _g121656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g121656_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest121376%_ gerbil-system-manifest)
               (_%manifest121381%_ _%manifest121376%_))
          (__build-manifest-string__% _%manifest121381%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value121361%_)
        (let ((_%new-value121364%_ _%new-value121361%_))
          (set! __gerbil-greeting _%new-value121364%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value121305%_)
        (if (string? _%new-value121305%_)
            (let ((_%new-value121310%_ _%new-value121305%_))
              (__gerbil-greeting-set! _%new-value121310%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value121305%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e121357%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e121357%_ _%$e121357%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e121353%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e121353%_ _%$e121353%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp121658
             (lambda ()
               (if (let ((__tmp121659
                          (let* ((_%str121322%_ (configure-command-string))
                                 (_%char121325%_ '#\')
                                 (_%str121330%_ _%str121322%_)
                                 (_%char121342%_ _%char121325%_))
                            (declare (not safe))
                            (__string-split _%str121330%_ _%char121342%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp121659))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp121658)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
