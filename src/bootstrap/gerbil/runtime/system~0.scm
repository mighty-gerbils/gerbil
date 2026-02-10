(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1770744573)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-84-g8dcd7d6fb"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value119042%_)
        (let ((_%new-value119045%_ _%new-value119042%_))
          (set! __build-manifest _%new-value119045%_))))
    (define build-manifest-set!
      (lambda (_%new-value118376%_)
        (if (list? _%new-value118376%_)
            (let ((_%new-value118381%_ _%new-value118376%_))
              (__build-manifest-set! _%new-value118381%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value118376%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest118965%_ _%port118966%_)
        (let* ((_%manifest118969%_ _%manifest118965%_)
               (_%port118977%_ _%port118966%_))
          (let ((_%p118990%_
                 (lambda (_%g118985118987%_)
                   (display _%g118985118987%_ _%port118977%_)))
                (_%l118991%_
                 (let () (declare (not safe)) (##length _%manifest118969%_)))
                (_%i118992%_ '0))
            (let ((__tmp119159
                   (lambda (_%layer118994%_)
                     (if (zero? _%i118992%_)
                         '#!void
                         (if (= _%i118992%_ '1)
                             (_%p118990%_ '" on ")
                             (_%p118990%_ '", ")))
                     (let* ((_%layer118998119005%_ _%layer118994%_)
                            (_%E119000119009%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer118998119005%_
                                      '([name . version]))
                               '#!void))
                            (_%K119001119015%_
                             (lambda (_%version119012%_ _%name119013%_)
                               (_%p118990%_ _%name119013%_)
                               (_%p118990%_ '" ")
                               (_%p118990%_ _%version119012%_))))
                       (if (pair? _%layer118998119005%_)
                           (let ((_%hd119002119018%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer118998119005%_)))
                                 (_%tl119003119020%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer118998119005%_))))
                             (let* ((_%name119023%_ _%hd119002119018%_)
                                    (_%version119025%_ _%tl119003119020%_))
                               (_%K119001119015%_
                                _%version119025%_
                                _%name119023%_)))
                           (_%E119000119009%_)))
                     (set! _%i118992%_ (+ _%i118992%_ '1)))))
              (declare (not safe))
              (##for-each __tmp119159 _%manifest118969%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest119031%_ __build-manifest)
               (_%port119033%_ (current-output-port)))
          (__display-build-manifest__% _%manifest119031%_ _%port119033%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest119035%_)
        (let ((_%port119037%_ (current-output-port)))
          (__display-build-manifest__% _%manifest119035%_ _%port119037%_))))
    (define __display-build-manifest
      (lambda _g119160_
        (let ((_g119161_ (let () (declare (not safe)) (##length _g119160_))))
          (cond ((let () (declare (not safe)) (##fx= _g119161_ 0))
                 (apply __display-build-manifest__0 _g119160_))
                ((let () (declare (not safe)) (##fx= _g119161_ 1))
                 (apply __display-build-manifest__1 _g119160_))
                ((let () (declare (not safe)) (##fx= _g119161_ 2))
                 (apply __display-build-manifest__% _g119160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g119160_))))))
    (define display-build-manifest__%
      (lambda (_%manifest118512%_ _%port118513%_)
        (if (list? _%manifest118512%_)
            (let ((_%manifest118517%_ _%manifest118512%_))
              (if (port? _%port118513%_)
                  (let ((_%port118527%_ _%port118513%_))
                    (__display-build-manifest__%
                     _%manifest118517%_
                     _%port118527%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port118513%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest118512%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest118541%_ __build-manifest)
               (_%port118543%_ (current-output-port)))
          (__display-build-manifest__% _%manifest118541%_ _%port118543%_))))
    (define display-build-manifest__1
      (lambda (_%manifest118545%_)
        (let ((_%port118547%_ (current-output-port)))
          (display-build-manifest__% _%manifest118545%_ _%port118547%_))))
    (define display-build-manifest
      (lambda _g119162_
        (let ((_g119163_ (let () (declare (not safe)) (##length _g119162_))))
          (cond ((let () (declare (not safe)) (##fx= _g119163_ 0))
                 (apply display-build-manifest__0 _g119162_))
                ((let () (declare (not safe)) (##fx= _g119163_ 1))
                 (apply display-build-manifest__1 _g119162_))
                ((let () (declare (not safe)) (##fx= _g119163_ 2))
                 (apply display-build-manifest__% _g119162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g119162_))))))
    (define build-manifest/layer
      (lambda (_%layer118960%_)
        (let ((_%l118962%_ (assoc _%layer118960%_ __build-manifest)))
          (if _%l118962%_ (cons _%l118962%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest118904%_)
        (let ((_%manifest118907%_ _%manifest118904%_))
          (call-with-output-string
           '()
           (lambda (_%p118916%_)
             (let* ((_%manifest118918%_ _%manifest118907%_)
                    (_%port118921%_ _%p118916%_)
                    (_%manifest118926%_ _%manifest118918%_))
               (if (port? _%port118921%_)
                   (let ((_%port118941%_ _%port118921%_))
                     (__display-build-manifest__%
                      _%manifest118926%_
                      _%port118941%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port118921%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest118955%_ __build-manifest))
          (__build-manifest-string__% _%manifest118955%_))))
    (define __build-manifest-string
      (lambda _g119164_
        (let ((_g119165_ (let () (declare (not safe)) (##length _g119164_))))
          (cond ((let () (declare (not safe)) (##fx= _g119165_ 0))
                 (apply __build-manifest-string__0 _g119164_))
                ((let () (declare (not safe)) (##fx= _g119165_ 1))
                 (apply __build-manifest-string__% _g119164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g119164_))))))
    (define build-manifest-string__%
      (lambda (_%manifest118673%_)
        (if (list? _%manifest118673%_)
            (let ((_%manifest118677%_ _%manifest118673%_))
              (__build-manifest-string__% _%manifest118677%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest118673%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest118691%_ __build-manifest))
          (__build-manifest-string__% _%manifest118691%_))))
    (define build-manifest-string
      (lambda _g119166_
        (let ((_g119167_ (let () (declare (not safe)) (##length _g119166_))))
          (cond ((let () (declare (not safe)) (##fx= _g119167_ 0))
                 (apply build-manifest-string__0 _g119166_))
                ((let () (declare (not safe)) (##fx= _g119167_ 1))
                 (apply build-manifest-string__% _g119166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g119166_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest118886%_ gerbil-system-manifest)
               (_%manifest118891%_ _%manifest118886%_))
          (__build-manifest-string__% _%manifest118891%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value118871%_)
        (let ((_%new-value118874%_ _%new-value118871%_))
          (set! __gerbil-greeting _%new-value118874%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value118815%_)
        (if (string? _%new-value118815%_)
            (let ((_%new-value118820%_ _%new-value118815%_))
              (__gerbil-greeting-set! _%new-value118820%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value118815%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e118867%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e118867%_ _%$e118867%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e118863%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e118863%_ _%$e118863%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp119168
             (lambda ()
               (if (let ((__tmp119169
                          (let* ((_%str118832%_ (configure-command-string))
                                 (_%char118835%_ '#\')
                                 (_%str118840%_ _%str118832%_)
                                 (_%char118852%_ _%char118835%_))
                            (declare (not safe))
                            (__string-split _%str118840%_ _%char118852%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp119169))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp119168)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
