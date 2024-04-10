(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712784665)
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
      (lambda _%paths112641%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths112641%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112641%_)))
        (let ((__tmp112647
               (lambda (_%p112643%_)
                 (set! __load-path (cons _%p112643%_ __load-path))))
              (__tmp112646 (reverse! _%paths112641%_)))
          (declare (not safe))
          (##for-each __tmp112647 __tmp112646))))
    (define set-load-path!
      (lambda (_%paths112627%_)
        (if (list? _%paths112627%_)
            (let ((_%paths112631%_ _%paths112627%_))
              (__set-load-path! _%paths112631%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths112627%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths112615%_)
        (let ((_%paths112618%_ _%paths112615%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths112618%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths112618%_)))
          (set! __load-path _%paths112618%_))))
    (define load-module
      (lambda (_%modpath112601%_)
        (if (string? _%modpath112601%_)
            (let ((_%modpath112605%_ _%modpath112601%_))
              (__load-module _%modpath112605%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath112601%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath112566%_)
        (let ((_%modpath112569%_ _%modpath112566%_))
          (mutex-lock! __load-mx)
          (let ((_%$e112578%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath112569%_))))
            (if _%$e112578%_
                ((lambda (_%state112581%_)
                   (if (or (eq? 'builtin _%state112581%_)
                           (string? _%state112581%_))
                       (let () (mutex-unlock! __load-mx) _%state112581%_)
                       (if (eq? 'loading _%state112581%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath112569%_))
                           (if (and (pair? _%state112581%_)
                                    (eq? (car _%state112581%_) 'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp112648 (cadr _%state112581%_)))
                                   (declare (not safe))
                                   (raise __tmp112648)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state112581%_)))))))
                 _%$e112578%_)
                (let ((_%$e112590%_ (__find-library-module _%modpath112569%_)))
                  (if _%$e112590%_
                      ((lambda (_%path112593%_)
                         (let ()
                           (declare (not safe))
                           (hash-put! __modules _%modpath112569%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp112650
                                (lambda (_%exn112595%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp112651
                                         (cons 'error
                                               (cons _%exn112595%_ '()))))
                                    (declare (not safe))
                                    (hash-put!
                                     __modules
                                     _%modpath112569%_
                                     __tmp112651))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn112595%_))))
                               (__tmp112649
                                (lambda ()
                                  (let ((_%loaded-path112598%_
                                         (load _%path112593%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       __modules
                                       _%modpath112569%_
                                       _%loaded-path112598%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path112598%_))))
                           (declare (not safe))
                           (__with-catch __tmp112650 __tmp112649)))
                       _%$e112590%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath112569%_))))))))))
    (define reload-module!
      (lambda (_%modpath112552%_)
        (if (string? _%modpath112552%_)
            (let ((_%modpath112556%_ _%modpath112552%_))
              (__reload-module! _%modpath112556%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath112552%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath112523%_)
        (let ((_%modpath112526%_ _%modpath112523%_))
          (mutex-lock! __load-mx)
          (let ((_%$e112536%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath112526%_))))
            (if _%$e112536%_
                ((lambda (_%state112539%_)
                   (if (eq? _%state112539%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath112526%_)))
                       (if (eq? 'loading _%state112539%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state112539%_)
                               (let ((_%latest-path112544%_
                                      (__find-library-module
                                       _%modpath112526%_)))
                                 (if (or (equal? (path-extension
                                                  _%state112539%_)
                                                 '".scm")
                                         (not (equal? _%state112539%_
                                                      _%latest-path112544%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (hash-remove!
                                          __modules
                                          _%modpath112526%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath112526%_))
                                     '#!void))
                               (if (and (pair? _%state112539%_)
                                        (eq? (car _%state112539%_) 'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (hash-remove!
                                        __modules
                                        _%modpath112526%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath112526%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state112539%_))))))))
                 _%$e112536%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath112526%_)))))))
    (define __find-library-module
      (lambda (_%modpath112457%_)
        (letrec ((_%find-compiled-file112459%_
                  (lambda (_%npath112512%_)
                    (let ((_%basepath112514%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112512%_ '".o"))))
                      (let _%lp112516%_ ((_%current112518%_ '#f)
                                         (_%n112519%_ '1))
                        (let ((_%next112521%_
                               (let ((__tmp112652
                                      (number->string _%n112519%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath112514%_
                                  __tmp112652))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next112521%_))
                              (_%lp112516%_
                               _%next112521%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n112519%_ '1)))
                              _%current112518%_))))))
                 (_%find-source-file112460%_
                  (lambda (_%npath112508%_)
                    (let ((_%spath112510%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112508%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath112510%_))
                          _%spath112510%_
                          '#f)))))
          (let _%lp112462%_ ((_%rest112464%_ (load-path)))
            (let* ((_%rest112465112473%_ _%rest112464%_)
                   (_%else112467112481%_ (lambda () '#f))
                   (_%K112469112496%_
                    (lambda (_%rest112484%_ _%dir112485%_)
                      (let* ((_%npath112487%_
                              (path-expand
                               _%modpath112457%_
                               (path-expand _%dir112485%_)))
                             (_%$e112489%_
                              (_%find-compiled-file112459%_ _%npath112487%_)))
                        (if _%$e112489%_
                            (path-normalize _%$e112489%_)
                            (let ((_%$e112492%_
                                   (_%find-source-file112460%_
                                    _%npath112487%_)))
                              (if _%$e112492%_
                                  (path-normalize _%$e112492%_)
                                  (_%lp112462%_ _%rest112484%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest112465112473%_))
                  (let ((_%hd112470112499%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112465112473%_)))
                        (_%tl112471112501%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112465112473%_))))
                    (let* ((_%dir112504%_ _%hd112470112499%_)
                           (_%rest112506%_ _%tl112471112501%_))
                      (_%K112469112496%_ _%rest112506%_ _%dir112504%_)))
                  (_%else112467112481%_)))))))))
