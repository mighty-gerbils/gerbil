(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1768865823)
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
      (lambda _%paths127182%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths127182%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths127182%_)))
        (let ((__tmp127188
               (lambda (_%p127184%_)
                 (set! __load-path (cons _%p127184%_ __load-path))))
              (__tmp127187 (reverse! _%paths127182%_)))
          (declare (not safe))
          (##for-each __tmp127188 __tmp127187))))
    (define set-load-path!
      (lambda (_%paths127168%_)
        (if (list? _%paths127168%_)
            (let ((_%paths127172%_ _%paths127168%_))
              (__set-load-path! _%paths127172%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths127168%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths127156%_)
        (let ((_%paths127159%_ _%paths127156%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths127159%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths127159%_)))
          (set! __load-path _%paths127159%_))))
    (define load-module
      (lambda (_%modpath127142%_)
        (if (string? _%modpath127142%_)
            (let ((_%modpath127146%_ _%modpath127142%_))
              (__load-module _%modpath127146%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath127142%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath127107%_)
        (let ((_%modpath127110%_ _%modpath127107%_))
          (mutex-lock! __load-mx)
          (let ((_%$e127119%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath127110%_))))
            (if _%$e127119%_
                ((lambda (_%state127122%_)
                   (if (or (eq? 'builtin _%state127122%_)
                           (string? _%state127122%_))
                       (let () (mutex-unlock! __load-mx) _%state127122%_)
                       (if (eq? 'loading _%state127122%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath127110%_))
                           (if (and (pair? _%state127122%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state127122%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp127189 (cadr _%state127122%_)))
                                   (declare (not safe))
                                   (raise __tmp127189)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state127122%_)))))))
                 _%$e127119%_)
                (let ((_%$e127131%_ (__find-library-module _%modpath127110%_)))
                  (if _%$e127131%_
                      ((lambda (_%path127134%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath127110%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp127191
                                (lambda (_%exn127136%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp127192
                                         (cons 'error
                                               (cons _%exn127136%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath127110%_
                                     __tmp127192))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn127136%_))))
                               (__tmp127190
                                (lambda ()
                                  (let ((_%loaded-path127139%_
                                         (load _%path127134%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath127110%_
                                       _%loaded-path127139%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath127110%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath127110%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path127139%_))))
                           (declare (not safe))
                           (__with-catch __tmp127191 __tmp127190)))
                       _%$e127131%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath127110%_))))))))))
    (define reload-module!
      (lambda (_%modpath127093%_)
        (if (string? _%modpath127093%_)
            (let ((_%modpath127097%_ _%modpath127093%_))
              (__reload-module! _%modpath127097%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath127093%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath127065%_)
        (let ((_%modpath127068%_ _%modpath127065%_))
          (mutex-lock! __load-mx)
          (let ((_%$e127077%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath127068%_))))
            (if _%$e127077%_
                ((lambda (_%state127080%_)
                   (if (eq? _%state127080%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath127068%_)))
                       (if (eq? 'loading _%state127080%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state127080%_)
                               (let ((_%latest-path127085%_
                                      (__find-library-module
                                       _%modpath127068%_)))
                                 (if (or (equal? (path-extension
                                                  _%state127080%_)
                                                 '".scm")
                                         (not (equal? _%state127080%_
                                                      _%latest-path127085%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath127068%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath127068%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state127080%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state127080%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath127068%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath127068%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state127080%_))))))))
                 _%$e127077%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath127068%_)))))))
    (define __find-library-module
      (lambda (_%modpath126999%_)
        (letrec ((_%find-compiled-file127001%_
                  (lambda (_%npath127054%_)
                    (let ((_%basepath127056%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath127054%_ '".o"))))
                      (let _%lp127058%_ ((_%current127060%_ '#f)
                                         (_%n127061%_ '1))
                        (let ((_%next127063%_
                               (let ((__tmp127193
                                      (number->string _%n127061%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath127056%_
                                  __tmp127193))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next127063%_))
                              (_%lp127058%_
                               _%next127063%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n127061%_ '1)))
                              _%current127060%_))))))
                 (_%find-source-file127002%_
                  (lambda (_%npath127050%_)
                    (let ((_%spath127052%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath127050%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath127052%_))
                          _%spath127052%_
                          '#f)))))
          (let _%lp127004%_ ((_%rest127006%_ (load-path)))
            (let* ((_%rest127007127015%_ _%rest127006%_)
                   (_%else127009127023%_ (lambda () '#f))
                   (_%K127011127038%_
                    (lambda (_%rest127026%_ _%dir127027%_)
                      (let* ((_%npath127029%_
                              (path-expand
                               _%modpath126999%_
                               (path-expand _%dir127027%_)))
                             (_%$e127031%_
                              (_%find-compiled-file127001%_ _%npath127029%_)))
                        (if _%$e127031%_
                            (path-normalize _%$e127031%_)
                            (let ((_%$e127034%_
                                   (_%find-source-file127002%_
                                    _%npath127029%_)))
                              (if _%$e127034%_
                                  (path-normalize _%$e127034%_)
                                  (_%lp127004%_ _%rest127026%_))))))))
              (if (pair? _%rest127007127015%_)
                  (let ((_%hd127012127041%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127007127015%_)))
                        (_%tl127013127043%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127007127015%_))))
                    (let* ((_%dir127046%_ _%hd127012127041%_)
                           (_%rest127048%_ _%tl127013127043%_))
                      (_%K127011127038%_ _%rest127048%_ _%dir127046%_)))
                  (_%else127009127023%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result126997%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result126997%_))))
    (define module-load-order
      (lambda (_%modpath126981%_)
        (if (string? _%modpath126981%_)
            (let ((_%modpath126985%_ _%modpath126981%_))
              (__module-load-order _%modpath126985%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath126981%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath126961%_)
        (let ((_%modpath126964%_ _%modpath126961%_))
          (mutex-lock! __load-mx)
          (let ((_%ord126979%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath126964%_))
                          'builtin)
                     '0
                     (let ((_%$e126975%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath126964%_))))
                       (if _%$e126975%_ _%$e126975%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord126979%_)
                _%ord126979%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath126964%_))
                  '#!void))))))))
