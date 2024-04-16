(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1713044315)
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
      (lambda _%paths113763%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths113763%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths113763%_)))
        (let ((__tmp113769
               (lambda (_%p113765%_)
                 (set! __load-path (cons _%p113765%_ __load-path))))
              (__tmp113768 (reverse! _%paths113763%_)))
          (declare (not safe))
          (##for-each __tmp113769 __tmp113768))))
    (define set-load-path!
      (lambda (_%paths113749%_)
        (if (list? _%paths113749%_)
            (let ((_%paths113753%_ _%paths113749%_))
              (__set-load-path! _%paths113753%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths113749%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths113737%_)
        (let ((_%paths113740%_ _%paths113737%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths113740%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths113740%_)))
          (set! __load-path _%paths113740%_))))
    (define load-module
      (lambda (_%modpath113723%_)
        (if (string? _%modpath113723%_)
            (let ((_%modpath113727%_ _%modpath113723%_))
              (__load-module _%modpath113727%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath113723%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath113688%_)
        (let ((_%modpath113691%_ _%modpath113688%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113700%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath113691%_))))
            (if _%$e113700%_
                ((lambda (_%state113703%_)
                   (if (or (eq? 'builtin _%state113703%_)
                           (string? _%state113703%_))
                       (let () (mutex-unlock! __load-mx) _%state113703%_)
                       (if (eq? 'loading _%state113703%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath113691%_))
                           (if (and (pair? _%state113703%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state113703%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp113770 (cadr _%state113703%_)))
                                   (declare (not safe))
                                   (raise __tmp113770)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state113703%_)))))))
                 _%$e113700%_)
                (let ((_%$e113712%_ (__find-library-module _%modpath113691%_)))
                  (if _%$e113712%_
                      ((lambda (_%path113715%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath113691%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp113772
                                (lambda (_%exn113717%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp113773
                                         (cons 'error
                                               (cons _%exn113717%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath113691%_
                                     __tmp113773))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn113717%_))))
                               (__tmp113771
                                (lambda ()
                                  (let ((_%loaded-path113720%_
                                         (load _%path113715%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath113691%_
                                       _%loaded-path113720%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path113720%_))))
                           (declare (not safe))
                           (__with-catch __tmp113772 __tmp113771)))
                       _%$e113712%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath113691%_))))))))))
    (define reload-module!
      (lambda (_%modpath113674%_)
        (if (string? _%modpath113674%_)
            (let ((_%modpath113678%_ _%modpath113674%_))
              (__reload-module! _%modpath113678%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath113674%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath113645%_)
        (let ((_%modpath113648%_ _%modpath113645%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113658%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath113648%_))))
            (if _%$e113658%_
                ((lambda (_%state113661%_)
                   (if (eq? _%state113661%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath113648%_)))
                       (if (eq? 'loading _%state113661%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state113661%_)
                               (let ((_%latest-path113666%_
                                      (__find-library-module
                                       _%modpath113648%_)))
                                 (if (or (equal? (path-extension
                                                  _%state113661%_)
                                                 '".scm")
                                         (not (equal? _%state113661%_
                                                      _%latest-path113666%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath113648%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath113648%_))
                                     '#!void))
                               (if (and (pair? _%state113661%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state113661%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath113648%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath113648%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state113661%_))))))))
                 _%$e113658%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath113648%_)))))))
    (define __find-library-module
      (lambda (_%modpath113579%_)
        (letrec ((_%find-compiled-file113581%_
                  (lambda (_%npath113634%_)
                    (let ((_%basepath113636%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113634%_ '".o"))))
                      (let _%lp113638%_ ((_%current113640%_ '#f)
                                         (_%n113641%_ '1))
                        (let ((_%next113643%_
                               (let ((__tmp113774
                                      (number->string _%n113641%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath113636%_
                                  __tmp113774))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next113643%_))
                              (_%lp113638%_
                               _%next113643%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n113641%_ '1)))
                              _%current113640%_))))))
                 (_%find-source-file113582%_
                  (lambda (_%npath113630%_)
                    (let ((_%spath113632%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113630%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath113632%_))
                          _%spath113632%_
                          '#f)))))
          (let _%lp113584%_ ((_%rest113586%_ (load-path)))
            (let* ((_%rest113587113595%_ _%rest113586%_)
                   (_%else113589113603%_ (lambda () '#f))
                   (_%K113591113618%_
                    (lambda (_%rest113606%_ _%dir113607%_)
                      (let* ((_%npath113609%_
                              (path-expand
                               _%modpath113579%_
                               (path-expand _%dir113607%_)))
                             (_%$e113611%_
                              (_%find-compiled-file113581%_ _%npath113609%_)))
                        (if _%$e113611%_
                            (path-normalize _%$e113611%_)
                            (let ((_%$e113614%_
                                   (_%find-source-file113582%_
                                    _%npath113609%_)))
                              (if _%$e113614%_
                                  (path-normalize _%$e113614%_)
                                  (_%lp113584%_ _%rest113606%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest113587113595%_))
                  (let ((_%hd113592113621%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest113587113595%_)))
                        (_%tl113593113623%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest113587113595%_))))
                    (let* ((_%dir113626%_ _%hd113592113621%_)
                           (_%rest113628%_ _%tl113593113623%_))
                      (_%K113591113618%_ _%rest113628%_ _%dir113626%_)))
                  (_%else113589113603%_)))))))))
