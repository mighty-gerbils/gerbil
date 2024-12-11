(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1733870074)
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
      (lambda _%paths115365%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths115365%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths115365%_)))
        (let ((__tmp115371
               (lambda (_%p115367%_)
                 (set! __load-path (cons _%p115367%_ __load-path))))
              (__tmp115370 (reverse! _%paths115365%_)))
          (declare (not safe))
          (##for-each __tmp115371 __tmp115370))))
    (define set-load-path!
      (lambda (_%paths115351%_)
        (if (list? _%paths115351%_)
            (let ((_%paths115355%_ _%paths115351%_))
              (__set-load-path! _%paths115355%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths115351%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths115339%_)
        (let ((_%paths115342%_ _%paths115339%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths115342%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths115342%_)))
          (set! __load-path _%paths115342%_))))
    (define load-module
      (lambda (_%modpath115325%_)
        (if (string? _%modpath115325%_)
            (let ((_%modpath115329%_ _%modpath115325%_))
              (__load-module _%modpath115329%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath115325%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath115290%_)
        (let ((_%modpath115293%_ _%modpath115290%_))
          (mutex-lock! __load-mx)
          (let ((_%$e115302%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath115293%_))))
            (if _%$e115302%_
                ((lambda (_%state115305%_)
                   (if (or (eq? 'builtin _%state115305%_)
                           (string? _%state115305%_))
                       (let () (mutex-unlock! __load-mx) _%state115305%_)
                       (if (eq? 'loading _%state115305%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath115293%_))
                           (if (and (pair? _%state115305%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state115305%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp115372 (cadr _%state115305%_)))
                                   (declare (not safe))
                                   (raise __tmp115372)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state115305%_)))))))
                 _%$e115302%_)
                (let ((_%$e115314%_ (__find-library-module _%modpath115293%_)))
                  (if _%$e115314%_
                      ((lambda (_%path115317%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath115293%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp115374
                                (lambda (_%exn115319%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp115375
                                         (cons 'error
                                               (cons _%exn115319%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath115293%_
                                     __tmp115375))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn115319%_))))
                               (__tmp115373
                                (lambda ()
                                  (let ((_%loaded-path115322%_
                                         (load _%path115317%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath115293%_
                                       _%loaded-path115322%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath115293%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath115293%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path115322%_))))
                           (declare (not safe))
                           (__with-catch __tmp115374 __tmp115373)))
                       _%$e115314%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath115293%_))))))))))
    (define reload-module!
      (lambda (_%modpath115276%_)
        (if (string? _%modpath115276%_)
            (let ((_%modpath115280%_ _%modpath115276%_))
              (__reload-module! _%modpath115280%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath115276%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath115248%_)
        (let ((_%modpath115251%_ _%modpath115248%_))
          (mutex-lock! __load-mx)
          (let ((_%$e115260%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath115251%_))))
            (if _%$e115260%_
                ((lambda (_%state115263%_)
                   (if (eq? _%state115263%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath115251%_)))
                       (if (eq? 'loading _%state115263%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state115263%_)
                               (let ((_%latest-path115268%_
                                      (__find-library-module
                                       _%modpath115251%_)))
                                 (if (or (equal? (path-extension
                                                  _%state115263%_)
                                                 '".scm")
                                         (not (equal? _%state115263%_
                                                      _%latest-path115268%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath115251%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath115251%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state115263%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state115263%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath115251%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath115251%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state115263%_))))))))
                 _%$e115260%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath115251%_)))))))
    (define __find-library-module
      (lambda (_%modpath115182%_)
        (letrec ((_%find-compiled-file115184%_
                  (lambda (_%npath115237%_)
                    (let ((_%basepath115239%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath115237%_ '".o"))))
                      (let _%lp115241%_ ((_%current115243%_ '#f)
                                         (_%n115244%_ '1))
                        (let ((_%next115246%_
                               (let ((__tmp115376
                                      (number->string _%n115244%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath115239%_
                                  __tmp115376))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next115246%_))
                              (_%lp115241%_
                               _%next115246%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n115244%_ '1)))
                              _%current115243%_))))))
                 (_%find-source-file115185%_
                  (lambda (_%npath115233%_)
                    (let ((_%spath115235%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath115233%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath115235%_))
                          _%spath115235%_
                          '#f)))))
          (let _%lp115187%_ ((_%rest115189%_ (load-path)))
            (let* ((_%rest115190115198%_ _%rest115189%_)
                   (_%else115192115206%_ (lambda () '#f))
                   (_%K115194115221%_
                    (lambda (_%rest115209%_ _%dir115210%_)
                      (let* ((_%npath115212%_
                              (path-expand
                               _%modpath115182%_
                               (path-expand _%dir115210%_)))
                             (_%$e115214%_
                              (_%find-compiled-file115184%_ _%npath115212%_)))
                        (if _%$e115214%_
                            (path-normalize _%$e115214%_)
                            (let ((_%$e115217%_
                                   (_%find-source-file115185%_
                                    _%npath115212%_)))
                              (if _%$e115217%_
                                  (path-normalize _%$e115217%_)
                                  (_%lp115187%_ _%rest115209%_))))))))
              (if (pair? _%rest115190115198%_)
                  (let ((_%hd115195115224%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115190115198%_)))
                        (_%tl115196115226%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115190115198%_))))
                    (let* ((_%dir115229%_ _%hd115195115224%_)
                           (_%rest115231%_ _%tl115196115226%_))
                      (_%K115194115221%_ _%rest115231%_ _%dir115229%_)))
                  (_%else115192115206%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result115180%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result115180%_))))
    (define module-load-order
      (lambda (_%modpath115164%_)
        (if (string? _%modpath115164%_)
            (let ((_%modpath115168%_ _%modpath115164%_))
              (__module-load-order _%modpath115168%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath115164%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath115144%_)
        (let ((_%modpath115147%_ _%modpath115144%_))
          (mutex-lock! __load-mx)
          (let ((_%ord115162%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath115147%_))
                          'builtin)
                     '0
                     (let ((_%$e115158%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath115147%_))))
                       (if _%$e115158%_ _%$e115158%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord115162%_)
                _%ord115162%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath115147%_))
                  '#!void))))))))
