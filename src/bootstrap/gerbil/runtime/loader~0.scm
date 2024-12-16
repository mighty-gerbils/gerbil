(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1734357961)
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
      (lambda _%paths116456%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths116456%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths116456%_)))
        (let ((__tmp116462
               (lambda (_%p116458%_)
                 (set! __load-path (cons _%p116458%_ __load-path))))
              (__tmp116461 (reverse! _%paths116456%_)))
          (declare (not safe))
          (##for-each __tmp116462 __tmp116461))))
    (define set-load-path!
      (lambda (_%paths116442%_)
        (if (list? _%paths116442%_)
            (let ((_%paths116446%_ _%paths116442%_))
              (__set-load-path! _%paths116446%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths116442%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths116430%_)
        (let ((_%paths116433%_ _%paths116430%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths116433%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths116433%_)))
          (set! __load-path _%paths116433%_))))
    (define load-module
      (lambda (_%modpath116416%_)
        (if (string? _%modpath116416%_)
            (let ((_%modpath116420%_ _%modpath116416%_))
              (__load-module _%modpath116420%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath116416%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath116381%_)
        (let ((_%modpath116384%_ _%modpath116381%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116393%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116384%_))))
            (if _%$e116393%_
                ((lambda (_%state116396%_)
                   (if (or (eq? 'builtin _%state116396%_)
                           (string? _%state116396%_))
                       (let () (mutex-unlock! __load-mx) _%state116396%_)
                       (if (eq? 'loading _%state116396%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath116384%_))
                           (if (and (pair? _%state116396%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state116396%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp116463 (cadr _%state116396%_)))
                                   (declare (not safe))
                                   (raise __tmp116463)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state116396%_)))))))
                 _%$e116393%_)
                (let ((_%$e116405%_ (__find-library-module _%modpath116384%_)))
                  (if _%$e116405%_
                      ((lambda (_%path116408%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath116384%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp116465
                                (lambda (_%exn116410%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp116466
                                         (cons 'error
                                               (cons _%exn116410%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath116384%_
                                     __tmp116466))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn116410%_))))
                               (__tmp116464
                                (lambda ()
                                  (let ((_%loaded-path116413%_
                                         (load _%path116408%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath116384%_
                                       _%loaded-path116413%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath116384%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath116384%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path116413%_))))
                           (declare (not safe))
                           (__with-catch __tmp116465 __tmp116464)))
                       _%$e116405%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath116384%_))))))))))
    (define reload-module!
      (lambda (_%modpath116367%_)
        (if (string? _%modpath116367%_)
            (let ((_%modpath116371%_ _%modpath116367%_))
              (__reload-module! _%modpath116371%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath116367%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath116339%_)
        (let ((_%modpath116342%_ _%modpath116339%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116351%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116342%_))))
            (if _%$e116351%_
                ((lambda (_%state116354%_)
                   (if (eq? _%state116354%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath116342%_)))
                       (if (eq? 'loading _%state116354%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state116354%_)
                               (let ((_%latest-path116359%_
                                      (__find-library-module
                                       _%modpath116342%_)))
                                 (if (or (equal? (path-extension
                                                  _%state116354%_)
                                                 '".scm")
                                         (not (equal? _%state116354%_
                                                      _%latest-path116359%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath116342%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath116342%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state116354%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state116354%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath116342%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath116342%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state116354%_))))))))
                 _%$e116351%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath116342%_)))))))
    (define __find-library-module
      (lambda (_%modpath116273%_)
        (letrec ((_%find-compiled-file116275%_
                  (lambda (_%npath116328%_)
                    (let ((_%basepath116330%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116328%_ '".o"))))
                      (let _%lp116332%_ ((_%current116334%_ '#f)
                                         (_%n116335%_ '1))
                        (let ((_%next116337%_
                               (let ((__tmp116467
                                      (number->string _%n116335%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath116330%_
                                  __tmp116467))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next116337%_))
                              (_%lp116332%_
                               _%next116337%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n116335%_ '1)))
                              _%current116334%_))))))
                 (_%find-source-file116276%_
                  (lambda (_%npath116324%_)
                    (let ((_%spath116326%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116324%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath116326%_))
                          _%spath116326%_
                          '#f)))))
          (let _%lp116278%_ ((_%rest116280%_ (load-path)))
            (let* ((_%rest116281116289%_ _%rest116280%_)
                   (_%else116283116297%_ (lambda () '#f))
                   (_%K116285116312%_
                    (lambda (_%rest116300%_ _%dir116301%_)
                      (let* ((_%npath116303%_
                              (path-expand
                               _%modpath116273%_
                               (path-expand _%dir116301%_)))
                             (_%$e116305%_
                              (_%find-compiled-file116275%_ _%npath116303%_)))
                        (if _%$e116305%_
                            (path-normalize _%$e116305%_)
                            (let ((_%$e116308%_
                                   (_%find-source-file116276%_
                                    _%npath116303%_)))
                              (if _%$e116308%_
                                  (path-normalize _%$e116308%_)
                                  (_%lp116278%_ _%rest116300%_))))))))
              (if (pair? _%rest116281116289%_)
                  (let ((_%hd116286116315%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest116281116289%_)))
                        (_%tl116287116317%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest116281116289%_))))
                    (let* ((_%dir116320%_ _%hd116286116315%_)
                           (_%rest116322%_ _%tl116287116317%_))
                      (_%K116285116312%_ _%rest116322%_ _%dir116320%_)))
                  (_%else116283116297%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result116271%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result116271%_))))
    (define module-load-order
      (lambda (_%modpath116255%_)
        (if (string? _%modpath116255%_)
            (let ((_%modpath116259%_ _%modpath116255%_))
              (__module-load-order _%modpath116259%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath116255%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath116235%_)
        (let ((_%modpath116238%_ _%modpath116235%_))
          (mutex-lock! __load-mx)
          (let ((_%ord116253%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath116238%_))
                          'builtin)
                     '0
                     (let ((_%$e116249%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath116238%_))))
                       (if _%$e116249%_ _%$e116249%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord116253%_)
                _%ord116253%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath116238%_))
                  '#!void))))))))
