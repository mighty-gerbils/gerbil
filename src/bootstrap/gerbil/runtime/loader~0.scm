(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1768864948)
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
      (lambda _%paths127167%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths127167%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths127167%_)))
        (let ((__tmp127173
               (lambda (_%p127169%_)
                 (set! __load-path (cons _%p127169%_ __load-path))))
              (__tmp127172 (reverse! _%paths127167%_)))
          (declare (not safe))
          (##for-each __tmp127173 __tmp127172))))
    (define set-load-path!
      (lambda (_%paths127153%_)
        (if (list? _%paths127153%_)
            (let ((_%paths127157%_ _%paths127153%_))
              (__set-load-path! _%paths127157%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths127153%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths127141%_)
        (let ((_%paths127144%_ _%paths127141%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths127144%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths127144%_)))
          (set! __load-path _%paths127144%_))))
    (define load-module
      (lambda (_%modpath127127%_)
        (if (string? _%modpath127127%_)
            (let ((_%modpath127131%_ _%modpath127127%_))
              (__load-module _%modpath127131%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath127127%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath127092%_)
        (let ((_%modpath127095%_ _%modpath127092%_))
          (mutex-lock! __load-mx)
          (let ((_%$e127104%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath127095%_))))
            (if _%$e127104%_
                ((lambda (_%state127107%_)
                   (if (or (eq? 'builtin _%state127107%_)
                           (string? _%state127107%_))
                       (let () (mutex-unlock! __load-mx) _%state127107%_)
                       (if (eq? 'loading _%state127107%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath127095%_))
                           (if (and (pair? _%state127107%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state127107%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp127174 (cadr _%state127107%_)))
                                   (declare (not safe))
                                   (raise __tmp127174)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state127107%_)))))))
                 _%$e127104%_)
                (let ((_%$e127116%_ (__find-library-module _%modpath127095%_)))
                  (if _%$e127116%_
                      ((lambda (_%path127119%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath127095%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp127176
                                (lambda (_%exn127121%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp127177
                                         (cons 'error
                                               (cons _%exn127121%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath127095%_
                                     __tmp127177))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn127121%_))))
                               (__tmp127175
                                (lambda ()
                                  (let ((_%loaded-path127124%_
                                         (load _%path127119%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath127095%_
                                       _%loaded-path127124%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath127095%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath127095%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path127124%_))))
                           (declare (not safe))
                           (__with-catch __tmp127176 __tmp127175)))
                       _%$e127116%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath127095%_))))))))))
    (define reload-module!
      (lambda (_%modpath127078%_)
        (if (string? _%modpath127078%_)
            (let ((_%modpath127082%_ _%modpath127078%_))
              (__reload-module! _%modpath127082%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath127078%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath127050%_)
        (let ((_%modpath127053%_ _%modpath127050%_))
          (mutex-lock! __load-mx)
          (let ((_%$e127062%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath127053%_))))
            (if _%$e127062%_
                ((lambda (_%state127065%_)
                   (if (eq? _%state127065%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath127053%_)))
                       (if (eq? 'loading _%state127065%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state127065%_)
                               (let ((_%latest-path127070%_
                                      (__find-library-module
                                       _%modpath127053%_)))
                                 (if (or (equal? (path-extension
                                                  _%state127065%_)
                                                 '".scm")
                                         (not (equal? _%state127065%_
                                                      _%latest-path127070%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath127053%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath127053%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state127065%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state127065%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath127053%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath127053%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state127065%_))))))))
                 _%$e127062%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath127053%_)))))))
    (define __find-library-module
      (lambda (_%modpath126984%_)
        (letrec ((_%find-compiled-file126986%_
                  (lambda (_%npath127039%_)
                    (let ((_%basepath127041%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath127039%_ '".o"))))
                      (let _%lp127043%_ ((_%current127045%_ '#f)
                                         (_%n127046%_ '1))
                        (let ((_%next127048%_
                               (let ((__tmp127178
                                      (number->string _%n127046%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath127041%_
                                  __tmp127178))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next127048%_))
                              (_%lp127043%_
                               _%next127048%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n127046%_ '1)))
                              _%current127045%_))))))
                 (_%find-source-file126987%_
                  (lambda (_%npath127035%_)
                    (let ((_%spath127037%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath127035%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath127037%_))
                          _%spath127037%_
                          '#f)))))
          (let _%lp126989%_ ((_%rest126991%_ (load-path)))
            (let* ((_%rest126992127000%_ _%rest126991%_)
                   (_%else126994127008%_ (lambda () '#f))
                   (_%K126996127023%_
                    (lambda (_%rest127011%_ _%dir127012%_)
                      (let* ((_%npath127014%_
                              (path-expand
                               _%modpath126984%_
                               (path-expand _%dir127012%_)))
                             (_%$e127016%_
                              (_%find-compiled-file126986%_ _%npath127014%_)))
                        (if _%$e127016%_
                            (path-normalize _%$e127016%_)
                            (let ((_%$e127019%_
                                   (_%find-source-file126987%_
                                    _%npath127014%_)))
                              (if _%$e127019%_
                                  (path-normalize _%$e127019%_)
                                  (_%lp126989%_ _%rest127011%_))))))))
              (if (pair? _%rest126992127000%_)
                  (let ((_%hd126997127026%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest126992127000%_)))
                        (_%tl126998127028%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest126992127000%_))))
                    (let* ((_%dir127031%_ _%hd126997127026%_)
                           (_%rest127033%_ _%tl126998127028%_))
                      (_%K126996127023%_ _%rest127033%_ _%dir127031%_)))
                  (_%else126994127008%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result126982%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result126982%_))))
    (define module-load-order
      (lambda (_%modpath126966%_)
        (if (string? _%modpath126966%_)
            (let ((_%modpath126970%_ _%modpath126966%_))
              (__module-load-order _%modpath126970%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath126966%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath126946%_)
        (let ((_%modpath126949%_ _%modpath126946%_))
          (mutex-lock! __load-mx)
          (let ((_%ord126964%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath126949%_))
                          'builtin)
                     '0
                     (let ((_%$e126960%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath126949%_))))
                       (if _%$e126960%_ _%$e126960%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord126964%_)
                _%ord126964%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath126949%_))
                  '#!void))))))))
