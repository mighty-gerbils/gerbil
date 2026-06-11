(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1781138347)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.2-20-g123bc36f"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value121675%_)
        (let ((_%new-value121678%_ _%new-value121675%_))
          (set! __build-manifest _%new-value121678%_))))
    (define build-manifest-set!
      (lambda (_%new-value121660%_)
        (if (list? _%new-value121660%_)
            (let ((_%new-value121665%_ _%new-value121660%_))
              (__build-manifest-set! _%new-value121665%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value121660%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest121583%_ _%port121584%_)
        (let* ((_%manifest121587%_ _%manifest121583%_)
               (_%port121595%_ _%port121584%_))
          (let ((_%p121608%_
                 (lambda (_%$%g121603121605%_)
                   (display _%$%g121603121605%_ _%port121595%_)))
                (_%l121609%_
                 (let () (declare (not safe)) (##length _%manifest121587%_)))
                (_%i121610%_ '0))
            (let ((__tmp121792
                   (lambda (_%layer121612%_)
                     (if (zero? _%i121610%_)
                         '#!void
                         (if (= _%i121610%_ '1)
                             (_%p121608%_ '" on ")
                             (_%p121608%_ '", ")))
                     (let* ((_%$%layer121616121623%_ _%layer121612%_)
                            (_%$%E121618121627%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%layer121616121623%_
                                      '([name . version]))
                               '#!void))
                            (_%$%K121619121633%_
                             (lambda (_%version121630%_ _%name121631%_)
                               (_%p121608%_ _%name121631%_)
                               (_%p121608%_ '" ")
                               (_%p121608%_ _%version121630%_))))
                       (if (pair? _%$%layer121616121623%_)
                           (let ((_%$%hd121620121636%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%layer121616121623%_)))
                                 (_%$%tl121621121638%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%layer121616121623%_))))
                             (let* ((_%name121641%_ _%$%hd121620121636%_)
                                    (_%version121643%_ _%$%tl121621121638%_))
                               (_%$%K121619121633%_
                                _%version121643%_
                                _%name121641%_)))
                           (_%$%E121618121627%_)))
                     (set! _%i121610%_ (+ _%i121610%_ '1)))))
              (declare (not safe))
              (##for-each __tmp121792 _%manifest121587%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest121649%_ __build-manifest)
               (_%port121651%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121649%_ _%port121651%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest121653%_)
        (let ((_%port121655%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121653%_ _%port121655%_))))
    (define __display-build-manifest
      (lambda _g121793_
        (let ((_g121794_ (let () (declare (not safe)) (##length _g121793_))))
          (cond ((let () (declare (not safe)) (##fx= _g121794_ 0))
                 (apply __display-build-manifest__0 _g121793_))
                ((let () (declare (not safe)) (##fx= _g121794_ 1))
                 (apply __display-build-manifest__1 _g121793_))
                ((let () (declare (not safe)) (##fx= _g121794_ 2))
                 (apply __display-build-manifest__% _g121793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g121793_))))))
    (define display-build-manifest__%
      (lambda (_%manifest121542%_ _%port121543%_)
        (if (list? _%manifest121542%_)
            (let ((_%manifest121547%_ _%manifest121542%_))
              (if (port? _%port121543%_)
                  (let ((_%port121557%_ _%port121543%_))
                    (__display-build-manifest__%
                     _%manifest121547%_
                     _%port121557%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port121543%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest121542%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest121571%_ __build-manifest)
               (_%port121573%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121571%_ _%port121573%_))))
    (define display-build-manifest__1
      (lambda (_%manifest121575%_)
        (let ((_%port121577%_ (current-output-port)))
          (display-build-manifest__% _%manifest121575%_ _%port121577%_))))
    (define display-build-manifest
      (lambda _g121795_
        (let ((_g121796_ (let () (declare (not safe)) (##length _g121795_))))
          (cond ((let () (declare (not safe)) (##fx= _g121796_ 0))
                 (apply display-build-manifest__0 _g121795_))
                ((let () (declare (not safe)) (##fx= _g121796_ 1))
                 (apply display-build-manifest__1 _g121795_))
                ((let () (declare (not safe)) (##fx= _g121796_ 2))
                 (apply display-build-manifest__% _g121795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g121795_))))))
    (define build-manifest/layer
      (lambda (_%layer121537%_)
        (let ((_%l121539%_ (assoc _%layer121537%_ __build-manifest)))
          (if _%l121539%_ (cons _%l121539%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest121481%_)
        (let ((_%manifest121484%_ _%manifest121481%_))
          (call-with-output-string
           '()
           (lambda (_%p121493%_)
             (let* ((_%manifest121495%_ _%manifest121484%_)
                    (_%port121498%_ _%p121493%_)
                    (_%manifest121503%_ _%manifest121495%_))
               (if (port? _%port121498%_)
                   (let ((_%port121518%_ _%port121498%_))
                     (__display-build-manifest__%
                      _%manifest121503%_
                      _%port121518%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port121498%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest121532%_ __build-manifest))
          (__build-manifest-string__% _%manifest121532%_))))
    (define __build-manifest-string
      (lambda _g121797_
        (let ((_g121798_ (let () (declare (not safe)) (##length _g121797_))))
          (cond ((let () (declare (not safe)) (##fx= _g121798_ 0))
                 (apply __build-manifest-string__0 _g121797_))
                ((let () (declare (not safe)) (##fx= _g121798_ 1))
                 (apply __build-manifest-string__% _g121797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g121797_))))))
    (define build-manifest-string__%
      (lambda (_%manifest121458%_)
        (if (list? _%manifest121458%_)
            (let ((_%manifest121462%_ _%manifest121458%_))
              (__build-manifest-string__% _%manifest121462%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest121458%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest121476%_ __build-manifest))
          (__build-manifest-string__% _%manifest121476%_))))
    (define build-manifest-string
      (lambda _g121799_
        (let ((_g121800_ (let () (declare (not safe)) (##length _g121799_))))
          (cond ((let () (declare (not safe)) (##fx= _g121800_ 0))
                 (apply build-manifest-string__0 _g121799_))
                ((let () (declare (not safe)) (##fx= _g121800_ 1))
                 (apply build-manifest-string__% _g121799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g121799_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest121440%_ gerbil-system-manifest)
               (_%manifest121445%_ _%manifest121440%_))
          (__build-manifest-string__% _%manifest121445%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value121425%_)
        (let ((_%new-value121428%_ _%new-value121425%_))
          (set! __gerbil-greeting _%new-value121428%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value121410%_)
        (if (string? _%new-value121410%_)
            (let ((_%new-value121415%_ _%new-value121410%_))
              (__gerbil-greeting-set! _%new-value121415%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value121410%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e121406%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e121406%_ _%$e121406%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e121402%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e121402%_ _%$e121402%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp121801
             (lambda ()
               (if (let ((__tmp121802
                          (let* ((_%str121371%_ (configure-command-string))
                                 (_%char121374%_ '#\')
                                 (_%str121379%_ _%str121371%_)
                                 (_%char121391%_ _%char121374%_))
                            (declare (not safe))
                            (__string-split _%str121379%_ _%char121391%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp121802))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp121801)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
