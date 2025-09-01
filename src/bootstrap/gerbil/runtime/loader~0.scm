(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1756715352)
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
      (lambda _%paths123879%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths123879%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths123879%_)))
        (let ((__tmp123885
               (lambda (_%p123881%_)
                 (set! __load-path (cons _%p123881%_ __load-path))))
              (__tmp123884 (reverse! _%paths123879%_)))
          (declare (not safe))
          (##for-each __tmp123885 __tmp123884))))
    (define set-load-path!
      (lambda (_%paths123865%_)
        (if (list? _%paths123865%_)
            (let ((_%paths123869%_ _%paths123865%_))
              (__set-load-path! _%paths123869%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths123865%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths123853%_)
        (let ((_%paths123856%_ _%paths123853%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths123856%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths123856%_)))
          (set! __load-path _%paths123856%_))))
    (define load-module
      (lambda (_%modpath123839%_)
        (if (string? _%modpath123839%_)
            (let ((_%modpath123843%_ _%modpath123839%_))
              (__load-module _%modpath123843%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath123839%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath123804%_)
        (let ((_%modpath123807%_ _%modpath123804%_))
          (mutex-lock! __load-mx)
          (let ((_%$e123816%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath123807%_))))
            (if _%$e123816%_
                ((lambda (_%state123819%_)
                   (if (or (eq? 'builtin _%state123819%_)
                           (string? _%state123819%_))
                       (let () (mutex-unlock! __load-mx) _%state123819%_)
                       (if (eq? 'loading _%state123819%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath123807%_))
                           (if (and (pair? _%state123819%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state123819%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp123886 (cadr _%state123819%_)))
                                   (declare (not safe))
                                   (raise __tmp123886)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state123819%_)))))))
                 _%$e123816%_)
                (let ((_%$e123828%_ (__find-library-module _%modpath123807%_)))
                  (if _%$e123828%_
                      ((lambda (_%path123831%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath123807%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp123888
                                (lambda (_%exn123833%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp123889
                                         (cons 'error
                                               (cons _%exn123833%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath123807%_
                                     __tmp123889))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn123833%_))))
                               (__tmp123887
                                (lambda ()
                                  (let ((_%loaded-path123836%_
                                         (load _%path123831%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath123807%_
                                       _%loaded-path123836%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath123807%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath123807%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path123836%_))))
                           (declare (not safe))
                           (__with-catch __tmp123888 __tmp123887)))
                       _%$e123828%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath123807%_))))))))))
    (define reload-module!
      (lambda (_%modpath123790%_)
        (if (string? _%modpath123790%_)
            (let ((_%modpath123794%_ _%modpath123790%_))
              (__reload-module! _%modpath123794%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath123790%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath123762%_)
        (let ((_%modpath123765%_ _%modpath123762%_))
          (mutex-lock! __load-mx)
          (let ((_%$e123774%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath123765%_))))
            (if _%$e123774%_
                ((lambda (_%state123777%_)
                   (if (eq? _%state123777%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath123765%_)))
                       (if (eq? 'loading _%state123777%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state123777%_)
                               (let ((_%latest-path123782%_
                                      (__find-library-module
                                       _%modpath123765%_)))
                                 (if (or (equal? (path-extension
                                                  _%state123777%_)
                                                 '".scm")
                                         (not (equal? _%state123777%_
                                                      _%latest-path123782%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath123765%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath123765%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state123777%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state123777%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath123765%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath123765%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state123777%_))))))))
                 _%$e123774%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath123765%_)))))))
    (define __find-library-module
      (lambda (_%modpath123696%_)
        (letrec ((_%find-compiled-file123698%_
                  (lambda (_%npath123751%_)
                    (let ((_%basepath123753%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath123751%_ '".o"))))
                      (let _%lp123755%_ ((_%current123757%_ '#f)
                                         (_%n123758%_ '1))
                        (let ((_%next123760%_
                               (let ((__tmp123890
                                      (number->string _%n123758%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath123753%_
                                  __tmp123890))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next123760%_))
                              (_%lp123755%_
                               _%next123760%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n123758%_ '1)))
                              _%current123757%_))))))
                 (_%find-source-file123699%_
                  (lambda (_%npath123747%_)
                    (let ((_%spath123749%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath123747%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath123749%_))
                          _%spath123749%_
                          '#f)))))
          (let _%lp123701%_ ((_%rest123703%_ (load-path)))
            (let* ((_%rest123704123712%_ _%rest123703%_)
                   (_%else123706123720%_ (lambda () '#f))
                   (_%K123708123735%_
                    (lambda (_%rest123723%_ _%dir123724%_)
                      (let* ((_%npath123726%_
                              (path-expand
                               _%modpath123696%_
                               (path-expand _%dir123724%_)))
                             (_%$e123728%_
                              (_%find-compiled-file123698%_ _%npath123726%_)))
                        (if _%$e123728%_
                            (path-normalize _%$e123728%_)
                            (let ((_%$e123731%_
                                   (_%find-source-file123699%_
                                    _%npath123726%_)))
                              (if _%$e123731%_
                                  (path-normalize _%$e123731%_)
                                  (_%lp123701%_ _%rest123723%_))))))))
              (if (pair? _%rest123704123712%_)
                  (let ((_%hd123709123738%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest123704123712%_)))
                        (_%tl123710123740%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest123704123712%_))))
                    (let* ((_%dir123743%_ _%hd123709123738%_)
                           (_%rest123745%_ _%tl123710123740%_))
                      (_%K123708123735%_ _%rest123745%_ _%dir123743%_)))
                  (_%else123706123720%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result123694%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result123694%_))))
    (define module-load-order
      (lambda (_%modpath123678%_)
        (if (string? _%modpath123678%_)
            (let ((_%modpath123682%_ _%modpath123678%_))
              (__module-load-order _%modpath123682%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath123678%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath123658%_)
        (let ((_%modpath123661%_ _%modpath123658%_))
          (mutex-lock! __load-mx)
          (let ((_%ord123676%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath123661%_))
                          'builtin)
                     '0
                     (let ((_%$e123672%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath123661%_))))
                       (if _%$e123672%_ _%$e123672%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord123676%_)
                _%ord123676%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath123661%_))
                  '#!void))))))))
