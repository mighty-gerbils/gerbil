(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1781697556)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.2-40-g3635efe7"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value122700%_)
        (let ((_%new-value122703%_ _%new-value122700%_))
          (set! __build-manifest _%new-value122703%_))))
    (define build-manifest-set!
      (lambda (_%new-value122685%_)
        (if (list? _%new-value122685%_)
            (let ((_%new-value122690%_ _%new-value122685%_))
              (__build-manifest-set! _%new-value122690%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value122685%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest122608%_ _%port122609%_)
        (let* ((_%manifest122612%_ _%manifest122608%_)
               (_%port122620%_ _%port122609%_))
          (let ((_%p122633%_
                 (lambda (_%$%g122628122630%_)
                   (display _%$%g122628122630%_ _%port122620%_)))
                (_%l122634%_
                 (let () (declare (not safe)) (##length _%manifest122612%_)))
                (_%i122635%_ '0))
            (let ((__tmp122817
                   (lambda (_%layer122637%_)
                     (if (zero? _%i122635%_)
                         '#!void
                         (if (= _%i122635%_ '1)
                             (_%p122633%_ '" on ")
                             (_%p122633%_ '", ")))
                     (let* ((_%$%layer122641122648%_ _%layer122637%_)
                            (_%$%E122643122652%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%layer122641122648%_
                                      '([name . version]))
                               '#!void))
                            (_%$%K122644122658%_
                             (lambda (_%version122655%_ _%name122656%_)
                               (_%p122633%_ _%name122656%_)
                               (_%p122633%_ '" ")
                               (_%p122633%_ _%version122655%_))))
                       (if (pair? _%$%layer122641122648%_)
                           (let ((_%$%hd122645122661%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%layer122641122648%_)))
                                 (_%$%tl122646122663%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%layer122641122648%_))))
                             (let* ((_%name122666%_ _%$%hd122645122661%_)
                                    (_%version122668%_ _%$%tl122646122663%_))
                               (_%$%K122644122658%_
                                _%version122668%_
                                _%name122666%_)))
                           (_%$%E122643122652%_)))
                     (set! _%i122635%_ (+ _%i122635%_ '1)))))
              (declare (not safe))
              (##for-each __tmp122817 _%manifest122612%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest122674%_ __build-manifest)
               (_%port122676%_ (current-output-port)))
          (__display-build-manifest__% _%manifest122674%_ _%port122676%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest122678%_)
        (let ((_%port122680%_ (current-output-port)))
          (__display-build-manifest__% _%manifest122678%_ _%port122680%_))))
    (define __display-build-manifest
      (lambda _g122818_
        (let ((_g122819_ (let () (declare (not safe)) (##length _g122818_))))
          (cond ((let () (declare (not safe)) (##fx= _g122819_ 0))
                 (apply __display-build-manifest__0 _g122818_))
                ((let () (declare (not safe)) (##fx= _g122819_ 1))
                 (apply __display-build-manifest__1 _g122818_))
                ((let () (declare (not safe)) (##fx= _g122819_ 2))
                 (apply __display-build-manifest__% _g122818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g122818_))))))
    (define display-build-manifest__%
      (lambda (_%manifest122567%_ _%port122568%_)
        (if (list? _%manifest122567%_)
            (let ((_%manifest122572%_ _%manifest122567%_))
              (if (port? _%port122568%_)
                  (let ((_%port122582%_ _%port122568%_))
                    (__display-build-manifest__%
                     _%manifest122572%_
                     _%port122582%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port122568%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest122567%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest122596%_ __build-manifest)
               (_%port122598%_ (current-output-port)))
          (__display-build-manifest__% _%manifest122596%_ _%port122598%_))))
    (define display-build-manifest__1
      (lambda (_%manifest122600%_)
        (let ((_%port122602%_ (current-output-port)))
          (display-build-manifest__% _%manifest122600%_ _%port122602%_))))
    (define display-build-manifest
      (lambda _g122820_
        (let ((_g122821_ (let () (declare (not safe)) (##length _g122820_))))
          (cond ((let () (declare (not safe)) (##fx= _g122821_ 0))
                 (apply display-build-manifest__0 _g122820_))
                ((let () (declare (not safe)) (##fx= _g122821_ 1))
                 (apply display-build-manifest__1 _g122820_))
                ((let () (declare (not safe)) (##fx= _g122821_ 2))
                 (apply display-build-manifest__% _g122820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g122820_))))))
    (define build-manifest/layer
      (lambda (_%layer122562%_)
        (let ((_%l122564%_ (assoc _%layer122562%_ __build-manifest)))
          (if _%l122564%_ (cons _%l122564%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest122506%_)
        (let ((_%manifest122509%_ _%manifest122506%_))
          (call-with-output-string
           '()
           (lambda (_%p122518%_)
             (let* ((_%manifest122520%_ _%manifest122509%_)
                    (_%port122523%_ _%p122518%_)
                    (_%manifest122528%_ _%manifest122520%_))
               (if (port? _%port122523%_)
                   (let ((_%port122543%_ _%port122523%_))
                     (__display-build-manifest__%
                      _%manifest122528%_
                      _%port122543%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port122523%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest122557%_ __build-manifest))
          (__build-manifest-string__% _%manifest122557%_))))
    (define __build-manifest-string
      (lambda _g122822_
        (let ((_g122823_ (let () (declare (not safe)) (##length _g122822_))))
          (cond ((let () (declare (not safe)) (##fx= _g122823_ 0))
                 (apply __build-manifest-string__0 _g122822_))
                ((let () (declare (not safe)) (##fx= _g122823_ 1))
                 (apply __build-manifest-string__% _g122822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g122822_))))))
    (define build-manifest-string__%
      (lambda (_%manifest122483%_)
        (if (list? _%manifest122483%_)
            (let ((_%manifest122487%_ _%manifest122483%_))
              (__build-manifest-string__% _%manifest122487%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest122483%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest122501%_ __build-manifest))
          (__build-manifest-string__% _%manifest122501%_))))
    (define build-manifest-string
      (lambda _g122824_
        (let ((_g122825_ (let () (declare (not safe)) (##length _g122824_))))
          (cond ((let () (declare (not safe)) (##fx= _g122825_ 0))
                 (apply build-manifest-string__0 _g122824_))
                ((let () (declare (not safe)) (##fx= _g122825_ 1))
                 (apply build-manifest-string__% _g122824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g122824_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest122465%_ gerbil-system-manifest)
               (_%manifest122470%_ _%manifest122465%_))
          (__build-manifest-string__% _%manifest122470%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value122450%_)
        (let ((_%new-value122453%_ _%new-value122450%_))
          (set! __gerbil-greeting _%new-value122453%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value122435%_)
        (if (string? _%new-value122435%_)
            (let ((_%new-value122440%_ _%new-value122435%_))
              (__gerbil-greeting-set! _%new-value122440%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value122435%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e122431%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e122431%_ _%$e122431%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e122427%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e122427%_ _%$e122427%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp122826
             (lambda ()
               (if (let ((__tmp122827
                          (let* ((_%str122396%_ (configure-command-string))
                                 (_%char122399%_ '#\')
                                 (_%str122404%_ _%str122396%_)
                                 (_%char122416%_ _%char122399%_))
                            (declare (not safe))
                            (__string-split _%str122404%_ _%char122416%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp122827))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp122826)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
