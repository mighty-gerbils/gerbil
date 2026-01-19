(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1768863412)
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
      (lambda _%paths127140%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths127140%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths127140%_)))
        (let ((__tmp127146
               (lambda (_%p127142%_)
                 (set! __load-path (cons _%p127142%_ __load-path))))
              (__tmp127145 (reverse! _%paths127140%_)))
          (declare (not safe))
          (##for-each __tmp127146 __tmp127145))))
    (define set-load-path!
      (lambda (_%paths127126%_)
        (if (list? _%paths127126%_)
            (let ((_%paths127130%_ _%paths127126%_))
              (__set-load-path! _%paths127130%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths127126%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths127114%_)
        (let ((_%paths127117%_ _%paths127114%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths127117%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths127117%_)))
          (set! __load-path _%paths127117%_))))
    (define load-module
      (lambda (_%modpath127100%_)
        (if (string? _%modpath127100%_)
            (let ((_%modpath127104%_ _%modpath127100%_))
              (__load-module _%modpath127104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath127100%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath127065%_)
        (let ((_%modpath127068%_ _%modpath127065%_))
          (mutex-lock! __load-mx)
          (let ((_%$e127077%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath127068%_))))
            (if _%$e127077%_
                ((lambda (_%state127080%_)
                   (if (or (eq? 'builtin _%state127080%_)
                           (string? _%state127080%_))
                       (let () (mutex-unlock! __load-mx) _%state127080%_)
                       (if (eq? 'loading _%state127080%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath127068%_))
                           (if (and (pair? _%state127080%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state127080%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp127147 (cadr _%state127080%_)))
                                   (declare (not safe))
                                   (raise __tmp127147)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state127080%_)))))))
                 _%$e127077%_)
                (let ((_%$e127089%_ (__find-library-module _%modpath127068%_)))
                  (if _%$e127089%_
                      ((lambda (_%path127092%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath127068%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp127149
                                (lambda (_%exn127094%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp127150
                                         (cons 'error
                                               (cons _%exn127094%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath127068%_
                                     __tmp127150))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn127094%_))))
                               (__tmp127148
                                (lambda ()
                                  (let ((_%loaded-path127097%_
                                         (load _%path127092%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath127068%_
                                       _%loaded-path127097%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath127068%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath127068%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path127097%_))))
                           (declare (not safe))
                           (__with-catch __tmp127149 __tmp127148)))
                       _%$e127089%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath127068%_))))))))))
    (define reload-module!
      (lambda (_%modpath127051%_)
        (if (string? _%modpath127051%_)
            (let ((_%modpath127055%_ _%modpath127051%_))
              (__reload-module! _%modpath127055%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath127051%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath127023%_)
        (let ((_%modpath127026%_ _%modpath127023%_))
          (mutex-lock! __load-mx)
          (let ((_%$e127035%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath127026%_))))
            (if _%$e127035%_
                ((lambda (_%state127038%_)
                   (if (eq? _%state127038%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath127026%_)))
                       (if (eq? 'loading _%state127038%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state127038%_)
                               (let ((_%latest-path127043%_
                                      (__find-library-module
                                       _%modpath127026%_)))
                                 (if (or (equal? (path-extension
                                                  _%state127038%_)
                                                 '".scm")
                                         (not (equal? _%state127038%_
                                                      _%latest-path127043%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath127026%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath127026%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state127038%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state127038%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath127026%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath127026%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state127038%_))))))))
                 _%$e127035%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath127026%_)))))))
    (define __find-library-module
      (lambda (_%modpath126957%_)
        (letrec ((_%find-compiled-file126959%_
                  (lambda (_%npath127012%_)
                    (let ((_%basepath127014%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath127012%_ '".o"))))
                      (let _%lp127016%_ ((_%current127018%_ '#f)
                                         (_%n127019%_ '1))
                        (let ((_%next127021%_
                               (let ((__tmp127151
                                      (number->string _%n127019%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath127014%_
                                  __tmp127151))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next127021%_))
                              (_%lp127016%_
                               _%next127021%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n127019%_ '1)))
                              _%current127018%_))))))
                 (_%find-source-file126960%_
                  (lambda (_%npath127008%_)
                    (let ((_%spath127010%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath127008%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath127010%_))
                          _%spath127010%_
                          '#f)))))
          (let _%lp126962%_ ((_%rest126964%_ (load-path)))
            (let* ((_%rest126965126973%_ _%rest126964%_)
                   (_%else126967126981%_ (lambda () '#f))
                   (_%K126969126996%_
                    (lambda (_%rest126984%_ _%dir126985%_)
                      (let* ((_%npath126987%_
                              (path-expand
                               _%modpath126957%_
                               (path-expand _%dir126985%_)))
                             (_%$e126989%_
                              (_%find-compiled-file126959%_ _%npath126987%_)))
                        (if _%$e126989%_
                            (path-normalize _%$e126989%_)
                            (let ((_%$e126992%_
                                   (_%find-source-file126960%_
                                    _%npath126987%_)))
                              (if _%$e126992%_
                                  (path-normalize _%$e126992%_)
                                  (_%lp126962%_ _%rest126984%_))))))))
              (if (pair? _%rest126965126973%_)
                  (let ((_%hd126970126999%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest126965126973%_)))
                        (_%tl126971127001%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest126965126973%_))))
                    (let* ((_%dir127004%_ _%hd126970126999%_)
                           (_%rest127006%_ _%tl126971127001%_))
                      (_%K126969126996%_ _%rest127006%_ _%dir127004%_)))
                  (_%else126967126981%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result126955%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result126955%_))))
    (define module-load-order
      (lambda (_%modpath126939%_)
        (if (string? _%modpath126939%_)
            (let ((_%modpath126943%_ _%modpath126939%_))
              (__module-load-order _%modpath126943%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath126939%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath126919%_)
        (let ((_%modpath126922%_ _%modpath126919%_))
          (mutex-lock! __load-mx)
          (let ((_%ord126937%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath126922%_))
                          'builtin)
                     '0
                     (let ((_%$e126933%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath126922%_))))
                       (if _%$e126933%_ _%$e126933%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord126937%_)
                _%ord126937%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath126922%_))
                  '#!void))))))))
