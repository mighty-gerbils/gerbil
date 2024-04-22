(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1713631266)
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
      (lambda _%paths115169%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths115169%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths115169%_)))
        (let ((__tmp115175
               (lambda (_%p115171%_)
                 (set! __load-path (cons _%p115171%_ __load-path))))
              (__tmp115174 (reverse! _%paths115169%_)))
          (declare (not safe))
          (##for-each __tmp115175 __tmp115174))))
    (define set-load-path!
      (lambda (_%paths115155%_)
        (if (list? _%paths115155%_)
            (let ((_%paths115159%_ _%paths115155%_))
              (__set-load-path! _%paths115159%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths115155%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths115143%_)
        (let ((_%paths115146%_ _%paths115143%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths115146%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths115146%_)))
          (set! __load-path _%paths115146%_))))
    (define load-module
      (lambda (_%modpath115129%_)
        (if (string? _%modpath115129%_)
            (let ((_%modpath115133%_ _%modpath115129%_))
              (__load-module _%modpath115133%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath115129%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath115094%_)
        (let ((_%modpath115097%_ _%modpath115094%_))
          (mutex-lock! __load-mx)
          (let ((_%$e115106%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath115097%_))))
            (if _%$e115106%_
                ((lambda (_%state115109%_)
                   (if (or (eq? 'builtin _%state115109%_)
                           (string? _%state115109%_))
                       (let () (mutex-unlock! __load-mx) _%state115109%_)
                       (if (eq? 'loading _%state115109%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath115097%_))
                           (if (and (pair? _%state115109%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state115109%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp115176 (cadr _%state115109%_)))
                                   (declare (not safe))
                                   (raise __tmp115176)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state115109%_)))))))
                 _%$e115106%_)
                (let ((_%$e115118%_ (__find-library-module _%modpath115097%_)))
                  (if _%$e115118%_
                      ((lambda (_%path115121%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath115097%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp115178
                                (lambda (_%exn115123%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp115179
                                         (cons 'error
                                               (cons _%exn115123%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath115097%_
                                     __tmp115179))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn115123%_))))
                               (__tmp115177
                                (lambda ()
                                  (let ((_%loaded-path115126%_
                                         (load _%path115121%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath115097%_
                                       _%loaded-path115126%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path115126%_))))
                           (declare (not safe))
                           (__with-catch __tmp115178 __tmp115177)))
                       _%$e115118%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath115097%_))))))))))
    (define reload-module!
      (lambda (_%modpath115080%_)
        (if (string? _%modpath115080%_)
            (let ((_%modpath115084%_ _%modpath115080%_))
              (__reload-module! _%modpath115084%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath115080%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath115051%_)
        (let ((_%modpath115054%_ _%modpath115051%_))
          (mutex-lock! __load-mx)
          (let ((_%$e115064%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath115054%_))))
            (if _%$e115064%_
                ((lambda (_%state115067%_)
                   (if (eq? _%state115067%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath115054%_)))
                       (if (eq? 'loading _%state115067%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state115067%_)
                               (let ((_%latest-path115072%_
                                      (__find-library-module
                                       _%modpath115054%_)))
                                 (if (or (equal? (path-extension
                                                  _%state115067%_)
                                                 '".scm")
                                         (not (equal? _%state115067%_
                                                      _%latest-path115072%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath115054%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath115054%_))
                                     '#!void))
                               (if (and (pair? _%state115067%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state115067%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath115054%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath115054%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state115067%_))))))))
                 _%$e115064%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath115054%_)))))))
    (define __find-library-module
      (lambda (_%modpath114985%_)
        (letrec ((_%find-compiled-file114987%_
                  (lambda (_%npath115040%_)
                    (let ((_%basepath115042%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath115040%_ '".o"))))
                      (let _%lp115044%_ ((_%current115046%_ '#f)
                                         (_%n115047%_ '1))
                        (let ((_%next115049%_
                               (let ((__tmp115180
                                      (number->string _%n115047%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath115042%_
                                  __tmp115180))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next115049%_))
                              (_%lp115044%_
                               _%next115049%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n115047%_ '1)))
                              _%current115046%_))))))
                 (_%find-source-file114988%_
                  (lambda (_%npath115036%_)
                    (let ((_%spath115038%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath115036%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath115038%_))
                          _%spath115038%_
                          '#f)))))
          (let _%lp114990%_ ((_%rest114992%_ (load-path)))
            (let* ((_%rest114993115001%_ _%rest114992%_)
                   (_%else114995115009%_ (lambda () '#f))
                   (_%K114997115024%_
                    (lambda (_%rest115012%_ _%dir115013%_)
                      (let* ((_%npath115015%_
                              (path-expand
                               _%modpath114985%_
                               (path-expand _%dir115013%_)))
                             (_%$e115017%_
                              (_%find-compiled-file114987%_ _%npath115015%_)))
                        (if _%$e115017%_
                            (path-normalize _%$e115017%_)
                            (let ((_%$e115020%_
                                   (_%find-source-file114988%_
                                    _%npath115015%_)))
                              (if _%$e115020%_
                                  (path-normalize _%$e115020%_)
                                  (_%lp114990%_ _%rest115012%_))))))))
              (if (pair? _%rest114993115001%_)
                  (let ((_%hd114998115027%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest114993115001%_)))
                        (_%tl114999115029%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest114993115001%_))))
                    (let* ((_%dir115032%_ _%hd114998115027%_)
                           (_%rest115034%_ _%tl114999115029%_))
                      (_%K114997115024%_ _%rest115034%_ _%dir115032%_)))
                  (_%else114995115009%_)))))))))
