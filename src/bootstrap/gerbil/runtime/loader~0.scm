(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712846034)
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
      (lambda _%paths113359%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths113359%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths113359%_)))
        (let ((__tmp113365
               (lambda (_%p113361%_)
                 (set! __load-path (cons _%p113361%_ __load-path))))
              (__tmp113364 (reverse! _%paths113359%_)))
          (declare (not safe))
          (##for-each __tmp113365 __tmp113364))))
    (define set-load-path!
      (lambda (_%paths113345%_)
        (if (list? _%paths113345%_)
            (let ((_%paths113349%_ _%paths113345%_))
              (__set-load-path! _%paths113349%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths113345%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths113333%_)
        (let ((_%paths113336%_ _%paths113333%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths113336%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths113336%_)))
          (set! __load-path _%paths113336%_))))
    (define load-module
      (lambda (_%modpath113319%_)
        (if (string? _%modpath113319%_)
            (let ((_%modpath113323%_ _%modpath113319%_))
              (__load-module _%modpath113323%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath113319%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath113284%_)
        (let ((_%modpath113287%_ _%modpath113284%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113296%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath113287%_))))
            (if _%$e113296%_
                ((lambda (_%state113299%_)
                   (if (or (eq? 'builtin _%state113299%_)
                           (string? _%state113299%_))
                       (let () (mutex-unlock! __load-mx) _%state113299%_)
                       (if (eq? 'loading _%state113299%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath113287%_))
                           (if (and (pair? _%state113299%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state113299%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp113366 (cadr _%state113299%_)))
                                   (declare (not safe))
                                   (raise __tmp113366)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state113299%_)))))))
                 _%$e113296%_)
                (let ((_%$e113308%_ (__find-library-module _%modpath113287%_)))
                  (if _%$e113308%_
                      ((lambda (_%path113311%_)
                         (let ()
                           (declare (not safe))
                           (hash-put! __modules _%modpath113287%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp113368
                                (lambda (_%exn113313%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp113369
                                         (cons 'error
                                               (cons _%exn113313%_ '()))))
                                    (declare (not safe))
                                    (hash-put!
                                     __modules
                                     _%modpath113287%_
                                     __tmp113369))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn113313%_))))
                               (__tmp113367
                                (lambda ()
                                  (let ((_%loaded-path113316%_
                                         (load _%path113311%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       __modules
                                       _%modpath113287%_
                                       _%loaded-path113316%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path113316%_))))
                           (declare (not safe))
                           (__with-catch __tmp113368 __tmp113367)))
                       _%$e113308%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath113287%_))))))))))
    (define reload-module!
      (lambda (_%modpath113270%_)
        (if (string? _%modpath113270%_)
            (let ((_%modpath113274%_ _%modpath113270%_))
              (__reload-module! _%modpath113274%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath113270%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath113241%_)
        (let ((_%modpath113244%_ _%modpath113241%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113254%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath113244%_))))
            (if _%$e113254%_
                ((lambda (_%state113257%_)
                   (if (eq? _%state113257%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath113244%_)))
                       (if (eq? 'loading _%state113257%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state113257%_)
                               (let ((_%latest-path113262%_
                                      (__find-library-module
                                       _%modpath113244%_)))
                                 (if (or (equal? (path-extension
                                                  _%state113257%_)
                                                 '".scm")
                                         (not (equal? _%state113257%_
                                                      _%latest-path113262%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (hash-remove!
                                          __modules
                                          _%modpath113244%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath113244%_))
                                     '#!void))
                               (if (and (pair? _%state113257%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state113257%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (hash-remove!
                                        __modules
                                        _%modpath113244%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath113244%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state113257%_))))))))
                 _%$e113254%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath113244%_)))))))
    (define __find-library-module
      (lambda (_%modpath113175%_)
        (letrec ((_%find-compiled-file113177%_
                  (lambda (_%npath113230%_)
                    (let ((_%basepath113232%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113230%_ '".o"))))
                      (let _%lp113234%_ ((_%current113236%_ '#f)
                                         (_%n113237%_ '1))
                        (let ((_%next113239%_
                               (let ((__tmp113370
                                      (number->string _%n113237%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath113232%_
                                  __tmp113370))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next113239%_))
                              (_%lp113234%_
                               _%next113239%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n113237%_ '1)))
                              _%current113236%_))))))
                 (_%find-source-file113178%_
                  (lambda (_%npath113226%_)
                    (let ((_%spath113228%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113226%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath113228%_))
                          _%spath113228%_
                          '#f)))))
          (let _%lp113180%_ ((_%rest113182%_ (load-path)))
            (let* ((_%rest113183113191%_ _%rest113182%_)
                   (_%else113185113199%_ (lambda () '#f))
                   (_%K113187113214%_
                    (lambda (_%rest113202%_ _%dir113203%_)
                      (let* ((_%npath113205%_
                              (path-expand
                               _%modpath113175%_
                               (path-expand _%dir113203%_)))
                             (_%$e113207%_
                              (_%find-compiled-file113177%_ _%npath113205%_)))
                        (if _%$e113207%_
                            (path-normalize _%$e113207%_)
                            (let ((_%$e113210%_
                                   (_%find-source-file113178%_
                                    _%npath113205%_)))
                              (if _%$e113210%_
                                  (path-normalize _%$e113210%_)
                                  (_%lp113180%_ _%rest113202%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest113183113191%_))
                  (let ((_%hd113188113217%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest113183113191%_)))
                        (_%tl113189113219%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest113183113191%_))))
                    (let* ((_%dir113222%_ _%hd113188113217%_)
                           (_%rest113224%_ _%tl113189113219%_))
                      (_%K113187113214%_ _%rest113224%_ _%dir113222%_)))
                  (_%else113185113199%_)))))))))
