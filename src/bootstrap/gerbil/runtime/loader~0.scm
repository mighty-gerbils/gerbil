(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1733687559)
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
      (lambda _%paths115328%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths115328%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths115328%_)))
        (let ((__tmp115334
               (lambda (_%p115330%_)
                 (set! __load-path (cons _%p115330%_ __load-path))))
              (__tmp115333 (reverse! _%paths115328%_)))
          (declare (not safe))
          (##for-each __tmp115334 __tmp115333))))
    (define set-load-path!
      (lambda (_%paths115314%_)
        (if (list? _%paths115314%_)
            (let ((_%paths115318%_ _%paths115314%_))
              (__set-load-path! _%paths115318%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths115314%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths115302%_)
        (let ((_%paths115305%_ _%paths115302%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths115305%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths115305%_)))
          (set! __load-path _%paths115305%_))))
    (define load-module
      (lambda (_%modpath115288%_)
        (if (string? _%modpath115288%_)
            (let ((_%modpath115292%_ _%modpath115288%_))
              (__load-module _%modpath115292%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath115288%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath115253%_)
        (let ((_%modpath115256%_ _%modpath115253%_))
          (mutex-lock! __load-mx)
          (let ((_%$e115265%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath115256%_))))
            (if _%$e115265%_
                ((lambda (_%state115268%_)
                   (if (or (eq? 'builtin _%state115268%_)
                           (string? _%state115268%_))
                       (let () (mutex-unlock! __load-mx) _%state115268%_)
                       (if (eq? 'loading _%state115268%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath115256%_))
                           (if (and (pair? _%state115268%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state115268%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp115335 (cadr _%state115268%_)))
                                   (declare (not safe))
                                   (raise __tmp115335)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state115268%_)))))))
                 _%$e115265%_)
                (let ((_%$e115277%_ (__find-library-module _%modpath115256%_)))
                  (if _%$e115277%_
                      ((lambda (_%path115280%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath115256%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp115337
                                (lambda (_%exn115282%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp115338
                                         (cons 'error
                                               (cons _%exn115282%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath115256%_
                                     __tmp115338))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn115282%_))))
                               (__tmp115336
                                (lambda ()
                                  (let ((_%loaded-path115285%_
                                         (load _%path115280%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath115256%_
                                       _%loaded-path115285%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path115285%_))))
                           (declare (not safe))
                           (__with-catch __tmp115337 __tmp115336)))
                       _%$e115277%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath115256%_))))))))))
    (define reload-module!
      (lambda (_%modpath115239%_)
        (if (string? _%modpath115239%_)
            (let ((_%modpath115243%_ _%modpath115239%_))
              (__reload-module! _%modpath115243%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath115239%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath115210%_)
        (let ((_%modpath115213%_ _%modpath115210%_))
          (mutex-lock! __load-mx)
          (let ((_%$e115223%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath115213%_))))
            (if _%$e115223%_
                ((lambda (_%state115226%_)
                   (if (eq? _%state115226%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath115213%_)))
                       (if (eq? 'loading _%state115226%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state115226%_)
                               (let ((_%latest-path115231%_
                                      (__find-library-module
                                       _%modpath115213%_)))
                                 (if (or (equal? (path-extension
                                                  _%state115226%_)
                                                 '".scm")
                                         (not (equal? _%state115226%_
                                                      _%latest-path115231%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath115213%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath115213%_))
                                     '#!void))
                               (if (and (pair? _%state115226%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state115226%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath115213%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath115213%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state115226%_))))))))
                 _%$e115223%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath115213%_)))))))
    (define __find-library-module
      (lambda (_%modpath115144%_)
        (letrec ((_%find-compiled-file115146%_
                  (lambda (_%npath115199%_)
                    (let ((_%basepath115201%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath115199%_ '".o"))))
                      (let _%lp115203%_ ((_%current115205%_ '#f)
                                         (_%n115206%_ '1))
                        (let ((_%next115208%_
                               (let ((__tmp115339
                                      (number->string _%n115206%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath115201%_
                                  __tmp115339))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next115208%_))
                              (_%lp115203%_
                               _%next115208%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n115206%_ '1)))
                              _%current115205%_))))))
                 (_%find-source-file115147%_
                  (lambda (_%npath115195%_)
                    (let ((_%spath115197%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath115195%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath115197%_))
                          _%spath115197%_
                          '#f)))))
          (let _%lp115149%_ ((_%rest115151%_ (load-path)))
            (let* ((_%rest115152115160%_ _%rest115151%_)
                   (_%else115154115168%_ (lambda () '#f))
                   (_%K115156115183%_
                    (lambda (_%rest115171%_ _%dir115172%_)
                      (let* ((_%npath115174%_
                              (path-expand
                               _%modpath115144%_
                               (path-expand _%dir115172%_)))
                             (_%$e115176%_
                              (_%find-compiled-file115146%_ _%npath115174%_)))
                        (if _%$e115176%_
                            (path-normalize _%$e115176%_)
                            (let ((_%$e115179%_
                                   (_%find-source-file115147%_
                                    _%npath115174%_)))
                              (if _%$e115179%_
                                  (path-normalize _%$e115179%_)
                                  (_%lp115149%_ _%rest115171%_))))))))
              (if (pair? _%rest115152115160%_)
                  (let ((_%hd115157115186%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115152115160%_)))
                        (_%tl115158115188%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115152115160%_))))
                    (let* ((_%dir115191%_ _%hd115157115186%_)
                           (_%rest115193%_ _%tl115158115188%_))
                      (_%K115156115183%_ _%rest115193%_ _%dir115191%_)))
                  (_%else115154115168%_)))))))))
