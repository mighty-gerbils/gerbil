(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1734215269)
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
      (lambda _%paths115573%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths115573%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths115573%_)))
        (let ((__tmp115579
               (lambda (_%p115575%_)
                 (set! __load-path (cons _%p115575%_ __load-path))))
              (__tmp115578 (reverse! _%paths115573%_)))
          (declare (not safe))
          (##for-each __tmp115579 __tmp115578))))
    (define set-load-path!
      (lambda (_%paths115559%_)
        (if (list? _%paths115559%_)
            (let ((_%paths115563%_ _%paths115559%_))
              (__set-load-path! _%paths115563%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths115559%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths115547%_)
        (let ((_%paths115550%_ _%paths115547%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths115550%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths115550%_)))
          (set! __load-path _%paths115550%_))))
    (define load-module
      (lambda (_%modpath115533%_)
        (if (string? _%modpath115533%_)
            (let ((_%modpath115537%_ _%modpath115533%_))
              (__load-module _%modpath115537%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath115533%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath115498%_)
        (let ((_%modpath115501%_ _%modpath115498%_))
          (mutex-lock! __load-mx)
          (let ((_%$e115510%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath115501%_))))
            (if _%$e115510%_
                ((lambda (_%state115513%_)
                   (if (or (eq? 'builtin _%state115513%_)
                           (string? _%state115513%_))
                       (let () (mutex-unlock! __load-mx) _%state115513%_)
                       (if (eq? 'loading _%state115513%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath115501%_))
                           (if (and (pair? _%state115513%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state115513%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp115580 (cadr _%state115513%_)))
                                   (declare (not safe))
                                   (raise __tmp115580)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state115513%_)))))))
                 _%$e115510%_)
                (let ((_%$e115522%_ (__find-library-module _%modpath115501%_)))
                  (if _%$e115522%_
                      ((lambda (_%path115525%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath115501%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp115582
                                (lambda (_%exn115527%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp115583
                                         (cons 'error
                                               (cons _%exn115527%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath115501%_
                                     __tmp115583))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn115527%_))))
                               (__tmp115581
                                (lambda ()
                                  (let ((_%loaded-path115530%_
                                         (load _%path115525%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath115501%_
                                       _%loaded-path115530%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath115501%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath115501%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path115530%_))))
                           (declare (not safe))
                           (__with-catch __tmp115582 __tmp115581)))
                       _%$e115522%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath115501%_))))))))))
    (define reload-module!
      (lambda (_%modpath115484%_)
        (if (string? _%modpath115484%_)
            (let ((_%modpath115488%_ _%modpath115484%_))
              (__reload-module! _%modpath115488%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath115484%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath115456%_)
        (let ((_%modpath115459%_ _%modpath115456%_))
          (mutex-lock! __load-mx)
          (let ((_%$e115468%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath115459%_))))
            (if _%$e115468%_
                ((lambda (_%state115471%_)
                   (if (eq? _%state115471%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath115459%_)))
                       (if (eq? 'loading _%state115471%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state115471%_)
                               (let ((_%latest-path115476%_
                                      (__find-library-module
                                       _%modpath115459%_)))
                                 (if (or (equal? (path-extension
                                                  _%state115471%_)
                                                 '".scm")
                                         (not (equal? _%state115471%_
                                                      _%latest-path115476%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath115459%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath115459%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state115471%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state115471%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath115459%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath115459%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state115471%_))))))))
                 _%$e115468%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath115459%_)))))))
    (define __find-library-module
      (lambda (_%modpath115390%_)
        (letrec ((_%find-compiled-file115392%_
                  (lambda (_%npath115445%_)
                    (let ((_%basepath115447%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath115445%_ '".o"))))
                      (let _%lp115449%_ ((_%current115451%_ '#f)
                                         (_%n115452%_ '1))
                        (let ((_%next115454%_
                               (let ((__tmp115584
                                      (number->string _%n115452%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath115447%_
                                  __tmp115584))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next115454%_))
                              (_%lp115449%_
                               _%next115454%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n115452%_ '1)))
                              _%current115451%_))))))
                 (_%find-source-file115393%_
                  (lambda (_%npath115441%_)
                    (let ((_%spath115443%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath115441%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath115443%_))
                          _%spath115443%_
                          '#f)))))
          (let _%lp115395%_ ((_%rest115397%_ (load-path)))
            (let* ((_%rest115398115406%_ _%rest115397%_)
                   (_%else115400115414%_ (lambda () '#f))
                   (_%K115402115429%_
                    (lambda (_%rest115417%_ _%dir115418%_)
                      (let* ((_%npath115420%_
                              (path-expand
                               _%modpath115390%_
                               (path-expand _%dir115418%_)))
                             (_%$e115422%_
                              (_%find-compiled-file115392%_ _%npath115420%_)))
                        (if _%$e115422%_
                            (path-normalize _%$e115422%_)
                            (let ((_%$e115425%_
                                   (_%find-source-file115393%_
                                    _%npath115420%_)))
                              (if _%$e115425%_
                                  (path-normalize _%$e115425%_)
                                  (_%lp115395%_ _%rest115417%_))))))))
              (if (pair? _%rest115398115406%_)
                  (let ((_%hd115403115432%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115398115406%_)))
                        (_%tl115404115434%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115398115406%_))))
                    (let* ((_%dir115437%_ _%hd115403115432%_)
                           (_%rest115439%_ _%tl115404115434%_))
                      (_%K115402115429%_ _%rest115439%_ _%dir115437%_)))
                  (_%else115400115414%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result115388%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result115388%_))))
    (define module-load-order
      (lambda (_%modpath115372%_)
        (if (string? _%modpath115372%_)
            (let ((_%modpath115376%_ _%modpath115372%_))
              (__module-load-order _%modpath115376%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath115372%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath115352%_)
        (let ((_%modpath115355%_ _%modpath115352%_))
          (mutex-lock! __load-mx)
          (let ((_%ord115370%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath115355%_))
                          'builtin)
                     '0
                     (let ((_%$e115366%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath115355%_))))
                       (if _%$e115366%_ _%$e115366%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord115370%_)
                _%ord115370%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath115355%_))
                  '#!void))))))))
