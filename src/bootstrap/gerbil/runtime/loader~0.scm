(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1713001407)
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
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths113704%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths113704%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths113704%_)))
        (let ((__tmp113710
               (lambda (_%p113706%_)
                 (set! __load-path (cons _%p113706%_ __load-path))))
              (__tmp113709 (reverse! _%paths113704%_)))
          (declare (not safe))
          (##for-each __tmp113710 __tmp113709))))
    (define set-load-path!
      (lambda (_%paths113690%_)
        (if (list? _%paths113690%_)
            (let ((_%paths113694%_ _%paths113690%_))
              (__set-load-path! _%paths113694%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths113690%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths113678%_)
        (let ((_%paths113681%_ _%paths113678%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths113681%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths113681%_)))
          (set! __load-path _%paths113681%_))))
    (define load-module
      (lambda (_%modpath113664%_)
        (if (string? _%modpath113664%_)
            (let ((_%modpath113668%_ _%modpath113664%_))
              (__load-module _%modpath113668%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath113664%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath113629%_)
        (let ((_%modpath113632%_ _%modpath113629%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113641%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath113632%_))))
            (if _%$e113641%_
                ((lambda (_%state113644%_)
                   (if (or (eq? 'builtin _%state113644%_)
                           (string? _%state113644%_))
                       (let () (mutex-unlock! __load-mx) _%state113644%_)
                       (if (eq? 'loading _%state113644%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath113632%_))
                           (if (and (pair? _%state113644%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state113644%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp113711 (cadr _%state113644%_)))
                                   (declare (not safe))
                                   (raise __tmp113711)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state113644%_)))))))
                 _%$e113641%_)
                (let ((_%$e113653%_ (__find-library-module _%modpath113632%_)))
                  (if _%$e113653%_
                      ((lambda (_%path113656%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath113632%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp113713
                                (lambda (_%exn113658%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp113714
                                         (cons 'error
                                               (cons _%exn113658%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath113632%_
                                     __tmp113714))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn113658%_))))
                               (__tmp113712
                                (lambda ()
                                  (let ((_%loaded-path113661%_
                                         (load _%path113656%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath113632%_
                                       _%loaded-path113661%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path113661%_))))
                           (declare (not safe))
                           (__with-catch __tmp113713 __tmp113712)))
                       _%$e113653%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath113632%_))))))))))
    (define reload-module!
      (lambda (_%modpath113615%_)
        (if (string? _%modpath113615%_)
            (let ((_%modpath113619%_ _%modpath113615%_))
              (__reload-module! _%modpath113619%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath113615%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath113586%_)
        (let ((_%modpath113589%_ _%modpath113586%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113599%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath113589%_))))
            (if _%$e113599%_
                ((lambda (_%state113602%_)
                   (if (eq? _%state113602%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath113589%_)))
                       (if (eq? 'loading _%state113602%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state113602%_)
                               (let ((_%latest-path113607%_
                                      (__find-library-module
                                       _%modpath113589%_)))
                                 (if (or (equal? (path-extension
                                                  _%state113602%_)
                                                 '".scm")
                                         (not (equal? _%state113602%_
                                                      _%latest-path113607%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath113589%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath113589%_))
                                     '#!void))
                               (if (and (pair? _%state113602%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state113602%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath113589%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath113589%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state113602%_))))))))
                 _%$e113599%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath113589%_)))))))
    (define __find-library-module
      (lambda (_%modpath113520%_)
        (letrec ((_%find-compiled-file113522%_
                  (lambda (_%npath113575%_)
                    (let ((_%basepath113577%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113575%_ '".o"))))
                      (let _%lp113579%_ ((_%current113581%_ '#f)
                                         (_%n113582%_ '1))
                        (let ((_%next113584%_
                               (let ((__tmp113715
                                      (number->string _%n113582%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath113577%_
                                  __tmp113715))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next113584%_))
                              (_%lp113579%_
                               _%next113584%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n113582%_ '1)))
                              _%current113581%_))))))
                 (_%find-source-file113523%_
                  (lambda (_%npath113571%_)
                    (let ((_%spath113573%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113571%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath113573%_))
                          _%spath113573%_
                          '#f)))))
          (let _%lp113525%_ ((_%rest113527%_ (load-path)))
            (let* ((_%rest113528113536%_ _%rest113527%_)
                   (_%else113530113544%_ (lambda () '#f))
                   (_%K113532113559%_
                    (lambda (_%rest113547%_ _%dir113548%_)
                      (let* ((_%npath113550%_
                              (path-expand
                               _%modpath113520%_
                               (path-expand _%dir113548%_)))
                             (_%$e113552%_
                              (_%find-compiled-file113522%_ _%npath113550%_)))
                        (if _%$e113552%_
                            (path-normalize _%$e113552%_)
                            (let ((_%$e113555%_
                                   (_%find-source-file113523%_
                                    _%npath113550%_)))
                              (if _%$e113555%_
                                  (path-normalize _%$e113555%_)
                                  (_%lp113525%_ _%rest113547%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest113528113536%_))
                  (let ((_%hd113533113562%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest113528113536%_)))
                        (_%tl113534113564%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest113528113536%_))))
                    (let* ((_%dir113567%_ _%hd113533113562%_)
                           (_%rest113569%_ _%tl113534113564%_))
                      (_%K113532113559%_ _%rest113569%_ _%dir113567%_)))
                  (_%else113530113544%_)))))))))
