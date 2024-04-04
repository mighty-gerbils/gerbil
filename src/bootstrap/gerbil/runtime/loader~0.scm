(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712269045)
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
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths112101%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths112101%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112101%_)))
        (let ((__tmp112106
               (lambda (_%p112103%_)
                 (set! __load-path (cons _%p112103%_ __load-path))))
              (__tmp112105 (reverse! _%paths112101%_)))
          (declare (not safe))
          (##for-each __tmp112106 __tmp112105))))
    (define set-load-path!
      (lambda (_%paths112099%_)
        (if (and (let () (declare (not safe)) (list? _%paths112099%_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths112099%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112099%_)))
        (set! __load-path _%paths112099%_)))
    (define load-module
      (lambda (_%modpath112085%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath112085%_))
              (let ((_%modpath112089%_ _%modpath112085%_))
                (declare (not safe))
                (__load-module _%modpath112089%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
                 'contract:
                 'string?
                 'value:
                 _%modpath112085%_)
                '#!void)))))
    (define __load-module
      (lambda (_%modpath112062%_)
        (let ()
          (let* ((_%modpath112065%_ _%modpath112062%_)
                 (_%$e112074%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath112065%_))))
            (if _%$e112074%_
                _%$e112074%_
                (let ((_%$e112077%_
                       (let ()
                         (declare (not safe))
                         (__find-library-module _%modpath112065%_))))
                  (if _%$e112077%_
                      ((lambda (_%path112080%_)
                         (let ((_%loaded-path112082%_ (load _%path112080%_)))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              __modules
                              _%modpath112065%_
                              _%loaded-path112082%_))
                           _%loaded-path112082%_))
                       _%$e112077%_)
                      (let ()
                        (declare (not safe))
                        (error '"module not found" _%modpath112065%_)))))))))
    (define reload-module!
      (lambda (_%modpath112048%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath112048%_))
              (let ((_%modpath112052%_ _%modpath112048%_))
                (declare (not safe))
                (__reload-module! _%modpath112052%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
                 'contract:
                 'string?
                 'value:
                 _%modpath112048%_)
                '#!void)))))
    (define __reload-module!
      (lambda (_%modpath112022%_)
        (let ()
          (let* ((_%modpath112025%_ _%modpath112022%_)
                 (_%$e112035%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath112025%_))))
            (if _%$e112035%_
                ((lambda (_%current-path112038%_)
                   (if (eq? _%current-path112038%_ 'builtin)
                       (let ((_%latest-path112040%_
                              (let ()
                                (declare (not safe))
                                (__find-library-module _%modpath112025%_))))
                         (if (or (equal? (path-extension
                                          _%current-path112038%_)
                                         '".scm")
                                 (let ((__tmp112107
                                        (equal? _%current-path112038%_
                                                _%latest-path112040%_)))
                                   (declare (not safe))
                                   (not __tmp112107)))
                             (let ((_%loaded-path112045%_
                                    (load _%modpath112025%_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _%modpath112025%_
                                  _%loaded-path112045%_))
                               _%loaded-path112045%_)
                             '#!void))
                       (let ()
                         (declare (not safe))
                         (error '"cannot reload builtin module"
                                _%modpath112025%_))))
                 _%$e112035%_)
                (let ()
                  (declare (not safe))
                  (__load-module _%modpath112025%_)))))))
    (define __find-library-module
      (lambda (_%modpath111956%_)
        (letrec ((_%find-compiled-file111958%_
                  (lambda (_%npath112011%_)
                    (let ((_%basepath112013%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112011%_ '".o"))))
                      (let _%lp112015%_ ((_%current112017%_ '#f)
                                         (_%n112018%_ '1))
                        (let ((_%next112020%_
                               (let ((__tmp112108
                                      (number->string _%n112018%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath112013%_
                                  __tmp112108))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next112020%_))
                              (let ((__tmp112109
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%n112018%_ '1))))
                                (declare (not safe))
                                (_%lp112015%_ _%next112020%_ __tmp112109))
                              _%current112017%_))))))
                 (_%find-source-file111959%_
                  (lambda (_%npath112007%_)
                    (let ((_%spath112009%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112007%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath112009%_))
                          _%spath112009%_
                          '#f)))))
          (let _%lp111961%_ ((_%rest111963%_
                              (let () (declare (not safe)) (load-path))))
            (let* ((_%rest111964111972%_ _%rest111963%_)
                   (_%else111966111980%_ (lambda () '#f))
                   (_%K111968111995%_
                    (lambda (_%rest111983%_ _%dir111984%_)
                      (let* ((_%npath111986%_
                              (path-expand
                               _%modpath111956%_
                               (path-expand _%dir111984%_)))
                             (_%$e111988%_
                              (let ()
                                (declare (not safe))
                                (_%find-compiled-file111958%_
                                 _%npath111986%_))))
                        (if _%$e111988%_
                            (path-normalize _%$e111988%_)
                            (let ((_%$e111991%_
                                   (let ()
                                     (declare (not safe))
                                     (_%find-source-file111959%_
                                      _%npath111986%_))))
                              (if _%$e111991%_
                                  (path-normalize _%$e111991%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%lp111961%_ _%rest111983%_)))))))))
              (if (let () (declare (not safe)) (##pair? _%rest111964111972%_))
                  (let ((_%hd111969111998%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111964111972%_)))
                        (_%tl111970112000%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111964111972%_))))
                    (let* ((_%dir112003%_ _%hd111969111998%_)
                           (_%rest112005%_ _%tl111970112000%_))
                      (declare (not safe))
                      (_%K111968111995%_ _%rest112005%_ _%dir112003%_)))
                  (let () (declare (not safe)) (_%else111966111980%_))))))))))
