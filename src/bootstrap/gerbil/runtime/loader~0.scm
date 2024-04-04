(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712251111)
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
      (lambda _%paths112167%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths112167%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112167%_)))
        (let ((__tmp112172
               (lambda (_%p112169%_)
                 (set! __load-path (cons _%p112169%_ __load-path))))
              (__tmp112171 (reverse! _%paths112167%_)))
          (declare (not safe))
          (##for-each __tmp112172 __tmp112171))))
    (define set-load-path!
      (lambda (_%paths112165%_)
        (if (and (let () (declare (not safe)) (list? _%paths112165%_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths112165%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112165%_)))
        (set! __load-path _%paths112165%_)))
    (define load-module
      (lambda (_%modpath112151%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath112151%_))
              (let ((_%modpath112155%_ _%modpath112151%_))
                (declare (not safe))
                (__load-module _%modpath112155%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
                 'contract:
                 'string?
                 'value:
                 _%modpath112151%_)
                '#!void)))))
    (define __load-module
      (lambda (_%modpath112128%_)
        (let ()
          (let* ((_%modpath112131%_ _%modpath112128%_)
                 (_%$e112140%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath112131%_))))
            (if _%$e112140%_
                _%$e112140%_
                (let ((_%$e112143%_
                       (let ()
                         (declare (not safe))
                         (__find-library-module _%modpath112131%_))))
                  (if _%$e112143%_
                      ((lambda (_%path112146%_)
                         (let ((_%loaded-path112148%_ (load _%path112146%_)))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              __modules
                              _%modpath112131%_
                              _%loaded-path112148%_))
                           _%loaded-path112148%_))
                       _%$e112143%_)
                      (let ()
                        (declare (not safe))
                        (error '"module not found" _%modpath112131%_)))))))))
    (define reload-module!
      (lambda (_%modpath112114%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath112114%_))
              (let ((_%modpath112118%_ _%modpath112114%_))
                (declare (not safe))
                (__reload-module! _%modpath112118%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
                 'contract:
                 'string?
                 'value:
                 _%modpath112114%_)
                '#!void)))))
    (define __reload-module!
      (lambda (_%modpath112088%_)
        (let ()
          (let* ((_%modpath112091%_ _%modpath112088%_)
                 (_%$e112101%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath112091%_))))
            (if _%$e112101%_
                ((lambda (_%current-path112104%_)
                   (if (eq? _%current-path112104%_ 'builtin)
                       (let ((_%latest-path112106%_
                              (let ()
                                (declare (not safe))
                                (__find-library-module _%modpath112091%_))))
                         (if (or (equal? (path-extension
                                          _%current-path112104%_)
                                         '".scm")
                                 (let ((__tmp112173
                                        (equal? _%current-path112104%_
                                                _%latest-path112106%_)))
                                   (declare (not safe))
                                   (not __tmp112173)))
                             (let ((_%loaded-path112111%_
                                    (load _%modpath112091%_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _%modpath112091%_
                                  _%loaded-path112111%_))
                               _%loaded-path112111%_)
                             '#!void))
                       (let ()
                         (declare (not safe))
                         (error '"cannot reload builtin module"
                                _%modpath112091%_))))
                 _%$e112101%_)
                (let ()
                  (declare (not safe))
                  (__load-module _%modpath112091%_)))))))
    (define __find-library-module
      (lambda (_%modpath112022%_)
        (letrec ((_%find-compiled-file112024%_
                  (lambda (_%npath112077%_)
                    (let ((_%basepath112079%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112077%_ '".o"))))
                      (let _%lp112081%_ ((_%current112083%_ '#f)
                                         (_%n112084%_ '1))
                        (let ((_%next112086%_
                               (let ((__tmp112174
                                      (number->string _%n112084%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath112079%_
                                  __tmp112174))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next112086%_))
                              (let ((__tmp112175
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%n112084%_ '1))))
                                (declare (not safe))
                                (_%lp112081%_ _%next112086%_ __tmp112175))
                              _%current112083%_))))))
                 (_%find-source-file112025%_
                  (lambda (_%npath112073%_)
                    (let ((_%spath112075%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112073%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath112075%_))
                          _%spath112075%_
                          '#f)))))
          (let _%lp112027%_ ((_%rest112029%_
                              (let () (declare (not safe)) (load-path))))
            (let* ((_%rest112030112038%_ _%rest112029%_)
                   (_%else112032112046%_ (lambda () '#f))
                   (_%K112034112061%_
                    (lambda (_%rest112049%_ _%dir112050%_)
                      (let* ((_%npath112052%_
                              (path-expand
                               _%modpath112022%_
                               (path-expand _%dir112050%_)))
                             (_%$e112054%_
                              (let ()
                                (declare (not safe))
                                (_%find-compiled-file112024%_
                                 _%npath112052%_))))
                        (if _%$e112054%_
                            (path-normalize _%$e112054%_)
                            (let ((_%$e112057%_
                                   (let ()
                                     (declare (not safe))
                                     (_%find-source-file112025%_
                                      _%npath112052%_))))
                              (if _%$e112057%_
                                  (path-normalize _%$e112057%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%lp112027%_ _%rest112049%_)))))))))
              (if (let () (declare (not safe)) (##pair? _%rest112030112038%_))
                  (let ((_%hd112035112064%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112030112038%_)))
                        (_%tl112036112066%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112030112038%_))))
                    (let* ((_%dir112069%_ _%hd112035112064%_)
                           (_%rest112071%_ _%tl112036112066%_))
                      (declare (not safe))
                      (_%K112034112061%_ _%rest112071%_ _%dir112069%_)))
                  (let () (declare (not safe)) (_%else112032112046%_))))))))))
