(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712533289)
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
      (lambda _%paths112102%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths112102%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112102%_)))
        (let ((__tmp112107
               (lambda (_%p112104%_)
                 (set! __load-path (cons _%p112104%_ __load-path))))
              (__tmp112106 (reverse! _%paths112102%_)))
          (declare (not safe))
          (##for-each __tmp112107 __tmp112106))))
    (define set-load-path!
      (lambda (_%paths112100%_)
        (if (and (let () (declare (not safe)) (list? _%paths112100%_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths112100%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112100%_)))
        (set! __load-path _%paths112100%_)))
    (define load-module
      (lambda (_%modpath112086%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath112086%_))
              (let ((_%modpath112090%_ _%modpath112086%_))
                (declare (not safe))
                (__load-module _%modpath112090%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
                 'contract:
                 'string?
                 'value:
                 _%modpath112086%_)
                '#!void)))))
    (define __load-module
      (lambda (_%modpath112063%_)
        (let ()
          (let* ((_%modpath112066%_ _%modpath112063%_)
                 (_%$e112075%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath112066%_))))
            (if _%$e112075%_
                _%$e112075%_
                (let ((_%$e112078%_
                       (let ()
                         (declare (not safe))
                         (__find-library-module _%modpath112066%_))))
                  (if _%$e112078%_
                      ((lambda (_%path112081%_)
                         (let ((_%loaded-path112083%_ (load _%path112081%_)))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              __modules
                              _%modpath112066%_
                              _%loaded-path112083%_))
                           _%loaded-path112083%_))
                       _%$e112078%_)
                      (let ()
                        (declare (not safe))
                        (error '"module not found" _%modpath112066%_)))))))))
    (define reload-module!
      (lambda (_%modpath112049%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath112049%_))
              (let ((_%modpath112053%_ _%modpath112049%_))
                (declare (not safe))
                (__reload-module! _%modpath112053%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
                 'contract:
                 'string?
                 'value:
                 _%modpath112049%_)
                '#!void)))))
    (define __reload-module!
      (lambda (_%modpath112023%_)
        (let ()
          (let* ((_%modpath112026%_ _%modpath112023%_)
                 (_%$e112036%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath112026%_))))
            (if _%$e112036%_
                ((lambda (_%current-path112039%_)
                   (if (eq? _%current-path112039%_ 'builtin)
                       (let ((_%latest-path112041%_
                              (let ()
                                (declare (not safe))
                                (__find-library-module _%modpath112026%_))))
                         (if (or (equal? (path-extension
                                          _%current-path112039%_)
                                         '".scm")
                                 (let ((__tmp112108
                                        (equal? _%current-path112039%_
                                                _%latest-path112041%_)))
                                   (declare (not safe))
                                   (not __tmp112108)))
                             (let ((_%loaded-path112046%_
                                    (load _%modpath112026%_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _%modpath112026%_
                                  _%loaded-path112046%_))
                               _%loaded-path112046%_)
                             '#!void))
                       (let ()
                         (declare (not safe))
                         (error '"cannot reload builtin module"
                                _%modpath112026%_))))
                 _%$e112036%_)
                (let ()
                  (declare (not safe))
                  (__load-module _%modpath112026%_)))))))
    (define __find-library-module
      (lambda (_%modpath111957%_)
        (letrec ((_%find-compiled-file111959%_
                  (lambda (_%npath112012%_)
                    (let ((_%basepath112014%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112012%_ '".o"))))
                      (let _%lp112016%_ ((_%current112018%_ '#f)
                                         (_%n112019%_ '1))
                        (let ((_%next112021%_
                               (let ((__tmp112109
                                      (number->string _%n112019%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath112014%_
                                  __tmp112109))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next112021%_))
                              (let ((__tmp112110
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%n112019%_ '1))))
                                (declare (not safe))
                                (_%lp112016%_ _%next112021%_ __tmp112110))
                              _%current112018%_))))))
                 (_%find-source-file111960%_
                  (lambda (_%npath112008%_)
                    (let ((_%spath112010%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112008%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath112010%_))
                          _%spath112010%_
                          '#f)))))
          (let _%lp111962%_ ((_%rest111964%_
                              (let () (declare (not safe)) (load-path))))
            (let* ((_%rest111965111973%_ _%rest111964%_)
                   (_%else111967111981%_ (lambda () '#f))
                   (_%K111969111996%_
                    (lambda (_%rest111984%_ _%dir111985%_)
                      (let* ((_%npath111987%_
                              (path-expand
                               _%modpath111957%_
                               (path-expand _%dir111985%_)))
                             (_%$e111989%_
                              (let ()
                                (declare (not safe))
                                (_%find-compiled-file111959%_
                                 _%npath111987%_))))
                        (if _%$e111989%_
                            (path-normalize _%$e111989%_)
                            (let ((_%$e111992%_
                                   (let ()
                                     (declare (not safe))
                                     (_%find-source-file111960%_
                                      _%npath111987%_))))
                              (if _%$e111992%_
                                  (path-normalize _%$e111992%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%lp111962%_ _%rest111984%_)))))))))
              (if (let () (declare (not safe)) (##pair? _%rest111965111973%_))
                  (let ((_%hd111970111999%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111965111973%_)))
                        (_%tl111971112001%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111965111973%_))))
                    (let* ((_%dir112004%_ _%hd111970111999%_)
                           (_%rest112006%_ _%tl111971112001%_))
                      (declare (not safe))
                      (_%K111969111996%_ _%rest112006%_ _%dir112004%_)))
                  (let () (declare (not safe)) (_%else111967111981%_))))))))))
