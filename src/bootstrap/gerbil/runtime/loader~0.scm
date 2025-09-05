(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1756721295)
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
      (lambda _%paths123877%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths123877%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths123877%_)))
        (let ((__tmp123883
               (lambda (_%p123879%_)
                 (set! __load-path (cons _%p123879%_ __load-path))))
              (__tmp123882 (reverse! _%paths123877%_)))
          (declare (not safe))
          (##for-each __tmp123883 __tmp123882))))
    (define set-load-path!
      (lambda (_%paths123863%_)
        (if (list? _%paths123863%_)
            (let ((_%paths123867%_ _%paths123863%_))
              (__set-load-path! _%paths123867%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths123863%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths123851%_)
        (let ((_%paths123854%_ _%paths123851%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths123854%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths123854%_)))
          (set! __load-path _%paths123854%_))))
    (define load-module
      (lambda (_%modpath123837%_)
        (if (string? _%modpath123837%_)
            (let ((_%modpath123841%_ _%modpath123837%_))
              (__load-module _%modpath123841%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath123837%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath123802%_)
        (let ((_%modpath123805%_ _%modpath123802%_))
          (mutex-lock! __load-mx)
          (let ((_%$e123814%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath123805%_))))
            (if _%$e123814%_
                ((lambda (_%state123817%_)
                   (if (or (eq? 'builtin _%state123817%_)
                           (string? _%state123817%_))
                       (let () (mutex-unlock! __load-mx) _%state123817%_)
                       (if (eq? 'loading _%state123817%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath123805%_))
                           (if (and (pair? _%state123817%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state123817%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp123884 (cadr _%state123817%_)))
                                   (declare (not safe))
                                   (raise __tmp123884)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state123817%_)))))))
                 _%$e123814%_)
                (let ((_%$e123826%_ (__find-library-module _%modpath123805%_)))
                  (if _%$e123826%_
                      ((lambda (_%path123829%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath123805%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp123886
                                (lambda (_%exn123831%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp123887
                                         (cons 'error
                                               (cons _%exn123831%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath123805%_
                                     __tmp123887))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn123831%_))))
                               (__tmp123885
                                (lambda ()
                                  (let ((_%loaded-path123834%_
                                         (load _%path123829%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath123805%_
                                       _%loaded-path123834%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath123805%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath123805%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path123834%_))))
                           (declare (not safe))
                           (__with-catch __tmp123886 __tmp123885)))
                       _%$e123826%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath123805%_))))))))))
    (define reload-module!
      (lambda (_%modpath123788%_)
        (if (string? _%modpath123788%_)
            (let ((_%modpath123792%_ _%modpath123788%_))
              (__reload-module! _%modpath123792%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath123788%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath123760%_)
        (let ((_%modpath123763%_ _%modpath123760%_))
          (mutex-lock! __load-mx)
          (let ((_%$e123772%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath123763%_))))
            (if _%$e123772%_
                ((lambda (_%state123775%_)
                   (if (eq? _%state123775%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath123763%_)))
                       (if (eq? 'loading _%state123775%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state123775%_)
                               (let ((_%latest-path123780%_
                                      (__find-library-module
                                       _%modpath123763%_)))
                                 (if (or (equal? (path-extension
                                                  _%state123775%_)
                                                 '".scm")
                                         (not (equal? _%state123775%_
                                                      _%latest-path123780%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath123763%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath123763%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state123775%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state123775%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath123763%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath123763%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state123775%_))))))))
                 _%$e123772%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath123763%_)))))))
    (define __find-library-module
      (lambda (_%modpath123694%_)
        (letrec ((_%find-compiled-file123696%_
                  (lambda (_%npath123749%_)
                    (let ((_%basepath123751%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath123749%_ '".o"))))
                      (let _%lp123753%_ ((_%current123755%_ '#f)
                                         (_%n123756%_ '1))
                        (let ((_%next123758%_
                               (let ((__tmp123888
                                      (number->string _%n123756%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath123751%_
                                  __tmp123888))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next123758%_))
                              (_%lp123753%_
                               _%next123758%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n123756%_ '1)))
                              _%current123755%_))))))
                 (_%find-source-file123697%_
                  (lambda (_%npath123745%_)
                    (let ((_%spath123747%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath123745%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath123747%_))
                          _%spath123747%_
                          '#f)))))
          (let _%lp123699%_ ((_%rest123701%_ (load-path)))
            (let* ((_%rest123702123710%_ _%rest123701%_)
                   (_%else123704123718%_ (lambda () '#f))
                   (_%K123706123733%_
                    (lambda (_%rest123721%_ _%dir123722%_)
                      (let* ((_%npath123724%_
                              (path-expand
                               _%modpath123694%_
                               (path-expand _%dir123722%_)))
                             (_%$e123726%_
                              (_%find-compiled-file123696%_ _%npath123724%_)))
                        (if _%$e123726%_
                            (path-normalize _%$e123726%_)
                            (let ((_%$e123729%_
                                   (_%find-source-file123697%_
                                    _%npath123724%_)))
                              (if _%$e123729%_
                                  (path-normalize _%$e123729%_)
                                  (_%lp123699%_ _%rest123721%_))))))))
              (if (pair? _%rest123702123710%_)
                  (let ((_%hd123707123736%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest123702123710%_)))
                        (_%tl123708123738%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest123702123710%_))))
                    (let* ((_%dir123741%_ _%hd123707123736%_)
                           (_%rest123743%_ _%tl123708123738%_))
                      (_%K123706123733%_ _%rest123743%_ _%dir123741%_)))
                  (_%else123704123718%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result123692%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result123692%_))))
    (define module-load-order
      (lambda (_%modpath123676%_)
        (if (string? _%modpath123676%_)
            (let ((_%modpath123680%_ _%modpath123676%_))
              (__module-load-order _%modpath123680%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath123676%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath123656%_)
        (let ((_%modpath123659%_ _%modpath123656%_))
          (mutex-lock! __load-mx)
          (let ((_%ord123674%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath123659%_))
                          'builtin)
                     '0
                     (let ((_%$e123670%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath123659%_))))
                       (if _%$e123670%_ _%$e123670%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord123674%_)
                _%ord123674%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath123659%_))
                  '#!void))))))))
