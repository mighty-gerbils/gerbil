(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1770342297)
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
      (lambda _%paths137632%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths137632%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths137632%_)))
        (let ((__tmp137638
               (lambda (_%p137634%_)
                 (set! __load-path (cons _%p137634%_ __load-path))))
              (__tmp137637 (reverse! _%paths137632%_)))
          (declare (not safe))
          (##for-each __tmp137638 __tmp137637))))
    (define set-load-path!
      (lambda (_%paths137618%_)
        (if (list? _%paths137618%_)
            (let ((_%paths137622%_ _%paths137618%_))
              (__set-load-path! _%paths137622%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths137618%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths137606%_)
        (let ((_%paths137609%_ _%paths137606%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths137609%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths137609%_)))
          (set! __load-path _%paths137609%_))))
    (define load-module
      (lambda (_%modpath137592%_)
        (if (string? _%modpath137592%_)
            (let ((_%modpath137596%_ _%modpath137592%_))
              (__load-module _%modpath137596%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath137592%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath137557%_)
        (let ((_%modpath137560%_ _%modpath137557%_))
          (mutex-lock! __load-mx)
          (let ((_%$e137569%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath137560%_))))
            (if _%$e137569%_
                ((lambda (_%state137572%_)
                   (if (or (eq? 'builtin _%state137572%_)
                           (string? _%state137572%_))
                       (let () (mutex-unlock! __load-mx) _%state137572%_)
                       (if (eq? 'loading _%state137572%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath137560%_))
                           (if (and (pair? _%state137572%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state137572%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp137639 (cadr _%state137572%_)))
                                   (declare (not safe))
                                   (raise __tmp137639)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state137572%_)))))))
                 _%$e137569%_)
                (let ((_%$e137581%_ (__find-library-module _%modpath137560%_)))
                  (if _%$e137581%_
                      ((lambda (_%path137584%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath137560%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp137641
                                (lambda (_%exn137586%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp137642
                                         (cons 'error
                                               (cons _%exn137586%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath137560%_
                                     __tmp137642))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn137586%_))))
                               (__tmp137640
                                (lambda ()
                                  (let ((_%loaded-path137589%_
                                         (load _%path137584%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath137560%_
                                       _%loaded-path137589%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath137560%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath137560%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path137589%_))))
                           (declare (not safe))
                           (__with-catch __tmp137641 __tmp137640)))
                       _%$e137581%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath137560%_))))))))))
    (define reload-module!
      (lambda (_%modpath137543%_)
        (if (string? _%modpath137543%_)
            (let ((_%modpath137547%_ _%modpath137543%_))
              (__reload-module! _%modpath137547%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath137543%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath137515%_)
        (let ((_%modpath137518%_ _%modpath137515%_))
          (mutex-lock! __load-mx)
          (let ((_%$e137527%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath137518%_))))
            (if _%$e137527%_
                ((lambda (_%state137530%_)
                   (if (eq? _%state137530%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath137518%_)))
                       (if (eq? 'loading _%state137530%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state137530%_)
                               (let ((_%latest-path137535%_
                                      (__find-library-module
                                       _%modpath137518%_)))
                                 (if (or (equal? (path-extension
                                                  _%state137530%_)
                                                 '".scm")
                                         (not (equal? _%state137530%_
                                                      _%latest-path137535%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath137518%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath137518%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state137530%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state137530%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath137518%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath137518%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state137530%_))))))))
                 _%$e137527%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath137518%_)))))))
    (define __find-library-module
      (lambda (_%modpath137449%_)
        (letrec ((_%find-compiled-file137451%_
                  (lambda (_%npath137504%_)
                    (let ((_%basepath137506%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath137504%_ '".o"))))
                      (let _%lp137508%_ ((_%current137510%_ '#f)
                                         (_%n137511%_ '1))
                        (let ((_%next137513%_
                               (let ((__tmp137643
                                      (number->string _%n137511%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath137506%_
                                  __tmp137643))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next137513%_))
                              (_%lp137508%_
                               _%next137513%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n137511%_ '1)))
                              _%current137510%_))))))
                 (_%find-source-file137452%_
                  (lambda (_%npath137500%_)
                    (let ((_%spath137502%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath137500%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath137502%_))
                          _%spath137502%_
                          '#f)))))
          (let _%lp137454%_ ((_%rest137456%_ (load-path)))
            (let* ((_%rest137457137465%_ _%rest137456%_)
                   (_%else137459137473%_ (lambda () '#f))
                   (_%K137461137488%_
                    (lambda (_%rest137476%_ _%dir137477%_)
                      (let* ((_%npath137479%_
                              (path-expand
                               _%modpath137449%_
                               (path-expand _%dir137477%_)))
                             (_%$e137481%_
                              (_%find-compiled-file137451%_ _%npath137479%_)))
                        (if _%$e137481%_
                            (path-normalize _%$e137481%_)
                            (let ((_%$e137484%_
                                   (_%find-source-file137452%_
                                    _%npath137479%_)))
                              (if _%$e137484%_
                                  (path-normalize _%$e137484%_)
                                  (_%lp137454%_ _%rest137476%_))))))))
              (if (pair? _%rest137457137465%_)
                  (let ((_%hd137462137491%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest137457137465%_)))
                        (_%tl137463137493%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest137457137465%_))))
                    (let* ((_%dir137496%_ _%hd137462137491%_)
                           (_%rest137498%_ _%tl137463137493%_))
                      (_%K137461137488%_ _%rest137498%_ _%dir137496%_)))
                  (_%else137459137473%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result137447%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result137447%_))))
    (define module-load-order
      (lambda (_%modpath137431%_)
        (if (string? _%modpath137431%_)
            (let ((_%modpath137435%_ _%modpath137431%_))
              (__module-load-order _%modpath137435%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath137431%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath137411%_)
        (let ((_%modpath137414%_ _%modpath137411%_))
          (mutex-lock! __load-mx)
          (let ((_%ord137429%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath137414%_))
                          'builtin)
                     '0
                     (let ((_%$e137425%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath137414%_))))
                       (if _%$e137425%_ _%$e137425%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord137429%_)
                _%ord137429%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath137414%_))
                  '#!void))))))))
