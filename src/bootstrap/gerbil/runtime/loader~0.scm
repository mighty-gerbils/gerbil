(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1756142919)
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
      (lambda _%paths122477%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths122477%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths122477%_)))
        (let ((__tmp122483
               (lambda (_%p122479%_)
                 (set! __load-path (cons _%p122479%_ __load-path))))
              (__tmp122482 (reverse! _%paths122477%_)))
          (declare (not safe))
          (##for-each __tmp122483 __tmp122482))))
    (define set-load-path!
      (lambda (_%paths122463%_)
        (if (list? _%paths122463%_)
            (let ((_%paths122467%_ _%paths122463%_))
              (__set-load-path! _%paths122467%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths122463%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths122451%_)
        (let ((_%paths122454%_ _%paths122451%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths122454%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths122454%_)))
          (set! __load-path _%paths122454%_))))
    (define load-module
      (lambda (_%modpath122437%_)
        (if (string? _%modpath122437%_)
            (let ((_%modpath122441%_ _%modpath122437%_))
              (__load-module _%modpath122441%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath122437%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath122402%_)
        (let ((_%modpath122405%_ _%modpath122402%_))
          (mutex-lock! __load-mx)
          (let ((_%$e122414%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath122405%_))))
            (if _%$e122414%_
                ((lambda (_%state122417%_)
                   (if (or (eq? 'builtin _%state122417%_)
                           (string? _%state122417%_))
                       (let () (mutex-unlock! __load-mx) _%state122417%_)
                       (if (eq? 'loading _%state122417%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath122405%_))
                           (if (and (pair? _%state122417%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state122417%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp122484 (cadr _%state122417%_)))
                                   (declare (not safe))
                                   (raise __tmp122484)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state122417%_)))))))
                 _%$e122414%_)
                (let ((_%$e122426%_ (__find-library-module _%modpath122405%_)))
                  (if _%$e122426%_
                      ((lambda (_%path122429%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath122405%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp122486
                                (lambda (_%exn122431%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp122487
                                         (cons 'error
                                               (cons _%exn122431%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath122405%_
                                     __tmp122487))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn122431%_))))
                               (__tmp122485
                                (lambda ()
                                  (let ((_%loaded-path122434%_
                                         (load _%path122429%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath122405%_
                                       _%loaded-path122434%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath122405%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath122405%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path122434%_))))
                           (declare (not safe))
                           (__with-catch __tmp122486 __tmp122485)))
                       _%$e122426%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath122405%_))))))))))
    (define reload-module!
      (lambda (_%modpath122388%_)
        (if (string? _%modpath122388%_)
            (let ((_%modpath122392%_ _%modpath122388%_))
              (__reload-module! _%modpath122392%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath122388%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath122360%_)
        (let ((_%modpath122363%_ _%modpath122360%_))
          (mutex-lock! __load-mx)
          (let ((_%$e122372%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath122363%_))))
            (if _%$e122372%_
                ((lambda (_%state122375%_)
                   (if (eq? _%state122375%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath122363%_)))
                       (if (eq? 'loading _%state122375%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state122375%_)
                               (let ((_%latest-path122380%_
                                      (__find-library-module
                                       _%modpath122363%_)))
                                 (if (or (equal? (path-extension
                                                  _%state122375%_)
                                                 '".scm")
                                         (not (equal? _%state122375%_
                                                      _%latest-path122380%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath122363%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath122363%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state122375%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state122375%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath122363%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath122363%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state122375%_))))))))
                 _%$e122372%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath122363%_)))))))
    (define __find-library-module
      (lambda (_%modpath122294%_)
        (letrec ((_%find-compiled-file122296%_
                  (lambda (_%npath122349%_)
                    (let ((_%basepath122351%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath122349%_ '".o"))))
                      (let _%lp122353%_ ((_%current122355%_ '#f)
                                         (_%n122356%_ '1))
                        (let ((_%next122358%_
                               (let ((__tmp122488
                                      (number->string _%n122356%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath122351%_
                                  __tmp122488))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next122358%_))
                              (_%lp122353%_
                               _%next122358%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n122356%_ '1)))
                              _%current122355%_))))))
                 (_%find-source-file122297%_
                  (lambda (_%npath122345%_)
                    (let ((_%spath122347%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath122345%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath122347%_))
                          _%spath122347%_
                          '#f)))))
          (let _%lp122299%_ ((_%rest122301%_ (load-path)))
            (let* ((_%rest122302122310%_ _%rest122301%_)
                   (_%else122304122318%_ (lambda () '#f))
                   (_%K122306122333%_
                    (lambda (_%rest122321%_ _%dir122322%_)
                      (let* ((_%npath122324%_
                              (path-expand
                               _%modpath122294%_
                               (path-expand _%dir122322%_)))
                             (_%$e122326%_
                              (_%find-compiled-file122296%_ _%npath122324%_)))
                        (if _%$e122326%_
                            (path-normalize _%$e122326%_)
                            (let ((_%$e122329%_
                                   (_%find-source-file122297%_
                                    _%npath122324%_)))
                              (if _%$e122329%_
                                  (path-normalize _%$e122329%_)
                                  (_%lp122299%_ _%rest122321%_))))))))
              (if (pair? _%rest122302122310%_)
                  (let ((_%hd122307122336%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest122302122310%_)))
                        (_%tl122308122338%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest122302122310%_))))
                    (let* ((_%dir122341%_ _%hd122307122336%_)
                           (_%rest122343%_ _%tl122308122338%_))
                      (_%K122306122333%_ _%rest122343%_ _%dir122341%_)))
                  (_%else122304122318%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result122292%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result122292%_))))
    (define module-load-order
      (lambda (_%modpath122276%_)
        (if (string? _%modpath122276%_)
            (let ((_%modpath122280%_ _%modpath122276%_))
              (__module-load-order _%modpath122280%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath122276%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath122256%_)
        (let ((_%modpath122259%_ _%modpath122256%_))
          (mutex-lock! __load-mx)
          (let ((_%ord122274%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath122259%_))
                          'builtin)
                     '0
                     (let ((_%$e122270%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath122259%_))))
                       (if _%$e122270%_ _%$e122270%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord122274%_)
                _%ord122274%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath122259%_))
                  '#!void))))))))
