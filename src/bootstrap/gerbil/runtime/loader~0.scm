(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1770342548)
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
      (lambda _%paths159824%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths159824%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths159824%_)))
        (let ((__tmp159934
               (lambda (_%p159826%_)
                 (set! __load-path (cons _%p159826%_ __load-path))))
              (__tmp159933 (reverse! _%paths159824%_)))
          (declare (not safe))
          (##for-each __tmp159934 __tmp159933))))
    (define __set-load-path!
      (lambda (_%paths159812%_)
        (let ((_%paths159815%_ _%paths159812%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths159815%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths159815%_)))
          (set! __load-path _%paths159815%_))))
    (define set-load-path!
      (lambda (_%paths159244%_)
        (if (list? _%paths159244%_)
            (let ((_%paths159248%_ _%paths159244%_))
              (__set-load-path! _%paths159248%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths159244%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath159777%_)
        (let ((_%modpath159780%_ _%modpath159777%_))
          (mutex-lock! __load-mx)
          (let ((_%$e159789%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath159780%_))))
            (if _%$e159789%_
                ((lambda (_%state159792%_)
                   (if (or (eq? 'builtin _%state159792%_)
                           (string? _%state159792%_))
                       (let () (mutex-unlock! __load-mx) _%state159792%_)
                       (if (eq? 'loading _%state159792%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath159780%_))
                           (if (and (pair? _%state159792%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state159792%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp159935 (cadr _%state159792%_)))
                                   (declare (not safe))
                                   (raise __tmp159935)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state159792%_)))))))
                 _%$e159789%_)
                (let ((_%$e159801%_ (__find-library-module _%modpath159780%_)))
                  (if _%$e159801%_
                      ((lambda (_%path159804%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath159780%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp159937
                                (lambda (_%exn159806%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp159938
                                         (cons 'error
                                               (cons _%exn159806%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath159780%_
                                     __tmp159938))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn159806%_))))
                               (__tmp159936
                                (lambda ()
                                  (let ((_%loaded-path159809%_
                                         (load _%path159804%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath159780%_
                                       _%loaded-path159809%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath159780%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath159780%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path159809%_))))
                           (declare (not safe))
                           (__with-catch __tmp159937 __tmp159936)))
                       _%$e159801%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath159780%_))))))))))
    (define load-module
      (lambda (_%modpath159378%_)
        (if (string? _%modpath159378%_)
            (let ((_%modpath159382%_ _%modpath159378%_))
              (__load-module _%modpath159382%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath159378%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath159749%_)
        (let ((_%modpath159752%_ _%modpath159749%_))
          (mutex-lock! __load-mx)
          (let ((_%$e159761%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath159752%_))))
            (if _%$e159761%_
                ((lambda (_%state159764%_)
                   (if (eq? _%state159764%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath159752%_)))
                       (if (eq? 'loading _%state159764%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state159764%_)
                               (let ((_%latest-path159769%_
                                      (__find-library-module
                                       _%modpath159752%_)))
                                 (if (or (equal? (path-extension
                                                  _%state159764%_)
                                                 '".scm")
                                         (not (equal? _%state159764%_
                                                      _%latest-path159769%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath159752%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath159752%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state159764%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state159764%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath159752%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath159752%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state159764%_))))))))
                 _%$e159761%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath159752%_)))))))
    (define reload-module!
      (lambda (_%modpath159512%_)
        (if (string? _%modpath159512%_)
            (let ((_%modpath159516%_ _%modpath159512%_))
              (__reload-module! _%modpath159516%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath159512%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath159683%_)
        (letrec ((_%find-compiled-file159685%_
                  (lambda (_%npath159738%_)
                    (let ((_%basepath159740%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath159738%_ '".o"))))
                      (let _%lp159742%_ ((_%current159744%_ '#f)
                                         (_%n159745%_ '1))
                        (let ((_%next159747%_
                               (let ((__tmp159939
                                      (number->string _%n159745%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath159740%_
                                  __tmp159939))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next159747%_))
                              (_%lp159742%_
                               _%next159747%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n159745%_ '1)))
                              _%current159744%_))))))
                 (_%find-source-file159686%_
                  (lambda (_%npath159734%_)
                    (let ((_%spath159736%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath159734%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath159736%_))
                          _%spath159736%_
                          '#f)))))
          (let _%lp159688%_ ((_%rest159690%_ (load-path)))
            (let* ((_%rest159691159699%_ _%rest159690%_)
                   (_%else159693159707%_ (lambda () '#f))
                   (_%K159695159722%_
                    (lambda (_%rest159710%_ _%dir159711%_)
                      (let* ((_%npath159713%_
                              (path-expand
                               _%modpath159683%_
                               (path-expand _%dir159711%_)))
                             (_%$e159715%_
                              (_%find-compiled-file159685%_ _%npath159713%_)))
                        (if _%$e159715%_
                            (path-normalize _%$e159715%_)
                            (let ((_%$e159718%_
                                   (_%find-source-file159686%_
                                    _%npath159713%_)))
                              (if _%$e159718%_
                                  (path-normalize _%$e159718%_)
                                  (_%lp159688%_ _%rest159710%_))))))))
              (if (pair? _%rest159691159699%_)
                  (let ((_%hd159696159725%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest159691159699%_)))
                        (_%tl159697159727%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest159691159699%_))))
                    (let* ((_%dir159730%_ _%hd159696159725%_)
                           (_%rest159732%_ _%tl159697159727%_))
                      (_%K159695159722%_ _%rest159732%_ _%dir159730%_)))
                  (_%else159693159707%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result159681%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result159681%_))))
    (define __module-load-order
      (lambda (_%modpath159660%_)
        (let ((_%modpath159663%_ _%modpath159660%_))
          (mutex-lock! __load-mx)
          (let ((_%ord159677%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath159663%_))
                          'builtin)
                     '0
                     (let ((_%$e159673%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath159663%_))))
                       (if _%$e159673%_ _%$e159673%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord159677%_)
                _%ord159677%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath159663%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath159646%_)
        (if (string? _%modpath159646%_)
            (let ((_%modpath159650%_ _%modpath159646%_))
              (__module-load-order _%modpath159650%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath159646%_)
              '#!void))))))
