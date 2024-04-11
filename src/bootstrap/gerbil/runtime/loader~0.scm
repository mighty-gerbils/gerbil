(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712823026)
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
      (lambda _%paths113357%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths113357%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths113357%_)))
        (let ((__tmp113363
               (lambda (_%p113359%_)
                 (set! __load-path (cons _%p113359%_ __load-path))))
              (__tmp113362 (reverse! _%paths113357%_)))
          (declare (not safe))
          (##for-each __tmp113363 __tmp113362))))
    (define set-load-path!
      (lambda (_%paths113343%_)
        (if (list? _%paths113343%_)
            (let ((_%paths113347%_ _%paths113343%_))
              (__set-load-path! _%paths113347%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths113343%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths113331%_)
        (let ((_%paths113334%_ _%paths113331%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths113334%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths113334%_)))
          (set! __load-path _%paths113334%_))))
    (define load-module
      (lambda (_%modpath113317%_)
        (if (string? _%modpath113317%_)
            (let ((_%modpath113321%_ _%modpath113317%_))
              (__load-module _%modpath113321%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath113317%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath113282%_)
        (let ((_%modpath113285%_ _%modpath113282%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113294%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath113285%_))))
            (if _%$e113294%_
                ((lambda (_%state113297%_)
                   (if (or (eq? 'builtin _%state113297%_)
                           (string? _%state113297%_))
                       (let () (mutex-unlock! __load-mx) _%state113297%_)
                       (if (eq? 'loading _%state113297%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath113285%_))
                           (if (and (pair? _%state113297%_)
                                    (eq? (car _%state113297%_) 'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp113364 (cadr _%state113297%_)))
                                   (declare (not safe))
                                   (raise __tmp113364)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state113297%_)))))))
                 _%$e113294%_)
                (let ((_%$e113306%_ (__find-library-module _%modpath113285%_)))
                  (if _%$e113306%_
                      ((lambda (_%path113309%_)
                         (let ()
                           (declare (not safe))
                           (hash-put! __modules _%modpath113285%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp113366
                                (lambda (_%exn113311%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp113367
                                         (cons 'error
                                               (cons _%exn113311%_ '()))))
                                    (declare (not safe))
                                    (hash-put!
                                     __modules
                                     _%modpath113285%_
                                     __tmp113367))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn113311%_))))
                               (__tmp113365
                                (lambda ()
                                  (let ((_%loaded-path113314%_
                                         (load _%path113309%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       __modules
                                       _%modpath113285%_
                                       _%loaded-path113314%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path113314%_))))
                           (declare (not safe))
                           (__with-catch __tmp113366 __tmp113365)))
                       _%$e113306%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath113285%_))))))))))
    (define reload-module!
      (lambda (_%modpath113268%_)
        (if (string? _%modpath113268%_)
            (let ((_%modpath113272%_ _%modpath113268%_))
              (__reload-module! _%modpath113272%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath113268%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath113239%_)
        (let ((_%modpath113242%_ _%modpath113239%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113252%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath113242%_))))
            (if _%$e113252%_
                ((lambda (_%state113255%_)
                   (if (eq? _%state113255%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath113242%_)))
                       (if (eq? 'loading _%state113255%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state113255%_)
                               (let ((_%latest-path113260%_
                                      (__find-library-module
                                       _%modpath113242%_)))
                                 (if (or (equal? (path-extension
                                                  _%state113255%_)
                                                 '".scm")
                                         (not (equal? _%state113255%_
                                                      _%latest-path113260%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (hash-remove!
                                          __modules
                                          _%modpath113242%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath113242%_))
                                     '#!void))
                               (if (and (pair? _%state113255%_)
                                        (eq? (car _%state113255%_) 'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (hash-remove!
                                        __modules
                                        _%modpath113242%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath113242%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state113255%_))))))))
                 _%$e113252%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath113242%_)))))))
    (define __find-library-module
      (lambda (_%modpath113173%_)
        (letrec ((_%find-compiled-file113175%_
                  (lambda (_%npath113228%_)
                    (let ((_%basepath113230%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113228%_ '".o"))))
                      (let _%lp113232%_ ((_%current113234%_ '#f)
                                         (_%n113235%_ '1))
                        (let ((_%next113237%_
                               (let ((__tmp113368
                                      (number->string _%n113235%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath113230%_
                                  __tmp113368))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next113237%_))
                              (_%lp113232%_
                               _%next113237%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n113235%_ '1)))
                              _%current113234%_))))))
                 (_%find-source-file113176%_
                  (lambda (_%npath113224%_)
                    (let ((_%spath113226%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113224%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath113226%_))
                          _%spath113226%_
                          '#f)))))
          (let _%lp113178%_ ((_%rest113180%_ (load-path)))
            (let* ((_%rest113181113189%_ _%rest113180%_)
                   (_%else113183113197%_ (lambda () '#f))
                   (_%K113185113212%_
                    (lambda (_%rest113200%_ _%dir113201%_)
                      (let* ((_%npath113203%_
                              (path-expand
                               _%modpath113173%_
                               (path-expand _%dir113201%_)))
                             (_%$e113205%_
                              (_%find-compiled-file113175%_ _%npath113203%_)))
                        (if _%$e113205%_
                            (path-normalize _%$e113205%_)
                            (let ((_%$e113208%_
                                   (_%find-source-file113176%_
                                    _%npath113203%_)))
                              (if _%$e113208%_
                                  (path-normalize _%$e113208%_)
                                  (_%lp113178%_ _%rest113200%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest113181113189%_))
                  (let ((_%hd113186113215%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest113181113189%_)))
                        (_%tl113187113217%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest113181113189%_))))
                    (let* ((_%dir113220%_ _%hd113186113215%_)
                           (_%rest113222%_ _%tl113187113217%_))
                      (_%K113185113212%_ _%rest113222%_ _%dir113220%_)))
                  (_%else113183113197%_)))))))))
