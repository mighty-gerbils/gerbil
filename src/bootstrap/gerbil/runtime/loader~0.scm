(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712993615)
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
      (lambda _%paths113417%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths113417%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths113417%_)))
        (let ((__tmp113423
               (lambda (_%p113419%_)
                 (set! __load-path (cons _%p113419%_ __load-path))))
              (__tmp113422 (reverse! _%paths113417%_)))
          (declare (not safe))
          (##for-each __tmp113423 __tmp113422))))
    (define set-load-path!
      (lambda (_%paths113403%_)
        (if (list? _%paths113403%_)
            (let ((_%paths113407%_ _%paths113403%_))
              (__set-load-path! _%paths113407%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths113403%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths113391%_)
        (let ((_%paths113394%_ _%paths113391%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths113394%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths113394%_)))
          (set! __load-path _%paths113394%_))))
    (define load-module
      (lambda (_%modpath113377%_)
        (if (string? _%modpath113377%_)
            (let ((_%modpath113381%_ _%modpath113377%_))
              (__load-module _%modpath113381%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath113377%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath113342%_)
        (let ((_%modpath113345%_ _%modpath113342%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113354%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath113345%_))))
            (if _%$e113354%_
                ((lambda (_%state113357%_)
                   (if (or (eq? 'builtin _%state113357%_)
                           (string? _%state113357%_))
                       (let () (mutex-unlock! __load-mx) _%state113357%_)
                       (if (eq? 'loading _%state113357%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath113345%_))
                           (if (and (pair? _%state113357%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state113357%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp113424 (cadr _%state113357%_)))
                                   (declare (not safe))
                                   (raise __tmp113424)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state113357%_)))))))
                 _%$e113354%_)
                (let ((_%$e113366%_ (__find-library-module _%modpath113345%_)))
                  (if _%$e113366%_
                      ((lambda (_%path113369%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath113345%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp113426
                                (lambda (_%exn113371%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp113427
                                         (cons 'error
                                               (cons _%exn113371%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath113345%_
                                     __tmp113427))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn113371%_))))
                               (__tmp113425
                                (lambda ()
                                  (let ((_%loaded-path113374%_
                                         (load _%path113369%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath113345%_
                                       _%loaded-path113374%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path113374%_))))
                           (declare (not safe))
                           (__with-catch __tmp113426 __tmp113425)))
                       _%$e113366%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath113345%_))))))))))
    (define reload-module!
      (lambda (_%modpath113328%_)
        (if (string? _%modpath113328%_)
            (let ((_%modpath113332%_ _%modpath113328%_))
              (__reload-module! _%modpath113332%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath113328%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath113299%_)
        (let ((_%modpath113302%_ _%modpath113299%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113312%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath113302%_))))
            (if _%$e113312%_
                ((lambda (_%state113315%_)
                   (if (eq? _%state113315%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath113302%_)))
                       (if (eq? 'loading _%state113315%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state113315%_)
                               (let ((_%latest-path113320%_
                                      (__find-library-module
                                       _%modpath113302%_)))
                                 (if (or (equal? (path-extension
                                                  _%state113315%_)
                                                 '".scm")
                                         (not (equal? _%state113315%_
                                                      _%latest-path113320%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath113302%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath113302%_))
                                     '#!void))
                               (if (and (pair? _%state113315%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state113315%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath113302%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath113302%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state113315%_))))))))
                 _%$e113312%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath113302%_)))))))
    (define __find-library-module
      (lambda (_%modpath113233%_)
        (letrec ((_%find-compiled-file113235%_
                  (lambda (_%npath113288%_)
                    (let ((_%basepath113290%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113288%_ '".o"))))
                      (let _%lp113292%_ ((_%current113294%_ '#f)
                                         (_%n113295%_ '1))
                        (let ((_%next113297%_
                               (let ((__tmp113428
                                      (number->string _%n113295%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath113290%_
                                  __tmp113428))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next113297%_))
                              (_%lp113292%_
                               _%next113297%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n113295%_ '1)))
                              _%current113294%_))))))
                 (_%find-source-file113236%_
                  (lambda (_%npath113284%_)
                    (let ((_%spath113286%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113284%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath113286%_))
                          _%spath113286%_
                          '#f)))))
          (let _%lp113238%_ ((_%rest113240%_ (load-path)))
            (let* ((_%rest113241113249%_ _%rest113240%_)
                   (_%else113243113257%_ (lambda () '#f))
                   (_%K113245113272%_
                    (lambda (_%rest113260%_ _%dir113261%_)
                      (let* ((_%npath113263%_
                              (path-expand
                               _%modpath113233%_
                               (path-expand _%dir113261%_)))
                             (_%$e113265%_
                              (_%find-compiled-file113235%_ _%npath113263%_)))
                        (if _%$e113265%_
                            (path-normalize _%$e113265%_)
                            (let ((_%$e113268%_
                                   (_%find-source-file113236%_
                                    _%npath113263%_)))
                              (if _%$e113268%_
                                  (path-normalize _%$e113268%_)
                                  (_%lp113238%_ _%rest113260%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest113241113249%_))
                  (let ((_%hd113246113275%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest113241113249%_)))
                        (_%tl113247113277%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest113241113249%_))))
                    (let* ((_%dir113280%_ _%hd113246113275%_)
                           (_%rest113282%_ _%tl113247113277%_))
                      (_%K113245113272%_ _%rest113282%_ _%dir113280%_)))
                  (_%else113243113257%_)))))))))
