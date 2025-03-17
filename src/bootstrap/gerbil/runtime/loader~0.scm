(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1742223872)
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
      (lambda _%paths116392%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths116392%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths116392%_)))
        (let ((__tmp116398
               (lambda (_%p116394%_)
                 (set! __load-path (cons _%p116394%_ __load-path))))
              (__tmp116397 (reverse! _%paths116392%_)))
          (declare (not safe))
          (##for-each __tmp116398 __tmp116397))))
    (define set-load-path!
      (lambda (_%paths116378%_)
        (if (list? _%paths116378%_)
            (let ((_%paths116382%_ _%paths116378%_))
              (__set-load-path! _%paths116382%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths116378%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths116366%_)
        (let ((_%paths116369%_ _%paths116366%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths116369%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths116369%_)))
          (set! __load-path _%paths116369%_))))
    (define load-module
      (lambda (_%modpath116352%_)
        (if (string? _%modpath116352%_)
            (let ((_%modpath116356%_ _%modpath116352%_))
              (__load-module _%modpath116356%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath116352%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath116317%_)
        (let ((_%modpath116320%_ _%modpath116317%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116329%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116320%_))))
            (if _%$e116329%_
                ((lambda (_%state116332%_)
                   (if (or (eq? 'builtin _%state116332%_)
                           (string? _%state116332%_))
                       (let () (mutex-unlock! __load-mx) _%state116332%_)
                       (if (eq? 'loading _%state116332%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath116320%_))
                           (if (and (pair? _%state116332%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state116332%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp116399 (cadr _%state116332%_)))
                                   (declare (not safe))
                                   (raise __tmp116399)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state116332%_)))))))
                 _%$e116329%_)
                (let ((_%$e116341%_ (__find-library-module _%modpath116320%_)))
                  (if _%$e116341%_
                      ((lambda (_%path116344%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath116320%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp116401
                                (lambda (_%exn116346%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp116402
                                         (cons 'error
                                               (cons _%exn116346%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath116320%_
                                     __tmp116402))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn116346%_))))
                               (__tmp116400
                                (lambda ()
                                  (let ((_%loaded-path116349%_
                                         (load _%path116344%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath116320%_
                                       _%loaded-path116349%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath116320%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath116320%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path116349%_))))
                           (declare (not safe))
                           (__with-catch __tmp116401 __tmp116400)))
                       _%$e116341%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath116320%_))))))))))
    (define reload-module!
      (lambda (_%modpath116303%_)
        (if (string? _%modpath116303%_)
            (let ((_%modpath116307%_ _%modpath116303%_))
              (__reload-module! _%modpath116307%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath116303%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath116275%_)
        (let ((_%modpath116278%_ _%modpath116275%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116287%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116278%_))))
            (if _%$e116287%_
                ((lambda (_%state116290%_)
                   (if (eq? _%state116290%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath116278%_)))
                       (if (eq? 'loading _%state116290%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state116290%_)
                               (let ((_%latest-path116295%_
                                      (__find-library-module
                                       _%modpath116278%_)))
                                 (if (or (equal? (path-extension
                                                  _%state116290%_)
                                                 '".scm")
                                         (not (equal? _%state116290%_
                                                      _%latest-path116295%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath116278%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath116278%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state116290%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state116290%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath116278%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath116278%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state116290%_))))))))
                 _%$e116287%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath116278%_)))))))
    (define __find-library-module
      (lambda (_%modpath116209%_)
        (letrec ((_%find-compiled-file116211%_
                  (lambda (_%npath116264%_)
                    (let ((_%basepath116266%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116264%_ '".o"))))
                      (let _%lp116268%_ ((_%current116270%_ '#f)
                                         (_%n116271%_ '1))
                        (let ((_%next116273%_
                               (let ((__tmp116403
                                      (number->string _%n116271%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath116266%_
                                  __tmp116403))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next116273%_))
                              (_%lp116268%_
                               _%next116273%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n116271%_ '1)))
                              _%current116270%_))))))
                 (_%find-source-file116212%_
                  (lambda (_%npath116260%_)
                    (let ((_%spath116262%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116260%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath116262%_))
                          _%spath116262%_
                          '#f)))))
          (let _%lp116214%_ ((_%rest116216%_ (load-path)))
            (let* ((_%rest116217116225%_ _%rest116216%_)
                   (_%else116219116233%_ (lambda () '#f))
                   (_%K116221116248%_
                    (lambda (_%rest116236%_ _%dir116237%_)
                      (let* ((_%npath116239%_
                              (path-expand
                               _%modpath116209%_
                               (path-expand _%dir116237%_)))
                             (_%$e116241%_
                              (_%find-compiled-file116211%_ _%npath116239%_)))
                        (if _%$e116241%_
                            (path-normalize _%$e116241%_)
                            (let ((_%$e116244%_
                                   (_%find-source-file116212%_
                                    _%npath116239%_)))
                              (if _%$e116244%_
                                  (path-normalize _%$e116244%_)
                                  (_%lp116214%_ _%rest116236%_))))))))
              (if (pair? _%rest116217116225%_)
                  (let ((_%hd116222116251%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest116217116225%_)))
                        (_%tl116223116253%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest116217116225%_))))
                    (let* ((_%dir116256%_ _%hd116222116251%_)
                           (_%rest116258%_ _%tl116223116253%_))
                      (_%K116221116248%_ _%rest116258%_ _%dir116256%_)))
                  (_%else116219116233%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result116207%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result116207%_))))
    (define module-load-order
      (lambda (_%modpath116191%_)
        (if (string? _%modpath116191%_)
            (let ((_%modpath116195%_ _%modpath116191%_))
              (__module-load-order _%modpath116195%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath116191%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath116171%_)
        (let ((_%modpath116174%_ _%modpath116171%_))
          (mutex-lock! __load-mx)
          (let ((_%ord116189%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath116174%_))
                          'builtin)
                     '0
                     (let ((_%$e116185%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath116174%_))))
                       (if _%$e116185%_ _%$e116185%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord116189%_)
                _%ord116189%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath116174%_))
                  '#!void))))))))
