(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1734131746)
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
      (lambda _%paths115471%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths115471%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths115471%_)))
        (let ((__tmp115477
               (lambda (_%p115473%_)
                 (set! __load-path (cons _%p115473%_ __load-path))))
              (__tmp115476 (reverse! _%paths115471%_)))
          (declare (not safe))
          (##for-each __tmp115477 __tmp115476))))
    (define set-load-path!
      (lambda (_%paths115457%_)
        (if (list? _%paths115457%_)
            (let ((_%paths115461%_ _%paths115457%_))
              (__set-load-path! _%paths115461%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths115457%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths115445%_)
        (let ((_%paths115448%_ _%paths115445%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths115448%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths115448%_)))
          (set! __load-path _%paths115448%_))))
    (define load-module
      (lambda (_%modpath115431%_)
        (if (string? _%modpath115431%_)
            (let ((_%modpath115435%_ _%modpath115431%_))
              (__load-module _%modpath115435%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath115431%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath115396%_)
        (let ((_%modpath115399%_ _%modpath115396%_))
          (mutex-lock! __load-mx)
          (let ((_%$e115408%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath115399%_))))
            (if _%$e115408%_
                ((lambda (_%state115411%_)
                   (if (or (eq? 'builtin _%state115411%_)
                           (string? _%state115411%_))
                       (let () (mutex-unlock! __load-mx) _%state115411%_)
                       (if (eq? 'loading _%state115411%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath115399%_))
                           (if (and (pair? _%state115411%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state115411%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp115478 (cadr _%state115411%_)))
                                   (declare (not safe))
                                   (raise __tmp115478)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state115411%_)))))))
                 _%$e115408%_)
                (let ((_%$e115420%_ (__find-library-module _%modpath115399%_)))
                  (if _%$e115420%_
                      ((lambda (_%path115423%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath115399%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp115480
                                (lambda (_%exn115425%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp115481
                                         (cons 'error
                                               (cons _%exn115425%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath115399%_
                                     __tmp115481))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn115425%_))))
                               (__tmp115479
                                (lambda ()
                                  (let ((_%loaded-path115428%_
                                         (load _%path115423%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath115399%_
                                       _%loaded-path115428%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath115399%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath115399%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path115428%_))))
                           (declare (not safe))
                           (__with-catch __tmp115480 __tmp115479)))
                       _%$e115420%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath115399%_))))))))))
    (define reload-module!
      (lambda (_%modpath115382%_)
        (if (string? _%modpath115382%_)
            (let ((_%modpath115386%_ _%modpath115382%_))
              (__reload-module! _%modpath115386%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath115382%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath115354%_)
        (let ((_%modpath115357%_ _%modpath115354%_))
          (mutex-lock! __load-mx)
          (let ((_%$e115366%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath115357%_))))
            (if _%$e115366%_
                ((lambda (_%state115369%_)
                   (if (eq? _%state115369%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath115357%_)))
                       (if (eq? 'loading _%state115369%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state115369%_)
                               (let ((_%latest-path115374%_
                                      (__find-library-module
                                       _%modpath115357%_)))
                                 (if (or (equal? (path-extension
                                                  _%state115369%_)
                                                 '".scm")
                                         (not (equal? _%state115369%_
                                                      _%latest-path115374%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath115357%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath115357%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state115369%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state115369%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath115357%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath115357%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state115369%_))))))))
                 _%$e115366%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath115357%_)))))))
    (define __find-library-module
      (lambda (_%modpath115288%_)
        (letrec ((_%find-compiled-file115290%_
                  (lambda (_%npath115343%_)
                    (let ((_%basepath115345%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath115343%_ '".o"))))
                      (let _%lp115347%_ ((_%current115349%_ '#f)
                                         (_%n115350%_ '1))
                        (let ((_%next115352%_
                               (let ((__tmp115482
                                      (number->string _%n115350%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath115345%_
                                  __tmp115482))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next115352%_))
                              (_%lp115347%_
                               _%next115352%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n115350%_ '1)))
                              _%current115349%_))))))
                 (_%find-source-file115291%_
                  (lambda (_%npath115339%_)
                    (let ((_%spath115341%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath115339%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath115341%_))
                          _%spath115341%_
                          '#f)))))
          (let _%lp115293%_ ((_%rest115295%_ (load-path)))
            (let* ((_%rest115296115304%_ _%rest115295%_)
                   (_%else115298115312%_ (lambda () '#f))
                   (_%K115300115327%_
                    (lambda (_%rest115315%_ _%dir115316%_)
                      (let* ((_%npath115318%_
                              (path-expand
                               _%modpath115288%_
                               (path-expand _%dir115316%_)))
                             (_%$e115320%_
                              (_%find-compiled-file115290%_ _%npath115318%_)))
                        (if _%$e115320%_
                            (path-normalize _%$e115320%_)
                            (let ((_%$e115323%_
                                   (_%find-source-file115291%_
                                    _%npath115318%_)))
                              (if _%$e115323%_
                                  (path-normalize _%$e115323%_)
                                  (_%lp115293%_ _%rest115315%_))))))))
              (if (pair? _%rest115296115304%_)
                  (let ((_%hd115301115330%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115296115304%_)))
                        (_%tl115302115332%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115296115304%_))))
                    (let* ((_%dir115335%_ _%hd115301115330%_)
                           (_%rest115337%_ _%tl115302115332%_))
                      (_%K115300115327%_ _%rest115337%_ _%dir115335%_)))
                  (_%else115298115312%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result115286%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result115286%_))))
    (define module-load-order
      (lambda (_%modpath115270%_)
        (if (string? _%modpath115270%_)
            (let ((_%modpath115274%_ _%modpath115270%_))
              (__module-load-order _%modpath115274%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath115270%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath115250%_)
        (let ((_%modpath115253%_ _%modpath115250%_))
          (mutex-lock! __load-mx)
          (let ((_%ord115268%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath115253%_))
                          'builtin)
                     '0
                     (let ((_%$e115264%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath115253%_))))
                       (if _%$e115264%_ _%$e115264%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord115268%_)
                _%ord115268%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath115253%_))
                  '#!void))))))))
