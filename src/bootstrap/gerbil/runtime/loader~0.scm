(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1779289639)
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
      (lambda _%paths171842%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths171842%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths171842%_)))
        (let ((__tmp171952
               (lambda (_%p171844%_)
                 (set! __load-path (cons _%p171844%_ __load-path))))
              (__tmp171951 (reverse! _%paths171842%_)))
          (declare (not safe))
          (##for-each __tmp171952 __tmp171951))))
    (define __set-load-path!
      (lambda (_%paths171830%_)
        (let ((_%paths171833%_ _%paths171830%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths171833%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths171833%_)))
          (set! __load-path _%paths171833%_))))
    (define set-load-path!
      (lambda (_%paths170874%_)
        (if (list? _%paths170874%_)
            (let ((_%paths170878%_ _%paths170874%_))
              (__set-load-path! _%paths170878%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths170874%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath171600%_)
        (let ((_%modpath171603%_ _%modpath171600%_))
          (mutex-lock! __load-mx)
          (let ((_%$e171638%_
                 (let* ((_%h171612%_ __modules)
                        (_%key171615%_ _%modpath171603%_)
                        (_%h171622%_
                         (let ((_%$obj171619%_ _%h171612%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171619%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171619%_)))
                                    '#t)
                               _%$obj171619%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171619%_)))))
                        (_%h171624%_ _%h171622%_))
                   (declare (not safe))
                   (__hash-get _%h171624%_ _%key171615%_))))
            (if _%$e171638%_
                (if (or (eq? 'builtin _%$e171638%_) (string? _%$e171638%_))
                    (let () (mutex-unlock! __load-mx) _%$e171638%_)
                    (if (eq? 'loading _%$e171638%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath171648%_ _%modpath171603%_)
                                 (_%modpath171653%_ _%modpath171648%_))
                            (__load-module _%modpath171653%_)))
                        (if (and (pair? _%$e171638%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e171638%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp171953 (cadr _%$e171638%_)))
                                (declare (not safe))
                                (raise __tmp171953)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e171638%_))))))
                (let ((_%$e171668%_ (__find-library-module _%modpath171603%_)))
                  (if _%$e171668%_
                      (let ()
                        (let* ((_%h171673%_ __modules)
                               (_%key171676%_ _%modpath171603%_)
                               (_%value171679%_ 'loading)
                               (_%h171686%_
                                (let ((_%$obj171683%_ _%h171673%_))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (##structure? _%$obj171683%_))
                                           (eq? HashTable::t
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-type
                                                   _%$obj171683%_)))
                                           '#t)
                                      _%$obj171683%_
                                      (let ()
                                        (declare (not safe))
                                        (cast HashTable::interface
                                              _%$obj171683%_)))))
                               (_%h171688%_ _%h171686%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h171688%_
                           _%key171676%_
                           _%value171679%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp171955
                               (lambda (_%exn171702%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h171704%_ __modules)
                                        (_%key171707%_ _%modpath171603%_)
                                        (_%value171710%_
                                         (cons 'error
                                               (cons _%exn171702%_ '())))
                                        (_%h171717%_
                                         (let ((_%$obj171714%_ _%h171704%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj171714%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj171714%_)))
                                                    '#t)
                                               _%$obj171714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj171714%_)))))
                                        (_%h171719%_ _%h171717%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h171719%_
                                    _%key171707%_
                                    _%value171710%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn171702%_))))
                              (__tmp171954
                               (lambda ()
                                 (let ((_%loaded-path171733%_
                                        (load _%$e171668%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h171735%_ __modules)
                                          (_%key171738%_ _%modpath171603%_)
                                          (_%value171741%_
                                           _%loaded-path171733%_)
                                          (_%h171748%_
                                           (let ((_%$obj171745%_ _%h171735%_))
                                             (if (and (let ()
                                                        (declare (not safe))
                                                        (##structure?
                                                         _%$obj171745%_))
                                                      (eq? HashTable::t
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-type
                                                              _%$obj171745%_)))
                                                      '#t)
                                                 _%$obj171745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (cast HashTable::interface
                                                         _%$obj171745%_)))))
                                          (_%h171750%_ _%h171748%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h171750%_
                                      _%key171738%_
                                      _%value171741%_))
                                   (if (let* ((_%h171764%_ __load-order)
                                              (_%key171767%_ _%modpath171603%_)
                                              (_%h171774%_
                                               (let ((_%$obj171771%_
                                                      _%h171764%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj171771%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj171771%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj171771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj171771%_)))))
                                              (_%h171776%_ _%h171774%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h171776%_
                                          _%key171767%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h171787%_ __load-order)
                                                (_%key171790%_
                                                 _%modpath171603%_)
                                                (_%value171793%_
                                                 __load-order-next)
                                                (_%h171800%_
                                                 (let ((_%$obj171797%_
                                                        _%h171787%_))
                                                   (if (and (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure?
                                                               _%$obj171797%_))
                                                            (eq? HashTable::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##structure-type _%$obj171797%_)))
                    '#t)
               _%$obj171797%_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _%$obj171797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%h171802%_ _%h171800%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h171802%_
                                            _%key171790%_
                                            _%value171793%_))
                                         (set! __load-order-next
                                               (let* ((_%x171814%_
                                                       __load-order-next)
                                                      (_%x171819%_
                                                       _%x171814%_))
                                                 (declare (not safe))
                                                 (__1+ _%x171819%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path171733%_))))
                          (declare (not safe))
                          (__with-catch __tmp171955 __tmp171954)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath171603%_))))))))))
    (define load-module
      (lambda (_%modpath171008%_)
        (if (string? _%modpath171008%_)
            (let ((_%modpath171012%_ _%modpath171008%_))
              (__load-module _%modpath171012%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath171008%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath171449%_)
        (let ((_%modpath171452%_ _%modpath171449%_))
          (mutex-lock! __load-mx)
          (let ((_%$e171487%_
                 (let* ((_%h171461%_ __modules)
                        (_%key171464%_ _%modpath171452%_)
                        (_%h171471%_
                         (let ((_%$obj171468%_ _%h171461%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171468%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171468%_)))
                                    '#t)
                               _%$obj171468%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171468%_)))))
                        (_%h171473%_ _%h171471%_))
                   (declare (not safe))
                   (__hash-get _%h171473%_ _%key171464%_))))
            (if _%$e171487%_
                (if (eq? _%$e171487%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath171452%_)))
                    (if (eq? 'loading _%$e171487%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e171487%_)
                            (let ((_%latest-path171495%_
                                   (__find-library-module _%modpath171452%_)))
                              (if (or (equal? (path-extension _%$e171487%_)
                                              '".scm")
                                      (not (equal? _%$e171487%_
                                                   _%latest-path171495%_)))
                                  (begin
                                    (let* ((_%h171500%_ __modules)
                                           (_%key171503%_ _%modpath171452%_)
                                           (_%h171510%_
                                            (let ((_%$obj171507%_ _%h171500%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj171507%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj171507%_)))
                                                       '#t)
                                                  _%$obj171507%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj171507%_)))))
                                           (_%h171512%_ _%h171510%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h171512%_
                                       _%key171503%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath171527%_
                                            _%modpath171452%_)
                                           (_%modpath171532%_
                                            _%modpath171527%_))
                                      (__load-module _%modpath171532%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e171487%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e171487%_))
                                          'error))
                                (let ()
                                  (let* ((_%h171543%_ __modules)
                                         (_%key171546%_ _%modpath171452%_)
                                         (_%h171553%_
                                          (let ((_%$obj171550%_ _%h171543%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj171550%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj171550%_)))
                                                     '#t)
                                                _%$obj171550%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj171550%_)))))
                                         (_%h171555%_ _%h171553%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h171555%_ _%key171546%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath171567%_ _%modpath171452%_)
                                         (_%modpath171572%_ _%modpath171567%_))
                                    (__load-module _%modpath171572%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e171487%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath171584%_ _%modpath171452%_)
                         (_%modpath171589%_ _%modpath171584%_))
                    (__load-module _%modpath171589%_))))))))
    (define reload-module!
      (lambda (_%modpath171142%_)
        (if (string? _%modpath171142%_)
            (let ((_%modpath171146%_ _%modpath171142%_))
              (__reload-module! _%modpath171146%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath171142%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath171383%_)
        (letrec ((_%find-compiled-file171385%_
                  (lambda (_%npath171438%_)
                    (let ((_%basepath171440%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath171438%_ '".o"))))
                      (let _%lp171442%_ ((_%current171444%_ '#f)
                                         (_%n171445%_ '1))
                        (let ((_%next171447%_
                               (let ((__tmp171956
                                      (number->string _%n171445%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath171440%_
                                  __tmp171956))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next171447%_))
                              (_%lp171442%_
                               _%next171447%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n171445%_ '1)))
                              _%current171444%_))))))
                 (_%find-source-file171386%_
                  (lambda (_%npath171434%_)
                    (let ((_%spath171436%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath171434%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath171436%_))
                          _%spath171436%_
                          '#f)))))
          (let _%lp171388%_ ((_%rest171390%_ (load-path)))
            (let* ((_%rest171391171399%_ _%rest171390%_)
                   (_%else171393171407%_ (lambda () '#f))
                   (_%K171395171422%_
                    (lambda (_%rest171410%_ _%dir171411%_)
                      (let* ((_%npath171413%_
                              (path-expand
                               _%modpath171383%_
                               (path-expand _%dir171411%_)))
                             (_%$e171415%_
                              (_%find-compiled-file171385%_ _%npath171413%_)))
                        (if _%$e171415%_
                            (path-normalize _%$e171415%_)
                            (let ((_%$e171418%_
                                   (_%find-source-file171386%_
                                    _%npath171413%_)))
                              (if _%$e171418%_
                                  (path-normalize _%$e171418%_)
                                  (_%lp171388%_ _%rest171410%_))))))))
              (if (pair? _%rest171391171399%_)
                  (let ((_%hd171396171425%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest171391171399%_)))
                        (_%tl171397171427%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest171391171399%_))))
                    (let* ((_%dir171430%_ _%hd171396171425%_)
                           (_%rest171432%_ _%tl171397171427%_))
                      (_%K171395171422%_ _%rest171432%_ _%dir171430%_)))
                  (_%else171393171407%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result171381%_
                 (let* ((_%h171360%_ __modules)
                        (_%h171367%_
                         (let ((_%$obj171364%_ _%h171360%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171364%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171364%_)))
                                    '#t)
                               _%$obj171364%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171364%_)))))
                        (_%h171369%_ _%h171367%_))
                   (declare (not safe))
                   (__hash->list _%h171369%_))))
            (mutex-unlock! __load-mx)
            _%result171381%_))))
    (define __module-load-order
      (lambda (_%modpath171290%_)
        (let ((_%modpath171293%_ _%modpath171290%_))
          (mutex-lock! __load-mx)
          (let ((_%ord171356%_
                 (if (eq? (let* ((_%h171302%_ __modules)
                                 (_%key171305%_ _%modpath171293%_)
                                 (_%h171312%_
                                  (let ((_%$obj171309%_ _%h171302%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj171309%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj171309%_)))
                                             '#t)
                                        _%$obj171309%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj171309%_)))))
                                 (_%h171314%_ _%h171312%_))
                            (declare (not safe))
                            (__hash-get _%h171314%_ _%key171305%_))
                          'builtin)
                     '0
                     (let ((_%$e171352%_
                            (let* ((_%h171329%_ __load-order)
                                   (_%key171332%_ _%modpath171293%_)
                                   (_%h171339%_
                                    (let ((_%$obj171336%_ _%h171329%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj171336%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj171336%_)))
                                               '#t)
                                          _%$obj171336%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj171336%_)))))
                                   (_%h171341%_ _%h171339%_))
                              (declare (not safe))
                              (__hash-get _%h171341%_ _%key171332%_))))
                       (if _%$e171352%_ _%$e171352%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord171356%_)
                _%ord171356%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath171293%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath171276%_)
        (if (string? _%modpath171276%_)
            (let ((_%modpath171280%_ _%modpath171276%_))
              (__module-load-order _%modpath171280%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath171276%_)
              '#!void))))))
