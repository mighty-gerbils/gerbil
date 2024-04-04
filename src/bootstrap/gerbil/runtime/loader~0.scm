(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712262513)
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
      (lambda _%paths112175%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths112175%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112175%_)))
        (let ((__tmp112180
               (lambda (_%p112177%_)
                 (set! __load-path (cons _%p112177%_ __load-path))))
              (__tmp112179 (reverse! _%paths112175%_)))
          (declare (not safe))
          (##for-each __tmp112180 __tmp112179))))
    (define set-load-path!
      (lambda (_%paths112173%_)
        (if (and (let () (declare (not safe)) (list? _%paths112173%_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths112173%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths112173%_)))
        (set! __load-path _%paths112173%_)))
    (define load-module
      (lambda (_%modpath112159%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath112159%_))
              (let ((_%modpath112163%_ _%modpath112159%_))
                (declare (not safe))
                (__load-module _%modpath112163%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
                 'contract:
                 'string?
                 'value:
                 _%modpath112159%_)
                '#!void)))))
    (define __load-module
      (lambda (_%modpath112136%_)
        (let ()
          (let* ((_%modpath112139%_ _%modpath112136%_)
                 (_%$e112148%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath112139%_))))
            (if _%$e112148%_
                _%$e112148%_
                (let ((_%$e112151%_
                       (let ()
                         (declare (not safe))
                         (__find-library-module _%modpath112139%_))))
                  (if _%$e112151%_
                      ((lambda (_%path112154%_)
                         (let ((_%loaded-path112156%_ (load _%path112154%_)))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              __modules
                              _%modpath112139%_
                              _%loaded-path112156%_))
                           _%loaded-path112156%_))
                       _%$e112151%_)
                      (let ()
                        (declare (not safe))
                        (error '"module not found" _%modpath112139%_)))))))))
    (define reload-module!
      (lambda (_%modpath112122%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath112122%_))
              (let ((_%modpath112126%_ _%modpath112122%_))
                (declare (not safe))
                (__reload-module! _%modpath112126%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
                 'contract:
                 'string?
                 'value:
                 _%modpath112122%_)
                '#!void)))))
    (define __reload-module!
      (lambda (_%modpath112096%_)
        (let ()
          (let* ((_%modpath112099%_ _%modpath112096%_)
                 (_%$e112109%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath112099%_))))
            (if _%$e112109%_
                ((lambda (_%current-path112112%_)
                   (if (eq? _%current-path112112%_ 'builtin)
                       (let ((_%latest-path112114%_
                              (let ()
                                (declare (not safe))
                                (__find-library-module _%modpath112099%_))))
                         (if (or (equal? (path-extension
                                          _%current-path112112%_)
                                         '".scm")
                                 (let ((__tmp112181
                                        (equal? _%current-path112112%_
                                                _%latest-path112114%_)))
                                   (declare (not safe))
                                   (not __tmp112181)))
                             (let ((_%loaded-path112119%_
                                    (load _%modpath112099%_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _%modpath112099%_
                                  _%loaded-path112119%_))
                               _%loaded-path112119%_)
                             '#!void))
                       (let ()
                         (declare (not safe))
                         (error '"cannot reload builtin module"
                                _%modpath112099%_))))
                 _%$e112109%_)
                (let ()
                  (declare (not safe))
                  (__load-module _%modpath112099%_)))))))
    (define __find-library-module
      (lambda (_%modpath112030%_)
        (letrec ((_%find-compiled-file112032%_
                  (lambda (_%npath112085%_)
                    (let ((_%basepath112087%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112085%_ '".o"))))
                      (let _%lp112089%_ ((_%current112091%_ '#f)
                                         (_%n112092%_ '1))
                        (let ((_%next112094%_
                               (let ((__tmp112182
                                      (number->string _%n112092%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath112087%_
                                  __tmp112182))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next112094%_))
                              (let ((__tmp112183
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%n112092%_ '1))))
                                (declare (not safe))
                                (_%lp112089%_ _%next112094%_ __tmp112183))
                              _%current112091%_))))))
                 (_%find-source-file112033%_
                  (lambda (_%npath112081%_)
                    (let ((_%spath112083%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath112081%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath112083%_))
                          _%spath112083%_
                          '#f)))))
          (let _%lp112035%_ ((_%rest112037%_
                              (let () (declare (not safe)) (load-path))))
            (let* ((_%rest112038112046%_ _%rest112037%_)
                   (_%else112040112054%_ (lambda () '#f))
                   (_%K112042112069%_
                    (lambda (_%rest112057%_ _%dir112058%_)
                      (let* ((_%npath112060%_
                              (path-expand
                               _%modpath112030%_
                               (path-expand _%dir112058%_)))
                             (_%$e112062%_
                              (let ()
                                (declare (not safe))
                                (_%find-compiled-file112032%_
                                 _%npath112060%_))))
                        (if _%$e112062%_
                            (path-normalize _%$e112062%_)
                            (let ((_%$e112065%_
                                   (let ()
                                     (declare (not safe))
                                     (_%find-source-file112033%_
                                      _%npath112060%_))))
                              (if _%$e112065%_
                                  (path-normalize _%$e112065%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%lp112035%_ _%rest112057%_)))))))))
              (if (let () (declare (not safe)) (##pair? _%rest112038112046%_))
                  (let ((_%hd112043112072%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112038112046%_)))
                        (_%tl112044112074%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112038112046%_))))
                    (let* ((_%dir112077%_ _%hd112043112072%_)
                           (_%rest112079%_ _%tl112044112074%_))
                      (declare (not safe))
                      (_%K112042112069%_ _%rest112079%_ _%dir112077%_)))
                  (let () (declare (not safe)) (_%else112040112054%_))))))))))
