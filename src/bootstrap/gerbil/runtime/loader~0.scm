(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1742226231)
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
      (lambda _%paths116411%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths116411%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths116411%_)))
        (let ((__tmp116417
               (lambda (_%p116413%_)
                 (set! __load-path (cons _%p116413%_ __load-path))))
              (__tmp116416 (reverse! _%paths116411%_)))
          (declare (not safe))
          (##for-each __tmp116417 __tmp116416))))
    (define set-load-path!
      (lambda (_%paths116397%_)
        (if (list? _%paths116397%_)
            (let ((_%paths116401%_ _%paths116397%_))
              (__set-load-path! _%paths116401%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths116397%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths116385%_)
        (let ((_%paths116388%_ _%paths116385%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths116388%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths116388%_)))
          (set! __load-path _%paths116388%_))))
    (define load-module
      (lambda (_%modpath116371%_)
        (if (string? _%modpath116371%_)
            (let ((_%modpath116375%_ _%modpath116371%_))
              (__load-module _%modpath116375%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath116371%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath116336%_)
        (let ((_%modpath116339%_ _%modpath116336%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116348%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116339%_))))
            (if _%$e116348%_
                ((lambda (_%state116351%_)
                   (if (or (eq? 'builtin _%state116351%_)
                           (string? _%state116351%_))
                       (let () (mutex-unlock! __load-mx) _%state116351%_)
                       (if (eq? 'loading _%state116351%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath116339%_))
                           (if (and (pair? _%state116351%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state116351%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp116418 (cadr _%state116351%_)))
                                   (declare (not safe))
                                   (raise __tmp116418)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state116351%_)))))))
                 _%$e116348%_)
                (let ((_%$e116360%_ (__find-library-module _%modpath116339%_)))
                  (if _%$e116360%_
                      ((lambda (_%path116363%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath116339%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp116420
                                (lambda (_%exn116365%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp116421
                                         (cons 'error
                                               (cons _%exn116365%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath116339%_
                                     __tmp116421))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn116365%_))))
                               (__tmp116419
                                (lambda ()
                                  (let ((_%loaded-path116368%_
                                         (load _%path116363%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath116339%_
                                       _%loaded-path116368%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath116339%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath116339%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path116368%_))))
                           (declare (not safe))
                           (__with-catch __tmp116420 __tmp116419)))
                       _%$e116360%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath116339%_))))))))))
    (define reload-module!
      (lambda (_%modpath116322%_)
        (if (string? _%modpath116322%_)
            (let ((_%modpath116326%_ _%modpath116322%_))
              (__reload-module! _%modpath116326%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath116322%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath116294%_)
        (let ((_%modpath116297%_ _%modpath116294%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116306%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116297%_))))
            (if _%$e116306%_
                ((lambda (_%state116309%_)
                   (if (eq? _%state116309%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath116297%_)))
                       (if (eq? 'loading _%state116309%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state116309%_)
                               (let ((_%latest-path116314%_
                                      (__find-library-module
                                       _%modpath116297%_)))
                                 (if (or (equal? (path-extension
                                                  _%state116309%_)
                                                 '".scm")
                                         (not (equal? _%state116309%_
                                                      _%latest-path116314%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath116297%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath116297%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state116309%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state116309%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath116297%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath116297%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state116309%_))))))))
                 _%$e116306%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath116297%_)))))))
    (define __find-library-module
      (lambda (_%modpath116228%_)
        (letrec ((_%find-compiled-file116230%_
                  (lambda (_%npath116283%_)
                    (let ((_%basepath116285%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116283%_ '".o"))))
                      (let _%lp116287%_ ((_%current116289%_ '#f)
                                         (_%n116290%_ '1))
                        (let ((_%next116292%_
                               (let ((__tmp116422
                                      (number->string _%n116290%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath116285%_
                                  __tmp116422))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next116292%_))
                              (_%lp116287%_
                               _%next116292%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n116290%_ '1)))
                              _%current116289%_))))))
                 (_%find-source-file116231%_
                  (lambda (_%npath116279%_)
                    (let ((_%spath116281%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116279%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath116281%_))
                          _%spath116281%_
                          '#f)))))
          (let _%lp116233%_ ((_%rest116235%_ (load-path)))
            (let* ((_%rest116236116244%_ _%rest116235%_)
                   (_%else116238116252%_ (lambda () '#f))
                   (_%K116240116267%_
                    (lambda (_%rest116255%_ _%dir116256%_)
                      (let* ((_%npath116258%_
                              (path-expand
                               _%modpath116228%_
                               (path-expand _%dir116256%_)))
                             (_%$e116260%_
                              (_%find-compiled-file116230%_ _%npath116258%_)))
                        (if _%$e116260%_
                            (path-normalize _%$e116260%_)
                            (let ((_%$e116263%_
                                   (_%find-source-file116231%_
                                    _%npath116258%_)))
                              (if _%$e116263%_
                                  (path-normalize _%$e116263%_)
                                  (_%lp116233%_ _%rest116255%_))))))))
              (if (pair? _%rest116236116244%_)
                  (let ((_%hd116241116270%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest116236116244%_)))
                        (_%tl116242116272%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest116236116244%_))))
                    (let* ((_%dir116275%_ _%hd116241116270%_)
                           (_%rest116277%_ _%tl116242116272%_))
                      (_%K116240116267%_ _%rest116277%_ _%dir116275%_)))
                  (_%else116238116252%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result116226%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result116226%_))))
    (define module-load-order
      (lambda (_%modpath116210%_)
        (if (string? _%modpath116210%_)
            (let ((_%modpath116214%_ _%modpath116210%_))
              (__module-load-order _%modpath116214%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath116210%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath116190%_)
        (let ((_%modpath116193%_ _%modpath116190%_))
          (mutex-lock! __load-mx)
          (let ((_%ord116208%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath116193%_))
                          'builtin)
                     '0
                     (let ((_%$e116204%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath116193%_))))
                       (if _%$e116204%_ _%$e116204%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord116208%_)
                _%ord116208%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath116193%_))
                  '#!void))))))))
