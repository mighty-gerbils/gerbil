(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1734278444)
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
      (lambda _%paths116363%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths116363%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths116363%_)))
        (let ((__tmp116369
               (lambda (_%p116365%_)
                 (set! __load-path (cons _%p116365%_ __load-path))))
              (__tmp116368 (reverse! _%paths116363%_)))
          (declare (not safe))
          (##for-each __tmp116369 __tmp116368))))
    (define set-load-path!
      (lambda (_%paths116349%_)
        (if (list? _%paths116349%_)
            (let ((_%paths116353%_ _%paths116349%_))
              (__set-load-path! _%paths116353%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths116349%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths116337%_)
        (let ((_%paths116340%_ _%paths116337%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths116340%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths116340%_)))
          (set! __load-path _%paths116340%_))))
    (define load-module
      (lambda (_%modpath116323%_)
        (if (string? _%modpath116323%_)
            (let ((_%modpath116327%_ _%modpath116323%_))
              (__load-module _%modpath116327%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath116323%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath116288%_)
        (let ((_%modpath116291%_ _%modpath116288%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116300%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116291%_))))
            (if _%$e116300%_
                ((lambda (_%state116303%_)
                   (if (or (eq? 'builtin _%state116303%_)
                           (string? _%state116303%_))
                       (let () (mutex-unlock! __load-mx) _%state116303%_)
                       (if (eq? 'loading _%state116303%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath116291%_))
                           (if (and (pair? _%state116303%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state116303%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp116370 (cadr _%state116303%_)))
                                   (declare (not safe))
                                   (raise __tmp116370)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state116303%_)))))))
                 _%$e116300%_)
                (let ((_%$e116312%_ (__find-library-module _%modpath116291%_)))
                  (if _%$e116312%_
                      ((lambda (_%path116315%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath116291%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp116372
                                (lambda (_%exn116317%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp116373
                                         (cons 'error
                                               (cons _%exn116317%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath116291%_
                                     __tmp116373))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn116317%_))))
                               (__tmp116371
                                (lambda ()
                                  (let ((_%loaded-path116320%_
                                         (load _%path116315%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath116291%_
                                       _%loaded-path116320%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath116291%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath116291%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path116320%_))))
                           (declare (not safe))
                           (__with-catch __tmp116372 __tmp116371)))
                       _%$e116312%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath116291%_))))))))))
    (define reload-module!
      (lambda (_%modpath116274%_)
        (if (string? _%modpath116274%_)
            (let ((_%modpath116278%_ _%modpath116274%_))
              (__reload-module! _%modpath116278%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath116274%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath116246%_)
        (let ((_%modpath116249%_ _%modpath116246%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116258%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116249%_))))
            (if _%$e116258%_
                ((lambda (_%state116261%_)
                   (if (eq? _%state116261%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath116249%_)))
                       (if (eq? 'loading _%state116261%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state116261%_)
                               (let ((_%latest-path116266%_
                                      (__find-library-module
                                       _%modpath116249%_)))
                                 (if (or (equal? (path-extension
                                                  _%state116261%_)
                                                 '".scm")
                                         (not (equal? _%state116261%_
                                                      _%latest-path116266%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath116249%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath116249%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state116261%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state116261%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath116249%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath116249%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state116261%_))))))))
                 _%$e116258%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath116249%_)))))))
    (define __find-library-module
      (lambda (_%modpath116180%_)
        (letrec ((_%find-compiled-file116182%_
                  (lambda (_%npath116235%_)
                    (let ((_%basepath116237%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116235%_ '".o"))))
                      (let _%lp116239%_ ((_%current116241%_ '#f)
                                         (_%n116242%_ '1))
                        (let ((_%next116244%_
                               (let ((__tmp116374
                                      (number->string _%n116242%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath116237%_
                                  __tmp116374))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next116244%_))
                              (_%lp116239%_
                               _%next116244%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n116242%_ '1)))
                              _%current116241%_))))))
                 (_%find-source-file116183%_
                  (lambda (_%npath116231%_)
                    (let ((_%spath116233%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116231%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath116233%_))
                          _%spath116233%_
                          '#f)))))
          (let _%lp116185%_ ((_%rest116187%_ (load-path)))
            (let* ((_%rest116188116196%_ _%rest116187%_)
                   (_%else116190116204%_ (lambda () '#f))
                   (_%K116192116219%_
                    (lambda (_%rest116207%_ _%dir116208%_)
                      (let* ((_%npath116210%_
                              (path-expand
                               _%modpath116180%_
                               (path-expand _%dir116208%_)))
                             (_%$e116212%_
                              (_%find-compiled-file116182%_ _%npath116210%_)))
                        (if _%$e116212%_
                            (path-normalize _%$e116212%_)
                            (let ((_%$e116215%_
                                   (_%find-source-file116183%_
                                    _%npath116210%_)))
                              (if _%$e116215%_
                                  (path-normalize _%$e116215%_)
                                  (_%lp116185%_ _%rest116207%_))))))))
              (if (pair? _%rest116188116196%_)
                  (let ((_%hd116193116222%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest116188116196%_)))
                        (_%tl116194116224%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest116188116196%_))))
                    (let* ((_%dir116227%_ _%hd116193116222%_)
                           (_%rest116229%_ _%tl116194116224%_))
                      (_%K116192116219%_ _%rest116229%_ _%dir116227%_)))
                  (_%else116190116204%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result116178%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result116178%_))))
    (define module-load-order
      (lambda (_%modpath116162%_)
        (if (string? _%modpath116162%_)
            (let ((_%modpath116166%_ _%modpath116162%_))
              (__module-load-order _%modpath116166%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath116162%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath116142%_)
        (let ((_%modpath116145%_ _%modpath116142%_))
          (mutex-lock! __load-mx)
          (let ((_%ord116160%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath116145%_))
                          'builtin)
                     '0
                     (let ((_%$e116156%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath116145%_))))
                       (if _%$e116156%_ _%$e116156%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord116160%_)
                _%ord116160%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath116145%_))
                  '#!void))))))))
