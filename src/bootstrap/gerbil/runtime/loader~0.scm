(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1713453199)
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
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths114037%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths114037%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths114037%_)))
        (let ((__tmp114043
               (lambda (_%p114039%_)
                 (set! __load-path (cons _%p114039%_ __load-path))))
              (__tmp114042 (reverse! _%paths114037%_)))
          (declare (not safe))
          (##for-each __tmp114043 __tmp114042))))
    (define set-load-path!
      (lambda (_%paths114023%_)
        (if (list? _%paths114023%_)
            (let ((_%paths114027%_ _%paths114023%_))
              (__set-load-path! _%paths114027%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths114023%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths114011%_)
        (let ((_%paths114014%_ _%paths114011%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths114014%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths114014%_)))
          (set! __load-path _%paths114014%_))))
    (define load-module
      (lambda (_%modpath113997%_)
        (if (string? _%modpath113997%_)
            (let ((_%modpath114001%_ _%modpath113997%_))
              (__load-module _%modpath114001%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath113997%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath113962%_)
        (let ((_%modpath113965%_ _%modpath113962%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113974%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath113965%_))))
            (if _%$e113974%_
                ((lambda (_%state113977%_)
                   (if (or (eq? 'builtin _%state113977%_)
                           (string? _%state113977%_))
                       (let () (mutex-unlock! __load-mx) _%state113977%_)
                       (if (eq? 'loading _%state113977%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath113965%_))
                           (if (and (pair? _%state113977%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state113977%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp114044 (cadr _%state113977%_)))
                                   (declare (not safe))
                                   (raise __tmp114044)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state113977%_)))))))
                 _%$e113974%_)
                (let ((_%$e113986%_ (__find-library-module _%modpath113965%_)))
                  (if _%$e113986%_
                      ((lambda (_%path113989%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath113965%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp114046
                                (lambda (_%exn113991%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp114047
                                         (cons 'error
                                               (cons _%exn113991%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath113965%_
                                     __tmp114047))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn113991%_))))
                               (__tmp114045
                                (lambda ()
                                  (let ((_%loaded-path113994%_
                                         (load _%path113989%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath113965%_
                                       _%loaded-path113994%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path113994%_))))
                           (declare (not safe))
                           (__with-catch __tmp114046 __tmp114045)))
                       _%$e113986%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath113965%_))))))))))
    (define reload-module!
      (lambda (_%modpath113948%_)
        (if (string? _%modpath113948%_)
            (let ((_%modpath113952%_ _%modpath113948%_))
              (__reload-module! _%modpath113952%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath113948%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath113919%_)
        (let ((_%modpath113922%_ _%modpath113919%_))
          (mutex-lock! __load-mx)
          (let ((_%$e113932%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath113922%_))))
            (if _%$e113932%_
                ((lambda (_%state113935%_)
                   (if (eq? _%state113935%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath113922%_)))
                       (if (eq? 'loading _%state113935%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state113935%_)
                               (let ((_%latest-path113940%_
                                      (__find-library-module
                                       _%modpath113922%_)))
                                 (if (or (equal? (path-extension
                                                  _%state113935%_)
                                                 '".scm")
                                         (not (equal? _%state113935%_
                                                      _%latest-path113940%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath113922%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath113922%_))
                                     '#!void))
                               (if (and (pair? _%state113935%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state113935%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath113922%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath113922%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state113935%_))))))))
                 _%$e113932%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath113922%_)))))))
    (define __find-library-module
      (lambda (_%modpath113853%_)
        (letrec ((_%find-compiled-file113855%_
                  (lambda (_%npath113908%_)
                    (let ((_%basepath113910%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113908%_ '".o"))))
                      (let _%lp113912%_ ((_%current113914%_ '#f)
                                         (_%n113915%_ '1))
                        (let ((_%next113917%_
                               (let ((__tmp114048
                                      (number->string _%n113915%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath113910%_
                                  __tmp114048))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next113917%_))
                              (_%lp113912%_
                               _%next113917%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n113915%_ '1)))
                              _%current113914%_))))))
                 (_%find-source-file113856%_
                  (lambda (_%npath113904%_)
                    (let ((_%spath113906%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath113904%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath113906%_))
                          _%spath113906%_
                          '#f)))))
          (let _%lp113858%_ ((_%rest113860%_ (load-path)))
            (let* ((_%rest113861113869%_ _%rest113860%_)
                   (_%else113863113877%_ (lambda () '#f))
                   (_%K113865113892%_
                    (lambda (_%rest113880%_ _%dir113881%_)
                      (let* ((_%npath113883%_
                              (path-expand
                               _%modpath113853%_
                               (path-expand _%dir113881%_)))
                             (_%$e113885%_
                              (_%find-compiled-file113855%_ _%npath113883%_)))
                        (if _%$e113885%_
                            (path-normalize _%$e113885%_)
                            (let ((_%$e113888%_
                                   (_%find-source-file113856%_
                                    _%npath113883%_)))
                              (if _%$e113888%_
                                  (path-normalize _%$e113888%_)
                                  (_%lp113858%_ _%rest113880%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest113861113869%_))
                  (let ((_%hd113866113895%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest113861113869%_)))
                        (_%tl113867113897%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest113861113869%_))))
                    (let* ((_%dir113900%_ _%hd113866113895%_)
                           (_%rest113902%_ _%tl113867113897%_))
                      (_%K113865113892%_ _%rest113902%_ _%dir113900%_)))
                  (_%else113863113877%_)))))))))
