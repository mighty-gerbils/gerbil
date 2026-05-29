(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1779967240)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.2-52-g4dc096cd"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value121579%_)
        (let ((_%new-value121582%_ _%new-value121579%_))
          (set! __build-manifest _%new-value121582%_))))
    (define build-manifest-set!
      (lambda (_%new-value121564%_)
        (if (list? _%new-value121564%_)
            (let ((_%new-value121569%_ _%new-value121564%_))
              (__build-manifest-set! _%new-value121569%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value121564%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest121487%_ _%port121488%_)
        (let* ((_%manifest121491%_ _%manifest121487%_)
               (_%port121499%_ _%port121488%_))
          (let ((_%p121512%_
                 (lambda (_%g121507121509%_)
                   (display _%g121507121509%_ _%port121499%_)))
                (_%l121513%_
                 (let () (declare (not safe)) (##length _%manifest121491%_)))
                (_%i121514%_ '0))
            (let ((__tmp121696
                   (lambda (_%layer121516%_)
                     (if (zero? _%i121514%_)
                         '#!void
                         (if (= _%i121514%_ '1)
                             (_%p121512%_ '" on ")
                             (_%p121512%_ '", ")))
                     (let* ((_%layer121520121527%_ _%layer121516%_)
                            (_%E121522121531%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer121520121527%_
                                      '([name . version]))
                               '#!void))
                            (_%K121523121537%_
                             (lambda (_%version121534%_ _%name121535%_)
                               (_%p121512%_ _%name121535%_)
                               (_%p121512%_ '" ")
                               (_%p121512%_ _%version121534%_))))
                       (if (pair? _%layer121520121527%_)
                           (let ((_%hd121524121540%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer121520121527%_)))
                                 (_%tl121525121542%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer121520121527%_))))
                             (let* ((_%name121545%_ _%hd121524121540%_)
                                    (_%version121547%_ _%tl121525121542%_))
                               (_%K121523121537%_
                                _%version121547%_
                                _%name121545%_)))
                           (_%E121522121531%_)))
                     (set! _%i121514%_ (+ _%i121514%_ '1)))))
              (declare (not safe))
              (##for-each __tmp121696 _%manifest121491%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest121553%_ __build-manifest)
               (_%port121555%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121553%_ _%port121555%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest121557%_)
        (let ((_%port121559%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121557%_ _%port121559%_))))
    (define __display-build-manifest
      (lambda _g121697_
        (let ((_g121698_ (let () (declare (not safe)) (##length _g121697_))))
          (cond ((let () (declare (not safe)) (##fx= _g121698_ 0))
                 (apply __display-build-manifest__0 _g121697_))
                ((let () (declare (not safe)) (##fx= _g121698_ 1))
                 (apply __display-build-manifest__1 _g121697_))
                ((let () (declare (not safe)) (##fx= _g121698_ 2))
                 (apply __display-build-manifest__% _g121697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g121697_))))))
    (define display-build-manifest__%
      (lambda (_%manifest121446%_ _%port121447%_)
        (if (list? _%manifest121446%_)
            (let ((_%manifest121451%_ _%manifest121446%_))
              (if (port? _%port121447%_)
                  (let ((_%port121461%_ _%port121447%_))
                    (__display-build-manifest__%
                     _%manifest121451%_
                     _%port121461%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port121447%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest121446%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest121475%_ __build-manifest)
               (_%port121477%_ (current-output-port)))
          (__display-build-manifest__% _%manifest121475%_ _%port121477%_))))
    (define display-build-manifest__1
      (lambda (_%manifest121479%_)
        (let ((_%port121481%_ (current-output-port)))
          (display-build-manifest__% _%manifest121479%_ _%port121481%_))))
    (define display-build-manifest
      (lambda _g121699_
        (let ((_g121700_ (let () (declare (not safe)) (##length _g121699_))))
          (cond ((let () (declare (not safe)) (##fx= _g121700_ 0))
                 (apply display-build-manifest__0 _g121699_))
                ((let () (declare (not safe)) (##fx= _g121700_ 1))
                 (apply display-build-manifest__1 _g121699_))
                ((let () (declare (not safe)) (##fx= _g121700_ 2))
                 (apply display-build-manifest__% _g121699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g121699_))))))
    (define build-manifest/layer
      (lambda (_%layer121441%_)
        (let ((_%l121443%_ (assoc _%layer121441%_ __build-manifest)))
          (if _%l121443%_ (cons _%l121443%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest121385%_)
        (let ((_%manifest121388%_ _%manifest121385%_))
          (call-with-output-string
           '()
           (lambda (_%p121397%_)
             (let* ((_%manifest121399%_ _%manifest121388%_)
                    (_%port121402%_ _%p121397%_)
                    (_%manifest121407%_ _%manifest121399%_))
               (if (port? _%port121402%_)
                   (let ((_%port121422%_ _%port121402%_))
                     (__display-build-manifest__%
                      _%manifest121407%_
                      _%port121422%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port121402%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest121436%_ __build-manifest))
          (__build-manifest-string__% _%manifest121436%_))))
    (define __build-manifest-string
      (lambda _g121701_
        (let ((_g121702_ (let () (declare (not safe)) (##length _g121701_))))
          (cond ((let () (declare (not safe)) (##fx= _g121702_ 0))
                 (apply __build-manifest-string__0 _g121701_))
                ((let () (declare (not safe)) (##fx= _g121702_ 1))
                 (apply __build-manifest-string__% _g121701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g121701_))))))
    (define build-manifest-string__%
      (lambda (_%manifest121362%_)
        (if (list? _%manifest121362%_)
            (let ((_%manifest121366%_ _%manifest121362%_))
              (__build-manifest-string__% _%manifest121366%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest121362%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest121380%_ __build-manifest))
          (__build-manifest-string__% _%manifest121380%_))))
    (define build-manifest-string
      (lambda _g121703_
        (let ((_g121704_ (let () (declare (not safe)) (##length _g121703_))))
          (cond ((let () (declare (not safe)) (##fx= _g121704_ 0))
                 (apply build-manifest-string__0 _g121703_))
                ((let () (declare (not safe)) (##fx= _g121704_ 1))
                 (apply build-manifest-string__% _g121703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g121703_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest121344%_ gerbil-system-manifest)
               (_%manifest121349%_ _%manifest121344%_))
          (__build-manifest-string__% _%manifest121349%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value121329%_)
        (let ((_%new-value121332%_ _%new-value121329%_))
          (set! __gerbil-greeting _%new-value121332%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value121314%_)
        (if (string? _%new-value121314%_)
            (let ((_%new-value121319%_ _%new-value121314%_))
              (__gerbil-greeting-set! _%new-value121319%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value121314%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e121310%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e121310%_ _%$e121310%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e121306%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e121306%_ _%$e121306%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp121705
             (lambda ()
               (if (let ((__tmp121706
                          (let* ((_%str121275%_ (configure-command-string))
                                 (_%char121278%_ '#\')
                                 (_%str121283%_ _%str121275%_)
                                 (_%char121295%_ _%char121278%_))
                            (declare (not safe))
                            (__string-split _%str121283%_ _%char121295%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp121706))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp121705)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
