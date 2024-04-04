(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712246555)
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
      (lambda _%paths112192%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths112192%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112192%_)))
        (let ((__tmp112197
               (lambda (_%p112194%_)
                 (set! __load-path (cons _%p112194%_ __load-path))))
              (__tmp112196 (reverse! _%paths112192%_)))
          (declare (not safe))
          (##for-each __tmp112197 __tmp112196))))
    (define set-load-path!
      (lambda (_%paths112190%_)
        (if (and (let () (declare (not safe)) (list? _%paths112190%_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths112190%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112190%_)))
        (set! __load-path _%paths112190%_)))
    (define load-module
      (lambda (_%modpath112176%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath112176%_))
              (let ((_%modpath112180%_ _%modpath112176%_))
                (declare (not safe))
                (__load-module _%modpath112180%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
                 'contract:
                 'string?
                 'value:
                 _%modpath112176%_)
                '#!void)))))
    (define __load-module
      (lambda (_%modpath112153%_)
        (let ()
          (let* ((_%modpath112156%_ _%modpath112153%_)
                 (_%$e112165%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath112156%_))))
            (if _%$e112165%_
                _%$e112165%_
                (let ((_%$e112168%_
                       (let ()
                         (declare (not safe))
                         (__find-library-module _%modpath112156%_))))
                  (if _%$e112168%_
                      ((lambda (_%path112171%_)
                         (let ((_%loaded-path112173%_ (load _%path112171%_)))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              __modules
                              _%modpath112156%_
                              _%loaded-path112173%_))
                           _%loaded-path112173%_))
                       _%$e112168%_)
                      (let ()
                        (declare (not safe))
                        (error '"module not found" _%modpath112156%_)))))))))
    (define reload-module!
      (lambda (_%modpath112139%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath112139%_))
              (let ((_%modpath112143%_ _%modpath112139%_))
                (declare (not safe))
                (__reload-module! _%modpath112143%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
                 'contract:
                 'string?
                 'value:
                 _%modpath112139%_)
                '#!void)))))
    (define __reload-module!
      (lambda (_%modpath112113%_)
        (let ()
          (let* ((_%modpath112116%_ _%modpath112113%_)
                 (_%$e112126%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath112116%_))))
            (if _%$e112126%_
                ((lambda (_%current-path112129%_)
                   (if (eq? _%current-path112129%_ 'builtin)
                       (let ((_%latest-path112131%_
                              (let ()
                                (declare (not safe))
                                (__find-library-module _%modpath112116%_))))
                         (if (or (equal? (path-extension
                                          _%current-path112129%_)
                                         '".scm")
                                 (let ((__tmp112198
                                        (equal? _%current-path112129%_
                                                _%latest-path112131%_)))
                                   (declare (not safe))
                                   (not __tmp112198)))
                             (let ((_%loaded-path112136%_
                                    (load _%modpath112116%_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _%modpath112116%_
                                  _%loaded-path112136%_))
                               _%loaded-path112136%_)
                             '#!void))
                       (let ()
                         (declare (not safe))
                         (error '"cannot reload builtin module"
                                _%modpath112116%_))))
                 _%$e112126%_)
                (let ()
                  (declare (not safe))
                  (__load-module _%modpath112116%_)))))))
    (define __find-library-module
      (lambda (_%modpath112047%_)
        (letrec ((_%find-compiled-file112049%_
                  (lambda (_%npath112102%_)
                    (let ((_%basepath112104%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112102%_ '".o"))))
                      (let _%lp112106%_ ((_%current112108%_ '#f)
                                         (_%n112109%_ '1))
                        (let ((_%next112111%_
                               (let ((__tmp112199
                                      (number->string _%n112109%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath112104%_
                                  __tmp112199))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next112111%_))
                              (let ((__tmp112200
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%n112109%_ '1))))
                                (declare (not safe))
                                (_%lp112106%_ _%next112111%_ __tmp112200))
                              _%current112108%_))))))
                 (_%find-source-file112050%_
                  (lambda (_%npath112098%_)
                    (let ((_%spath112100%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112098%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath112100%_))
                          _%spath112100%_
                          '#f)))))
          (let _%lp112052%_ ((_%rest112054%_
                              (let () (declare (not safe)) (load-path))))
            (let* ((_%rest112055112063%_ _%rest112054%_)
                   (_%else112057112071%_ (lambda () '#f))
                   (_%K112059112086%_
                    (lambda (_%rest112074%_ _%dir112075%_)
                      (let* ((_%npath112077%_
                              (path-expand
                               _%modpath112047%_
                               (path-expand _%dir112075%_)))
                             (_%$e112079%_
                              (let ()
                                (declare (not safe))
                                (_%find-compiled-file112049%_
                                 _%npath112077%_))))
                        (if _%$e112079%_
                            (path-normalize _%$e112079%_)
                            (let ((_%$e112082%_
                                   (let ()
                                     (declare (not safe))
                                     (_%find-source-file112050%_
                                      _%npath112077%_))))
                              (if _%$e112082%_
                                  (path-normalize _%$e112082%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%lp112052%_ _%rest112074%_)))))))))
              (if (let () (declare (not safe)) (##pair? _%rest112055112063%_))
                  (let ((_%hd112060112089%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112055112063%_)))
                        (_%tl112061112091%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112055112063%_))))
                    (let* ((_%dir112094%_ _%hd112060112089%_)
                           (_%rest112096%_ _%tl112061112091%_))
                      (declare (not safe))
                      (_%K112059112086%_ _%rest112096%_ _%dir112094%_)))
                  (let () (declare (not safe)) (_%else112057112071%_))))))))))
