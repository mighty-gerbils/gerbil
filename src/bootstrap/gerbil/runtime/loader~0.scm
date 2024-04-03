(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712146026)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths111587%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths111587%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111587%_)))
        (let ((__tmp111592
               (lambda (_%p111589%_)
                 (set! __load-path (cons _%p111589%_ __load-path))))
              (__tmp111591 (reverse! _%paths111587%_)))
          (declare (not safe))
          (##for-each __tmp111592 __tmp111591))))
    (define set-load-path!
      (lambda (_%paths111585%_)
        (if (and (let () (declare (not safe)) (list? _%paths111585%_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths111585%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111585%_)))
        (set! __load-path _%paths111585%_)))
    (define load-module
      (lambda (_%modpath111571%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath111571%_))
              (let ((_%modpath111575%_ _%modpath111571%_))
                (declare (not safe))
                (__load-module _%modpath111575%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
                 'contract:
                 'string?
                 'value:
                 _%modpath111571%_)
                '#!void)))))
    (define __load-module
      (lambda (_%modpath111548%_)
        (let ()
          (let* ((_%modpath111551%_ _%modpath111548%_)
                 (_%$e111560%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath111551%_))))
            (if _%$e111560%_
                _%$e111560%_
                (let ((_%$e111563%_
                       (let ()
                         (declare (not safe))
                         (__find-library-module _%modpath111551%_))))
                  (if _%$e111563%_
                      ((lambda (_%path111566%_)
                         (let ((_%loaded-path111568%_ (load _%path111566%_)))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              __modules
                              _%modpath111551%_
                              _%loaded-path111568%_))
                           _%loaded-path111568%_))
                       _%$e111563%_)
                      (let ()
                        (declare (not safe))
                        (error '"module not found" _%modpath111551%_)))))))))
    (define reload-module!
      (lambda (_%modpath111534%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath111534%_))
              (let ((_%modpath111538%_ _%modpath111534%_))
                (declare (not safe))
                (__reload-module! _%modpath111538%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
                 'contract:
                 'string?
                 'value:
                 _%modpath111534%_)
                '#!void)))))
    (define __reload-module!
      (lambda (_%modpath111508%_)
        (let ()
          (let* ((_%modpath111511%_ _%modpath111508%_)
                 (_%$e111521%_
                  (let ()
                    (declare (not safe))
                    (hash-get __modules _%modpath111511%_))))
            (if _%$e111521%_
                ((lambda (_%current-path111524%_)
                   (if (eq? _%current-path111524%_ 'builtin)
                       (let ((_%latest-path111526%_
                              (let ()
                                (declare (not safe))
                                (__find-library-module _%modpath111511%_))))
                         (if (or (equal? (path-extension
                                          _%current-path111524%_)
                                         '".scm")
                                 (let ((__tmp111593
                                        (equal? _%current-path111524%_
                                                _%latest-path111526%_)))
                                   (declare (not safe))
                                   (not __tmp111593)))
                             (let ((_%loaded-path111531%_
                                    (load _%modpath111511%_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _%modpath111511%_
                                  _%loaded-path111531%_))
                               _%loaded-path111531%_)
                             '#!void))
                       (let ()
                         (declare (not safe))
                         (error '"cannot reload builtin module"
                                _%modpath111511%_))))
                 _%$e111521%_)
                (let ()
                  (declare (not safe))
                  (__load-module _%modpath111511%_)))))))
    (define __find-library-module
      (lambda (_%modpath111442%_)
        (letrec ((_%find-compiled-file111444%_
                  (lambda (_%npath111497%_)
                    (let ((_%basepath111499%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111497%_ '".o"))))
                      (let _%lp111501%_ ((_%current111503%_ '#f)
                                         (_%n111504%_ '1))
                        (let ((_%next111506%_
                               (let ((__tmp111594
                                      (number->string _%n111504%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath111499%_
                                  __tmp111594))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next111506%_))
                              (let ((__tmp111595
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%n111504%_ '1))))
                                (declare (not safe))
                                (_%lp111501%_ _%next111506%_ __tmp111595))
                              _%current111503%_))))))
                 (_%find-source-file111445%_
                  (lambda (_%npath111493%_)
                    (let ((_%spath111495%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111493%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath111495%_))
                          _%spath111495%_
                          '#f)))))
          (let _%lp111447%_ ((_%rest111449%_
                              (let () (declare (not safe)) (load-path))))
            (let* ((_%rest111450111458%_ _%rest111449%_)
                   (_%else111452111466%_ (lambda () '#f))
                   (_%K111454111481%_
                    (lambda (_%rest111469%_ _%dir111470%_)
                      (let* ((_%npath111472%_
                              (path-expand
                               _%modpath111442%_
                               (path-expand _%dir111470%_)))
                             (_%$e111474%_
                              (let ()
                                (declare (not safe))
                                (_%find-compiled-file111444%_
                                 _%npath111472%_))))
                        (if _%$e111474%_
                            (path-normalize _%$e111474%_)
                            (let ((_%$e111477%_
                                   (let ()
                                     (declare (not safe))
                                     (_%find-source-file111445%_
                                      _%npath111472%_))))
                              (if _%$e111477%_
                                  (path-normalize _%$e111477%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%lp111447%_ _%rest111469%_)))))))))
              (if (let () (declare (not safe)) (##pair? _%rest111450111458%_))
                  (let ((_%hd111455111484%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111450111458%_)))
                        (_%tl111456111486%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111450111458%_))))
                    (let* ((_%dir111489%_ _%hd111455111484%_)
                           (_%rest111491%_ _%tl111456111486%_))
                      (declare (not safe))
                      (_%K111454111481%_ _%rest111491%_ _%dir111489%_)))
                  (let () (declare (not safe)) (_%else111452111466%_))))))))))
