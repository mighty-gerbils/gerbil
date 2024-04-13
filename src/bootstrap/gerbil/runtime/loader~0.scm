(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1713004410)
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
      (lambda _%paths113815%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths113815%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths113815%_)))
        (let ((__tmp113821
               (lambda (_%p113817%_)
                 (set! __load-path (cons _%p113817%_ __load-path))))
              (__tmp113820 (reverse! _%paths113815%_)))
          (declare (not safe))
          (##for-each __tmp113821 __tmp113820))))
    (define set-load-path!
      (lambda (_%paths113801%_)
        (if (list? _%paths113801%_)
            (let ((_%paths113805%_ _%paths113801%_))
              (__set-load-path! _%paths113805%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths113801%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths113789%_)
        (let ((_%paths113792%_ _%paths113789%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths113792%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths113792%_)))
          (set! __load-path _%paths113792%_))))
    (define load-module
      (lambda (_%modpath113775%_)
        (if (string? _%modpath113775%_)
            (let ((_%modpath113779%_ _%modpath113775%_))
              (__load-module _%modpath113779%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath113775%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath113740%_)
        (let ((_%modpath113743%_ _%modpath113740%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113752%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath113743%_))))
            (if _%$e113752%_
                ((lambda (_%state113755%_)
                   (if (or (eq? 'builtin _%state113755%_)
                           (string? _%state113755%_))
                       (let () (mutex-unlock! __load-mx) _%state113755%_)
                       (if (eq? 'loading _%state113755%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath113743%_))
                           (if (and (pair? _%state113755%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state113755%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp113822 (cadr _%state113755%_)))
                                   (declare (not safe))
                                   (raise __tmp113822)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state113755%_)))))))
                 _%$e113752%_)
                (let ((_%$e113764%_ (__find-library-module _%modpath113743%_)))
                  (if _%$e113764%_
                      ((lambda (_%path113767%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath113743%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp113824
                                (lambda (_%exn113769%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp113825
                                         (cons 'error
                                               (cons _%exn113769%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath113743%_
                                     __tmp113825))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn113769%_))))
                               (__tmp113823
                                (lambda ()
                                  (let ((_%loaded-path113772%_
                                         (load _%path113767%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath113743%_
                                       _%loaded-path113772%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path113772%_))))
                           (declare (not safe))
                           (__with-catch __tmp113824 __tmp113823)))
                       _%$e113764%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath113743%_))))))))))
    (define reload-module!
      (lambda (_%modpath113726%_)
        (if (string? _%modpath113726%_)
            (let ((_%modpath113730%_ _%modpath113726%_))
              (__reload-module! _%modpath113730%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath113726%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath113697%_)
        (let ((_%modpath113700%_ _%modpath113697%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113710%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath113700%_))))
            (if _%$e113710%_
                ((lambda (_%state113713%_)
                   (if (eq? _%state113713%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath113700%_)))
                       (if (eq? 'loading _%state113713%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state113713%_)
                               (let ((_%latest-path113718%_
                                      (__find-library-module
                                       _%modpath113700%_)))
                                 (if (or (equal? (path-extension
                                                  _%state113713%_)
                                                 '".scm")
                                         (not (equal? _%state113713%_
                                                      _%latest-path113718%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath113700%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath113700%_))
                                     '#!void))
                               (if (and (pair? _%state113713%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state113713%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath113700%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath113700%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state113713%_))))))))
                 _%$e113710%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath113700%_)))))))
    (define __find-library-module
      (lambda (_%modpath113631%_)
        (letrec ((_%find-compiled-file113633%_
                  (lambda (_%npath113686%_)
                    (let ((_%basepath113688%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113686%_ '".o"))))
                      (let _%lp113690%_ ((_%current113692%_ '#f)
                                         (_%n113693%_ '1))
                        (let ((_%next113695%_
                               (let ((__tmp113826
                                      (number->string _%n113693%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath113688%_
                                  __tmp113826))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next113695%_))
                              (_%lp113690%_
                               _%next113695%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n113693%_ '1)))
                              _%current113692%_))))))
                 (_%find-source-file113634%_
                  (lambda (_%npath113682%_)
                    (let ((_%spath113684%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113682%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath113684%_))
                          _%spath113684%_
                          '#f)))))
          (let _%lp113636%_ ((_%rest113638%_ (load-path)))
            (let* ((_%rest113639113647%_ _%rest113638%_)
                   (_%else113641113655%_ (lambda () '#f))
                   (_%K113643113670%_
                    (lambda (_%rest113658%_ _%dir113659%_)
                      (let* ((_%npath113661%_
                              (path-expand
                               _%modpath113631%_
                               (path-expand _%dir113659%_)))
                             (_%$e113663%_
                              (_%find-compiled-file113633%_ _%npath113661%_)))
                        (if _%$e113663%_
                            (path-normalize _%$e113663%_)
                            (let ((_%$e113666%_
                                   (_%find-source-file113634%_
                                    _%npath113661%_)))
                              (if _%$e113666%_
                                  (path-normalize _%$e113666%_)
                                  (_%lp113636%_ _%rest113658%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest113639113647%_))
                  (let ((_%hd113644113673%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest113639113647%_)))
                        (_%tl113645113675%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest113639113647%_))))
                    (let* ((_%dir113678%_ _%hd113644113673%_)
                           (_%rest113680%_ _%tl113645113675%_))
                      (_%K113643113670%_ _%rest113680%_ _%dir113678%_)))
                  (_%else113641113655%_)))))))))
