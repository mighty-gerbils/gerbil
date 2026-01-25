(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1769382894)
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
      (lambda _%paths127589%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths127589%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths127589%_)))
        (let ((__tmp127595
               (lambda (_%p127591%_)
                 (set! __load-path (cons _%p127591%_ __load-path))))
              (__tmp127594 (reverse! _%paths127589%_)))
          (declare (not safe))
          (##for-each __tmp127595 __tmp127594))))
    (define set-load-path!
      (lambda (_%paths127575%_)
        (if (list? _%paths127575%_)
            (let ((_%paths127579%_ _%paths127575%_))
              (__set-load-path! _%paths127579%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths127575%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths127563%_)
        (let ((_%paths127566%_ _%paths127563%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths127566%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths127566%_)))
          (set! __load-path _%paths127566%_))))
    (define load-module
      (lambda (_%modpath127549%_)
        (if (string? _%modpath127549%_)
            (let ((_%modpath127553%_ _%modpath127549%_))
              (__load-module _%modpath127553%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath127549%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath127514%_)
        (let ((_%modpath127517%_ _%modpath127514%_))
          (mutex-lock! __load-mx)
          (let ((_%$e127526%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath127517%_))))
            (if _%$e127526%_
                ((lambda (_%state127529%_)
                   (if (or (eq? 'builtin _%state127529%_)
                           (string? _%state127529%_))
                       (let () (mutex-unlock! __load-mx) _%state127529%_)
                       (if (eq? 'loading _%state127529%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath127517%_))
                           (if (and (pair? _%state127529%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state127529%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp127596 (cadr _%state127529%_)))
                                   (declare (not safe))
                                   (raise __tmp127596)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state127529%_)))))))
                 _%$e127526%_)
                (let ((_%$e127538%_ (__find-library-module _%modpath127517%_)))
                  (if _%$e127538%_
                      ((lambda (_%path127541%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath127517%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp127598
                                (lambda (_%exn127543%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp127599
                                         (cons 'error
                                               (cons _%exn127543%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath127517%_
                                     __tmp127599))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn127543%_))))
                               (__tmp127597
                                (lambda ()
                                  (let ((_%loaded-path127546%_
                                         (load _%path127541%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath127517%_
                                       _%loaded-path127546%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath127517%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath127517%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path127546%_))))
                           (declare (not safe))
                           (__with-catch __tmp127598 __tmp127597)))
                       _%$e127538%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath127517%_))))))))))
    (define reload-module!
      (lambda (_%modpath127500%_)
        (if (string? _%modpath127500%_)
            (let ((_%modpath127504%_ _%modpath127500%_))
              (__reload-module! _%modpath127504%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath127500%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath127472%_)
        (let ((_%modpath127475%_ _%modpath127472%_))
          (mutex-lock! __load-mx)
          (let ((_%$e127484%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath127475%_))))
            (if _%$e127484%_
                ((lambda (_%state127487%_)
                   (if (eq? _%state127487%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath127475%_)))
                       (if (eq? 'loading _%state127487%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state127487%_)
                               (let ((_%latest-path127492%_
                                      (__find-library-module
                                       _%modpath127475%_)))
                                 (if (or (equal? (path-extension
                                                  _%state127487%_)
                                                 '".scm")
                                         (not (equal? _%state127487%_
                                                      _%latest-path127492%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath127475%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath127475%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state127487%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state127487%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath127475%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath127475%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state127487%_))))))))
                 _%$e127484%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath127475%_)))))))
    (define __find-library-module
      (lambda (_%modpath127406%_)
        (letrec ((_%find-compiled-file127408%_
                  (lambda (_%npath127461%_)
                    (let ((_%basepath127463%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath127461%_ '".o"))))
                      (let _%lp127465%_ ((_%current127467%_ '#f)
                                         (_%n127468%_ '1))
                        (let ((_%next127470%_
                               (let ((__tmp127600
                                      (number->string _%n127468%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath127463%_
                                  __tmp127600))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next127470%_))
                              (_%lp127465%_
                               _%next127470%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n127468%_ '1)))
                              _%current127467%_))))))
                 (_%find-source-file127409%_
                  (lambda (_%npath127457%_)
                    (let ((_%spath127459%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath127457%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath127459%_))
                          _%spath127459%_
                          '#f)))))
          (let _%lp127411%_ ((_%rest127413%_ (load-path)))
            (let* ((_%rest127414127422%_ _%rest127413%_)
                   (_%else127416127430%_ (lambda () '#f))
                   (_%K127418127445%_
                    (lambda (_%rest127433%_ _%dir127434%_)
                      (let* ((_%npath127436%_
                              (path-expand
                               _%modpath127406%_
                               (path-expand _%dir127434%_)))
                             (_%$e127438%_
                              (_%find-compiled-file127408%_ _%npath127436%_)))
                        (if _%$e127438%_
                            (path-normalize _%$e127438%_)
                            (let ((_%$e127441%_
                                   (_%find-source-file127409%_
                                    _%npath127436%_)))
                              (if _%$e127441%_
                                  (path-normalize _%$e127441%_)
                                  (_%lp127411%_ _%rest127433%_))))))))
              (if (pair? _%rest127414127422%_)
                  (let ((_%hd127419127448%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127414127422%_)))
                        (_%tl127420127450%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127414127422%_))))
                    (let* ((_%dir127453%_ _%hd127419127448%_)
                           (_%rest127455%_ _%tl127420127450%_))
                      (_%K127418127445%_ _%rest127455%_ _%dir127453%_)))
                  (_%else127416127430%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result127404%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result127404%_))))
    (define module-load-order
      (lambda (_%modpath127388%_)
        (if (string? _%modpath127388%_)
            (let ((_%modpath127392%_ _%modpath127388%_))
              (__module-load-order _%modpath127392%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath127388%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath127368%_)
        (let ((_%modpath127371%_ _%modpath127368%_))
          (mutex-lock! __load-mx)
          (let ((_%ord127386%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath127371%_))
                          'builtin)
                     '0
                     (let ((_%$e127382%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath127371%_))))
                       (if _%$e127382%_ _%$e127382%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord127386%_)
                _%ord127386%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath127371%_))
                  '#!void))))))))
