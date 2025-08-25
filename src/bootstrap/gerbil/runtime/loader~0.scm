(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1756156300)
  (begin
    (define __modules
      (let ()
        (declare (not safe))
        (make-hash-table__%
         '#f
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value)))
    (define __load-mx (make-mutex 'loader))
    (define __load-cv (make-condition-variable 'loader))
    (define __load-path '())
    (define __load-order
      (let ()
        (declare (not safe))
        (make-hash-table__%
         '#f
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value)))
    (define __load-order-next '1)
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths123459%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths123459%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths123459%_)))
        (let ((__tmp123465
               (lambda (_%p123461%_)
                 (set! __load-path (cons _%p123461%_ __load-path))))
              (__tmp123464 (reverse! _%paths123459%_)))
          (declare (not safe))
          (##for-each __tmp123465 __tmp123464))))
    (define set-load-path!
      (lambda (_%paths123445%_)
        (if (list? _%paths123445%_)
            (let ((_%paths123449%_ _%paths123445%_))
              (__set-load-path! _%paths123449%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths123445%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths123433%_)
        (let ((_%paths123436%_ _%paths123433%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths123436%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths123436%_)))
          (set! __load-path _%paths123436%_))))
    (define load-module
      (lambda (_%modpath123419%_)
        (if (string? _%modpath123419%_)
            (let ((_%modpath123423%_ _%modpath123419%_))
              (__load-module _%modpath123423%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath123419%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath123384%_)
        (let ((_%modpath123387%_ _%modpath123384%_))
          (mutex-lock! __load-mx)
          (let ((_%$e123396%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath123387%_))))
            (if _%$e123396%_
                ((lambda (_%state123399%_)
                   (if (or (eq? 'builtin _%state123399%_)
                           (string? _%state123399%_))
                       (let () (mutex-unlock! __load-mx) _%state123399%_)
                       (if (eq? 'loading _%state123399%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath123387%_))
                           (if (and (pair? _%state123399%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state123399%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp123466 (cadr _%state123399%_)))
                                   (declare (not safe))
                                   (raise __tmp123466)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state123399%_)))))))
                 _%$e123396%_)
                (let ((_%$e123408%_ (__find-library-module _%modpath123387%_)))
                  (if _%$e123408%_
                      ((lambda (_%path123411%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath123387%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp123468
                                (lambda (_%exn123413%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp123469
                                         (cons 'error
                                               (cons _%exn123413%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath123387%_
                                     __tmp123469))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn123413%_))))
                               (__tmp123467
                                (lambda ()
                                  (let ((_%loaded-path123416%_
                                         (load _%path123411%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath123387%_
                                       _%loaded-path123416%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath123387%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath123387%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path123416%_))))
                           (declare (not safe))
                           (__with-catch __tmp123468 __tmp123467)))
                       _%$e123408%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath123387%_))))))))))
    (define reload-module!
      (lambda (_%modpath123370%_)
        (if (string? _%modpath123370%_)
            (let ((_%modpath123374%_ _%modpath123370%_))
              (__reload-module! _%modpath123374%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath123370%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath123342%_)
        (let ((_%modpath123345%_ _%modpath123342%_))
          (mutex-lock! __load-mx)
          (let ((_%$e123354%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath123345%_))))
            (if _%$e123354%_
                ((lambda (_%state123357%_)
                   (if (eq? _%state123357%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath123345%_)))
                       (if (eq? 'loading _%state123357%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state123357%_)
                               (let ((_%latest-path123362%_
                                      (__find-library-module
                                       _%modpath123345%_)))
                                 (if (or (equal? (path-extension
                                                  _%state123357%_)
                                                 '".scm")
                                         (not (equal? _%state123357%_
                                                      _%latest-path123362%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath123345%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath123345%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state123357%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state123357%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath123345%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath123345%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state123357%_))))))))
                 _%$e123354%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath123345%_)))))))
    (define __find-library-module
      (lambda (_%modpath123276%_)
        (letrec ((_%find-compiled-file123278%_
                  (lambda (_%npath123331%_)
                    (let ((_%basepath123333%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath123331%_ '".o"))))
                      (let _%lp123335%_ ((_%current123337%_ '#f)
                                         (_%n123338%_ '1))
                        (let ((_%next123340%_
                               (let ((__tmp123470
                                      (number->string _%n123338%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath123333%_
                                  __tmp123470))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next123340%_))
                              (_%lp123335%_
                               _%next123340%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n123338%_ '1)))
                              _%current123337%_))))))
                 (_%find-source-file123279%_
                  (lambda (_%npath123327%_)
                    (let ((_%spath123329%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath123327%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath123329%_))
                          _%spath123329%_
                          '#f)))))
          (let _%lp123281%_ ((_%rest123283%_ (load-path)))
            (let* ((_%rest123284123292%_ _%rest123283%_)
                   (_%else123286123300%_ (lambda () '#f))
                   (_%K123288123315%_
                    (lambda (_%rest123303%_ _%dir123304%_)
                      (let* ((_%npath123306%_
                              (path-expand
                               _%modpath123276%_
                               (path-expand _%dir123304%_)))
                             (_%$e123308%_
                              (_%find-compiled-file123278%_ _%npath123306%_)))
                        (if _%$e123308%_
                            (path-normalize _%$e123308%_)
                            (let ((_%$e123311%_
                                   (_%find-source-file123279%_
                                    _%npath123306%_)))
                              (if _%$e123311%_
                                  (path-normalize _%$e123311%_)
                                  (_%lp123281%_ _%rest123303%_))))))))
              (if (pair? _%rest123284123292%_)
                  (let ((_%hd123289123318%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest123284123292%_)))
                        (_%tl123290123320%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest123284123292%_))))
                    (let* ((_%dir123323%_ _%hd123289123318%_)
                           (_%rest123325%_ _%tl123290123320%_))
                      (_%K123288123315%_ _%rest123325%_ _%dir123323%_)))
                  (_%else123286123300%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result123274%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result123274%_))))
    (define module-load-order
      (lambda (_%modpath123258%_)
        (if (string? _%modpath123258%_)
            (let ((_%modpath123262%_ _%modpath123258%_))
              (__module-load-order _%modpath123262%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath123258%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath123238%_)
        (let ((_%modpath123241%_ _%modpath123238%_))
          (mutex-lock! __load-mx)
          (let ((_%ord123256%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath123241%_))
                          'builtin)
                     '0
                     (let ((_%$e123252%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath123241%_))))
                       (if _%$e123252%_ _%$e123252%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord123256%_)
                _%ord123256%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath123241%_))
                  '#!void))))))))
