(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1769384628)
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
      (lambda _%paths127645%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths127645%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths127645%_)))
        (let ((__tmp127651
               (lambda (_%p127647%_)
                 (set! __load-path (cons _%p127647%_ __load-path))))
              (__tmp127650 (reverse! _%paths127645%_)))
          (declare (not safe))
          (##for-each __tmp127651 __tmp127650))))
    (define set-load-path!
      (lambda (_%paths127631%_)
        (if (list? _%paths127631%_)
            (let ((_%paths127635%_ _%paths127631%_))
              (__set-load-path! _%paths127635%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths127631%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths127619%_)
        (let ((_%paths127622%_ _%paths127619%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths127622%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths127622%_)))
          (set! __load-path _%paths127622%_))))
    (define load-module
      (lambda (_%modpath127605%_)
        (if (string? _%modpath127605%_)
            (let ((_%modpath127609%_ _%modpath127605%_))
              (__load-module _%modpath127609%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath127605%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath127570%_)
        (let ((_%modpath127573%_ _%modpath127570%_))
          (mutex-lock! __load-mx)
          (let ((_%$e127582%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath127573%_))))
            (if _%$e127582%_
                ((lambda (_%state127585%_)
                   (if (or (eq? 'builtin _%state127585%_)
                           (string? _%state127585%_))
                       (let () (mutex-unlock! __load-mx) _%state127585%_)
                       (if (eq? 'loading _%state127585%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath127573%_))
                           (if (and (pair? _%state127585%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state127585%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp127652 (cadr _%state127585%_)))
                                   (declare (not safe))
                                   (raise __tmp127652)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state127585%_)))))))
                 _%$e127582%_)
                (let ((_%$e127594%_ (__find-library-module _%modpath127573%_)))
                  (if _%$e127594%_
                      ((lambda (_%path127597%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath127573%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp127654
                                (lambda (_%exn127599%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp127655
                                         (cons 'error
                                               (cons _%exn127599%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath127573%_
                                     __tmp127655))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn127599%_))))
                               (__tmp127653
                                (lambda ()
                                  (let ((_%loaded-path127602%_
                                         (load _%path127597%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath127573%_
                                       _%loaded-path127602%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath127573%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath127573%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path127602%_))))
                           (declare (not safe))
                           (__with-catch __tmp127654 __tmp127653)))
                       _%$e127594%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath127573%_))))))))))
    (define reload-module!
      (lambda (_%modpath127556%_)
        (if (string? _%modpath127556%_)
            (let ((_%modpath127560%_ _%modpath127556%_))
              (__reload-module! _%modpath127560%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath127556%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath127528%_)
        (let ((_%modpath127531%_ _%modpath127528%_))
          (mutex-lock! __load-mx)
          (let ((_%$e127540%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath127531%_))))
            (if _%$e127540%_
                ((lambda (_%state127543%_)
                   (if (eq? _%state127543%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath127531%_)))
                       (if (eq? 'loading _%state127543%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state127543%_)
                               (let ((_%latest-path127548%_
                                      (__find-library-module
                                       _%modpath127531%_)))
                                 (if (or (equal? (path-extension
                                                  _%state127543%_)
                                                 '".scm")
                                         (not (equal? _%state127543%_
                                                      _%latest-path127548%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath127531%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath127531%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state127543%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state127543%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath127531%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath127531%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state127543%_))))))))
                 _%$e127540%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath127531%_)))))))
    (define __find-library-module
      (lambda (_%modpath127462%_)
        (letrec ((_%find-compiled-file127464%_
                  (lambda (_%npath127517%_)
                    (let ((_%basepath127519%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath127517%_ '".o"))))
                      (let _%lp127521%_ ((_%current127523%_ '#f)
                                         (_%n127524%_ '1))
                        (let ((_%next127526%_
                               (let ((__tmp127656
                                      (number->string _%n127524%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath127519%_
                                  __tmp127656))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next127526%_))
                              (_%lp127521%_
                               _%next127526%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n127524%_ '1)))
                              _%current127523%_))))))
                 (_%find-source-file127465%_
                  (lambda (_%npath127513%_)
                    (let ((_%spath127515%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath127513%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath127515%_))
                          _%spath127515%_
                          '#f)))))
          (let _%lp127467%_ ((_%rest127469%_ (load-path)))
            (let* ((_%rest127470127478%_ _%rest127469%_)
                   (_%else127472127486%_ (lambda () '#f))
                   (_%K127474127501%_
                    (lambda (_%rest127489%_ _%dir127490%_)
                      (let* ((_%npath127492%_
                              (path-expand
                               _%modpath127462%_
                               (path-expand _%dir127490%_)))
                             (_%$e127494%_
                              (_%find-compiled-file127464%_ _%npath127492%_)))
                        (if _%$e127494%_
                            (path-normalize _%$e127494%_)
                            (let ((_%$e127497%_
                                   (_%find-source-file127465%_
                                    _%npath127492%_)))
                              (if _%$e127497%_
                                  (path-normalize _%$e127497%_)
                                  (_%lp127467%_ _%rest127489%_))))))))
              (if (pair? _%rest127470127478%_)
                  (let ((_%hd127475127504%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127470127478%_)))
                        (_%tl127476127506%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127470127478%_))))
                    (let* ((_%dir127509%_ _%hd127475127504%_)
                           (_%rest127511%_ _%tl127476127506%_))
                      (_%K127474127501%_ _%rest127511%_ _%dir127509%_)))
                  (_%else127472127486%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result127460%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result127460%_))))
    (define module-load-order
      (lambda (_%modpath127444%_)
        (if (string? _%modpath127444%_)
            (let ((_%modpath127448%_ _%modpath127444%_))
              (__module-load-order _%modpath127448%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath127444%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath127424%_)
        (let ((_%modpath127427%_ _%modpath127424%_))
          (mutex-lock! __load-mx)
          (let ((_%ord127442%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath127427%_))
                          'builtin)
                     '0
                     (let ((_%$e127438%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath127427%_))))
                       (if _%$e127438%_ _%$e127438%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord127442%_)
                _%ord127442%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath127427%_))
                  '#!void))))))))
