(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1756224515)
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
      (lambda _%paths123462%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths123462%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths123462%_)))
        (let ((__tmp123468
               (lambda (_%p123464%_)
                 (set! __load-path (cons _%p123464%_ __load-path))))
              (__tmp123467 (reverse! _%paths123462%_)))
          (declare (not safe))
          (##for-each __tmp123468 __tmp123467))))
    (define set-load-path!
      (lambda (_%paths123448%_)
        (if (list? _%paths123448%_)
            (let ((_%paths123452%_ _%paths123448%_))
              (__set-load-path! _%paths123452%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths123448%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths123436%_)
        (let ((_%paths123439%_ _%paths123436%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths123439%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths123439%_)))
          (set! __load-path _%paths123439%_))))
    (define load-module
      (lambda (_%modpath123422%_)
        (if (string? _%modpath123422%_)
            (let ((_%modpath123426%_ _%modpath123422%_))
              (__load-module _%modpath123426%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath123422%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath123387%_)
        (let ((_%modpath123390%_ _%modpath123387%_))
          (mutex-lock! __load-mx)
          (let ((_%$e123399%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath123390%_))))
            (if _%$e123399%_
                ((lambda (_%state123402%_)
                   (if (or (eq? 'builtin _%state123402%_)
                           (string? _%state123402%_))
                       (let () (mutex-unlock! __load-mx) _%state123402%_)
                       (if (eq? 'loading _%state123402%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath123390%_))
                           (if (and (pair? _%state123402%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state123402%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp123469 (cadr _%state123402%_)))
                                   (declare (not safe))
                                   (raise __tmp123469)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state123402%_)))))))
                 _%$e123399%_)
                (let ((_%$e123411%_ (__find-library-module _%modpath123390%_)))
                  (if _%$e123411%_
                      ((lambda (_%path123414%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath123390%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp123471
                                (lambda (_%exn123416%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp123472
                                         (cons 'error
                                               (cons _%exn123416%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath123390%_
                                     __tmp123472))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn123416%_))))
                               (__tmp123470
                                (lambda ()
                                  (let ((_%loaded-path123419%_
                                         (load _%path123414%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath123390%_
                                       _%loaded-path123419%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath123390%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath123390%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path123419%_))))
                           (declare (not safe))
                           (__with-catch __tmp123471 __tmp123470)))
                       _%$e123411%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath123390%_))))))))))
    (define reload-module!
      (lambda (_%modpath123373%_)
        (if (string? _%modpath123373%_)
            (let ((_%modpath123377%_ _%modpath123373%_))
              (__reload-module! _%modpath123377%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath123373%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath123345%_)
        (let ((_%modpath123348%_ _%modpath123345%_))
          (mutex-lock! __load-mx)
          (let ((_%$e123357%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath123348%_))))
            (if _%$e123357%_
                ((lambda (_%state123360%_)
                   (if (eq? _%state123360%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath123348%_)))
                       (if (eq? 'loading _%state123360%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state123360%_)
                               (let ((_%latest-path123365%_
                                      (__find-library-module
                                       _%modpath123348%_)))
                                 (if (or (equal? (path-extension
                                                  _%state123360%_)
                                                 '".scm")
                                         (not (equal? _%state123360%_
                                                      _%latest-path123365%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath123348%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath123348%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state123360%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state123360%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath123348%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath123348%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state123360%_))))))))
                 _%$e123357%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath123348%_)))))))
    (define __find-library-module
      (lambda (_%modpath123279%_)
        (letrec ((_%find-compiled-file123281%_
                  (lambda (_%npath123334%_)
                    (let ((_%basepath123336%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath123334%_ '".o"))))
                      (let _%lp123338%_ ((_%current123340%_ '#f)
                                         (_%n123341%_ '1))
                        (let ((_%next123343%_
                               (let ((__tmp123473
                                      (number->string _%n123341%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath123336%_
                                  __tmp123473))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next123343%_))
                              (_%lp123338%_
                               _%next123343%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n123341%_ '1)))
                              _%current123340%_))))))
                 (_%find-source-file123282%_
                  (lambda (_%npath123330%_)
                    (let ((_%spath123332%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath123330%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath123332%_))
                          _%spath123332%_
                          '#f)))))
          (let _%lp123284%_ ((_%rest123286%_ (load-path)))
            (let* ((_%rest123287123295%_ _%rest123286%_)
                   (_%else123289123303%_ (lambda () '#f))
                   (_%K123291123318%_
                    (lambda (_%rest123306%_ _%dir123307%_)
                      (let* ((_%npath123309%_
                              (path-expand
                               _%modpath123279%_
                               (path-expand _%dir123307%_)))
                             (_%$e123311%_
                              (_%find-compiled-file123281%_ _%npath123309%_)))
                        (if _%$e123311%_
                            (path-normalize _%$e123311%_)
                            (let ((_%$e123314%_
                                   (_%find-source-file123282%_
                                    _%npath123309%_)))
                              (if _%$e123314%_
                                  (path-normalize _%$e123314%_)
                                  (_%lp123284%_ _%rest123306%_))))))))
              (if (pair? _%rest123287123295%_)
                  (let ((_%hd123292123321%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest123287123295%_)))
                        (_%tl123293123323%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest123287123295%_))))
                    (let* ((_%dir123326%_ _%hd123292123321%_)
                           (_%rest123328%_ _%tl123293123323%_))
                      (_%K123291123318%_ _%rest123328%_ _%dir123326%_)))
                  (_%else123289123303%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result123277%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result123277%_))))
    (define module-load-order
      (lambda (_%modpath123261%_)
        (if (string? _%modpath123261%_)
            (let ((_%modpath123265%_ _%modpath123261%_))
              (__module-load-order _%modpath123265%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath123261%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath123241%_)
        (let ((_%modpath123244%_ _%modpath123241%_))
          (mutex-lock! __load-mx)
          (let ((_%ord123259%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath123244%_))
                          'builtin)
                     '0
                     (let ((_%$e123255%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath123244%_))))
                       (if _%$e123255%_ _%$e123255%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord123259%_)
                _%ord123259%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath123244%_))
                  '#!void))))))))
