(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1734279328)
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
      (lambda _%paths116357%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths116357%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths116357%_)))
        (let ((__tmp116363
               (lambda (_%p116359%_)
                 (set! __load-path (cons _%p116359%_ __load-path))))
              (__tmp116362 (reverse! _%paths116357%_)))
          (declare (not safe))
          (##for-each __tmp116363 __tmp116362))))
    (define set-load-path!
      (lambda (_%paths116343%_)
        (if (list? _%paths116343%_)
            (let ((_%paths116347%_ _%paths116343%_))
              (__set-load-path! _%paths116347%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths116343%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths116331%_)
        (let ((_%paths116334%_ _%paths116331%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths116334%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths116334%_)))
          (set! __load-path _%paths116334%_))))
    (define load-module
      (lambda (_%modpath116317%_)
        (if (string? _%modpath116317%_)
            (let ((_%modpath116321%_ _%modpath116317%_))
              (__load-module _%modpath116321%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath116317%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath116282%_)
        (let ((_%modpath116285%_ _%modpath116282%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116294%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116285%_))))
            (if _%$e116294%_
                ((lambda (_%state116297%_)
                   (if (or (eq? 'builtin _%state116297%_)
                           (string? _%state116297%_))
                       (let () (mutex-unlock! __load-mx) _%state116297%_)
                       (if (eq? 'loading _%state116297%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath116285%_))
                           (if (and (pair? _%state116297%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state116297%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp116364 (cadr _%state116297%_)))
                                   (declare (not safe))
                                   (raise __tmp116364)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state116297%_)))))))
                 _%$e116294%_)
                (let ((_%$e116306%_ (__find-library-module _%modpath116285%_)))
                  (if _%$e116306%_
                      ((lambda (_%path116309%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath116285%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp116366
                                (lambda (_%exn116311%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp116367
                                         (cons 'error
                                               (cons _%exn116311%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath116285%_
                                     __tmp116367))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn116311%_))))
                               (__tmp116365
                                (lambda ()
                                  (let ((_%loaded-path116314%_
                                         (load _%path116309%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath116285%_
                                       _%loaded-path116314%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath116285%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath116285%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path116314%_))))
                           (declare (not safe))
                           (__with-catch __tmp116366 __tmp116365)))
                       _%$e116306%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath116285%_))))))))))
    (define reload-module!
      (lambda (_%modpath116268%_)
        (if (string? _%modpath116268%_)
            (let ((_%modpath116272%_ _%modpath116268%_))
              (__reload-module! _%modpath116272%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath116268%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath116240%_)
        (let ((_%modpath116243%_ _%modpath116240%_))
          (mutex-lock! __load-mx)
          (let ((_%$e116252%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath116243%_))))
            (if _%$e116252%_
                ((lambda (_%state116255%_)
                   (if (eq? _%state116255%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath116243%_)))
                       (if (eq? 'loading _%state116255%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state116255%_)
                               (let ((_%latest-path116260%_
                                      (__find-library-module
                                       _%modpath116243%_)))
                                 (if (or (equal? (path-extension
                                                  _%state116255%_)
                                                 '".scm")
                                         (not (equal? _%state116255%_
                                                      _%latest-path116260%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath116243%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath116243%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state116255%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state116255%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath116243%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath116243%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state116255%_))))))))
                 _%$e116252%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath116243%_)))))))
    (define __find-library-module
      (lambda (_%modpath116174%_)
        (letrec ((_%find-compiled-file116176%_
                  (lambda (_%npath116229%_)
                    (let ((_%basepath116231%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116229%_ '".o"))))
                      (let _%lp116233%_ ((_%current116235%_ '#f)
                                         (_%n116236%_ '1))
                        (let ((_%next116238%_
                               (let ((__tmp116368
                                      (number->string _%n116236%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath116231%_
                                  __tmp116368))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next116238%_))
                              (_%lp116233%_
                               _%next116238%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n116236%_ '1)))
                              _%current116235%_))))))
                 (_%find-source-file116177%_
                  (lambda (_%npath116225%_)
                    (let ((_%spath116227%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath116225%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath116227%_))
                          _%spath116227%_
                          '#f)))))
          (let _%lp116179%_ ((_%rest116181%_ (load-path)))
            (let* ((_%rest116182116190%_ _%rest116181%_)
                   (_%else116184116198%_ (lambda () '#f))
                   (_%K116186116213%_
                    (lambda (_%rest116201%_ _%dir116202%_)
                      (let* ((_%npath116204%_
                              (path-expand
                               _%modpath116174%_
                               (path-expand _%dir116202%_)))
                             (_%$e116206%_
                              (_%find-compiled-file116176%_ _%npath116204%_)))
                        (if _%$e116206%_
                            (path-normalize _%$e116206%_)
                            (let ((_%$e116209%_
                                   (_%find-source-file116177%_
                                    _%npath116204%_)))
                              (if _%$e116209%_
                                  (path-normalize _%$e116209%_)
                                  (_%lp116179%_ _%rest116201%_))))))))
              (if (pair? _%rest116182116190%_)
                  (let ((_%hd116187116216%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest116182116190%_)))
                        (_%tl116188116218%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest116182116190%_))))
                    (let* ((_%dir116221%_ _%hd116187116216%_)
                           (_%rest116223%_ _%tl116188116218%_))
                      (_%K116186116213%_ _%rest116223%_ _%dir116221%_)))
                  (_%else116184116198%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result116172%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result116172%_))))
    (define module-load-order
      (lambda (_%modpath116156%_)
        (if (string? _%modpath116156%_)
            (let ((_%modpath116160%_ _%modpath116156%_))
              (__module-load-order _%modpath116160%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath116156%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath116136%_)
        (let ((_%modpath116139%_ _%modpath116136%_))
          (mutex-lock! __load-mx)
          (let ((_%ord116154%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath116139%_))
                          'builtin)
                     '0
                     (let ((_%$e116150%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath116139%_))))
                       (if _%$e116150%_ _%$e116150%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord116154%_)
                _%ord116154%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath116139%_))
                  '#!void))))))))
