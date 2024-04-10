(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712773525)
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
      (lambda _%paths112204%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths112204%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112204%_)))
        (let ((__tmp112210
               (lambda (_%p112206%_)
                 (set! __load-path (cons _%p112206%_ __load-path))))
              (__tmp112209 (reverse! _%paths112204%_)))
          (declare (not safe))
          (##for-each __tmp112210 __tmp112209))))
    (define set-load-path!
      (lambda (_%paths112190%_)
        (if (list? _%paths112190%_)
            (let ((_%paths112194%_ _%paths112190%_))
              (__set-load-path! _%paths112194%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths112190%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths112178%_)
        (let ((_%paths112181%_ _%paths112178%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths112181%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths112181%_)))
          (set! __load-path _%paths112181%_))))
    (define load-module
      (lambda (_%modpath112164%_)
        (if (string? _%modpath112164%_)
            (let ((_%modpath112168%_ _%modpath112164%_))
              (__load-module _%modpath112168%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath112164%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath112129%_)
        (let ((_%modpath112132%_ _%modpath112129%_))
          (mutex-lock! __load-mx)
          (let ((_%$e112141%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath112132%_))))
            (if _%$e112141%_
                ((lambda (_%state112144%_)
                   (if (or (eq? 'builtin _%state112144%_)
                           (string? _%state112144%_))
                       (let () (mutex-unlock! __load-mx) _%state112144%_)
                       (if (eq? 'loading _%state112144%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath112132%_))
                           (if (and (pair? _%state112144%_)
                                    (eq? (car _%state112144%_) 'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp112211 (cadr _%state112144%_)))
                                   (declare (not safe))
                                   (raise __tmp112211)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state112144%_)))))))
                 _%$e112141%_)
                (let ((_%$e112153%_ (__find-library-module _%modpath112132%_)))
                  (if _%$e112153%_
                      ((lambda (_%path112156%_)
                         (let ()
                           (declare (not safe))
                           (hash-put! __modules _%modpath112132%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp112213
                                (lambda (_%exn112158%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp112214
                                         (cons 'error
                                               (cons _%exn112158%_ '()))))
                                    (declare (not safe))
                                    (hash-put!
                                     __modules
                                     _%modpath112132%_
                                     __tmp112214))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn112158%_))))
                               (__tmp112212
                                (lambda ()
                                  (let ((_%loaded-path112161%_
                                         (load _%path112156%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       __modules
                                       _%modpath112132%_
                                       _%loaded-path112161%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path112161%_))))
                           (declare (not safe))
                           (__with-catch __tmp112213 __tmp112212)))
                       _%$e112153%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath112132%_))))))))))
    (define reload-module!
      (lambda (_%modpath112115%_)
        (if (string? _%modpath112115%_)
            (let ((_%modpath112119%_ _%modpath112115%_))
              (__reload-module! _%modpath112119%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath112115%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath112086%_)
        (let ((_%modpath112089%_ _%modpath112086%_))
          (mutex-lock! __load-mx)
          (let ((_%$e112099%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath112089%_))))
            (if _%$e112099%_
                ((lambda (_%state112102%_)
                   (if (eq? _%state112102%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath112089%_)))
                       (if (eq? 'loading _%state112102%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state112102%_)
                               (let ((_%latest-path112107%_
                                      (__find-library-module
                                       _%modpath112089%_)))
                                 (if (or (equal? (path-extension
                                                  _%state112102%_)
                                                 '".scm")
                                         (not (equal? _%state112102%_
                                                      _%latest-path112107%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (hash-remove!
                                          __modules
                                          _%modpath112089%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath112089%_))
                                     '#!void))
                               (if (and (pair? _%state112102%_)
                                        (eq? (car _%state112102%_) 'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (hash-remove!
                                        __modules
                                        _%modpath112089%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath112089%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state112102%_))))))))
                 _%$e112099%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath112089%_)))))))
    (define __find-library-module
      (lambda (_%modpath112020%_)
        (letrec ((_%find-compiled-file112022%_
                  (lambda (_%npath112075%_)
                    (let ((_%basepath112077%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112075%_ '".o"))))
                      (let _%lp112079%_ ((_%current112081%_ '#f)
                                         (_%n112082%_ '1))
                        (let ((_%next112084%_
                               (let ((__tmp112215
                                      (number->string _%n112082%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath112077%_
                                  __tmp112215))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next112084%_))
                              (_%lp112079%_
                               _%next112084%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n112082%_ '1)))
                              _%current112081%_))))))
                 (_%find-source-file112023%_
                  (lambda (_%npath112071%_)
                    (let ((_%spath112073%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112071%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath112073%_))
                          _%spath112073%_
                          '#f)))))
          (let _%lp112025%_ ((_%rest112027%_ (load-path)))
            (let* ((_%rest112028112036%_ _%rest112027%_)
                   (_%else112030112044%_ (lambda () '#f))
                   (_%K112032112059%_
                    (lambda (_%rest112047%_ _%dir112048%_)
                      (let* ((_%npath112050%_
                              (path-expand
                               _%modpath112020%_
                               (path-expand _%dir112048%_)))
                             (_%$e112052%_
                              (_%find-compiled-file112022%_ _%npath112050%_)))
                        (if _%$e112052%_
                            (path-normalize _%$e112052%_)
                            (let ((_%$e112055%_
                                   (_%find-source-file112023%_
                                    _%npath112050%_)))
                              (if _%$e112055%_
                                  (path-normalize _%$e112055%_)
                                  (_%lp112025%_ _%rest112047%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest112028112036%_))
                  (let ((_%hd112033112062%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112028112036%_)))
                        (_%tl112034112064%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112028112036%_))))
                    (let* ((_%dir112067%_ _%hd112033112062%_)
                           (_%rest112069%_ _%tl112034112064%_))
                      (_%K112032112059%_ _%rest112069%_ _%dir112067%_)))
                  (_%else112030112044%_)))))))))
