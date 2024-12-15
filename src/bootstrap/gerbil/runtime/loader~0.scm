(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1734225193)
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
      (lambda _%paths116367%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths116367%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths116367%_)))
        (let ((__tmp116373
               (lambda (_%p116369%_)
                 (set! __load-path (cons _%p116369%_ __load-path))))
              (__tmp116372 (reverse! _%paths116367%_)))
          (declare (not safe))
          (##for-each __tmp116373 __tmp116372))))
    (define set-load-path!
      (lambda (_%paths116353%_)
        (if (list? _%paths116353%_)
            (let ((_%paths116357%_ _%paths116353%_))
              (__set-load-path! _%paths116357%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths116353%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths116341%_)
        (let ((_%paths116344%_ _%paths116341%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths116344%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths116344%_)))
          (set! __load-path _%paths116344%_))))
    (define load-module
      (lambda (_%modpath116327%_)
        (if (string? _%modpath116327%_)
            (let ((_%modpath116331%_ _%modpath116327%_))
              (__load-module _%modpath116331%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath116327%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath116292%_)
        (let ((_%modpath116295%_ _%modpath116292%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116304%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116295%_))))
            (if _%$e116304%_
                ((lambda (_%state116307%_)
                   (if (or (eq? 'builtin _%state116307%_)
                           (string? _%state116307%_))
                       (let () (mutex-unlock! __load-mx) _%state116307%_)
                       (if (eq? 'loading _%state116307%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath116295%_))
                           (if (and (pair? _%state116307%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state116307%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp116374 (cadr _%state116307%_)))
                                   (declare (not safe))
                                   (raise __tmp116374)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state116307%_)))))))
                 _%$e116304%_)
                (let ((_%$e116316%_ (__find-library-module _%modpath116295%_)))
                  (if _%$e116316%_
                      ((lambda (_%path116319%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath116295%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp116376
                                (lambda (_%exn116321%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp116377
                                         (cons 'error
                                               (cons _%exn116321%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath116295%_
                                     __tmp116377))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn116321%_))))
                               (__tmp116375
                                (lambda ()
                                  (let ((_%loaded-path116324%_
                                         (load _%path116319%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath116295%_
                                       _%loaded-path116324%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath116295%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath116295%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path116324%_))))
                           (declare (not safe))
                           (__with-catch __tmp116376 __tmp116375)))
                       _%$e116316%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath116295%_))))))))))
    (define reload-module!
      (lambda (_%modpath116278%_)
        (if (string? _%modpath116278%_)
            (let ((_%modpath116282%_ _%modpath116278%_))
              (__reload-module! _%modpath116282%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath116278%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath116250%_)
        (let ((_%modpath116253%_ _%modpath116250%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116262%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116253%_))))
            (if _%$e116262%_
                ((lambda (_%state116265%_)
                   (if (eq? _%state116265%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath116253%_)))
                       (if (eq? 'loading _%state116265%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state116265%_)
                               (let ((_%latest-path116270%_
                                      (__find-library-module
                                       _%modpath116253%_)))
                                 (if (or (equal? (path-extension
                                                  _%state116265%_)
                                                 '".scm")
                                         (not (equal? _%state116265%_
                                                      _%latest-path116270%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath116253%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath116253%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state116265%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state116265%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath116253%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath116253%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state116265%_))))))))
                 _%$e116262%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath116253%_)))))))
    (define __find-library-module
      (lambda (_%modpath116184%_)
        (letrec ((_%find-compiled-file116186%_
                  (lambda (_%npath116239%_)
                    (let ((_%basepath116241%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116239%_ '".o"))))
                      (let _%lp116243%_ ((_%current116245%_ '#f)
                                         (_%n116246%_ '1))
                        (let ((_%next116248%_
                               (let ((__tmp116378
                                      (number->string _%n116246%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath116241%_
                                  __tmp116378))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next116248%_))
                              (_%lp116243%_
                               _%next116248%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n116246%_ '1)))
                              _%current116245%_))))))
                 (_%find-source-file116187%_
                  (lambda (_%npath116235%_)
                    (let ((_%spath116237%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116235%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath116237%_))
                          _%spath116237%_
                          '#f)))))
          (let _%lp116189%_ ((_%rest116191%_ (load-path)))
            (let* ((_%rest116192116200%_ _%rest116191%_)
                   (_%else116194116208%_ (lambda () '#f))
                   (_%K116196116223%_
                    (lambda (_%rest116211%_ _%dir116212%_)
                      (let* ((_%npath116214%_
                              (path-expand
                               _%modpath116184%_
                               (path-expand _%dir116212%_)))
                             (_%$e116216%_
                              (_%find-compiled-file116186%_ _%npath116214%_)))
                        (if _%$e116216%_
                            (path-normalize _%$e116216%_)
                            (let ((_%$e116219%_
                                   (_%find-source-file116187%_
                                    _%npath116214%_)))
                              (if _%$e116219%_
                                  (path-normalize _%$e116219%_)
                                  (_%lp116189%_ _%rest116211%_))))))))
              (if (pair? _%rest116192116200%_)
                  (let ((_%hd116197116226%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest116192116200%_)))
                        (_%tl116198116228%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest116192116200%_))))
                    (let* ((_%dir116231%_ _%hd116197116226%_)
                           (_%rest116233%_ _%tl116198116228%_))
                      (_%K116196116223%_ _%rest116233%_ _%dir116231%_)))
                  (_%else116194116208%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result116182%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result116182%_))))
    (define module-load-order
      (lambda (_%modpath116166%_)
        (if (string? _%modpath116166%_)
            (let ((_%modpath116170%_ _%modpath116166%_))
              (__module-load-order _%modpath116170%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath116166%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath116146%_)
        (let ((_%modpath116149%_ _%modpath116146%_))
          (mutex-lock! __load-mx)
          (let ((_%ord116164%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath116149%_))
                          'builtin)
                     '0
                     (let ((_%$e116160%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath116149%_))))
                       (if _%$e116160%_ _%$e116160%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord116164%_)
                _%ord116164%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath116149%_))
                  '#!void))))))))
