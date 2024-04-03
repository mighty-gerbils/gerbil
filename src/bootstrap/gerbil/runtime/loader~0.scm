(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712121898)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths111568%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths111568%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111568%_)))
        (let ((__tmp111573
               (lambda (_%p111570%_)
                 (set! __load-path (cons _%p111570%_ __load-path))))
              (__tmp111572 (reverse! _%paths111568%_)))
          (declare (not safe))
          (##for-each __tmp111573 __tmp111572))))
    (define set-load-path!
      (lambda (_%paths111566%_)
        (if (and (let () (declare (not safe)) (list? _%paths111566%_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths111566%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111566%_)))
        (set! __load-path _%paths111566%_)))
    (define load-module
      (lambda (_%modpath111552%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath111552%_))
              (let ()
                (let ((_%modpath111556%_ _%modpath111552%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__load-module _%modpath111556%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
               'contract:
               'string?
               'value:
               _%modpath111552%_)))))
    (define __load-module
      (lambda (_%modpath111529%_)
        (let ()
          (let ((_%modpath111532%_ _%modpath111529%_))
            (let ()
              (let ((_%$e111541%_
                     (let ()
                       (declare (not safe))
                       (hash-get __modules _%modpath111532%_))))
                (if _%$e111541%_
                    _%$e111541%_
                    (let ((_%$e111544%_
                           (let ()
                             (declare (not safe))
                             (__find-library-module _%modpath111532%_))))
                      (if _%$e111544%_
                          ((lambda (_%path111547%_)
                             (let ((_%loaded-path111549%_
                                    (load _%path111547%_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _%modpath111532%_
                                  _%loaded-path111549%_))
                               _%loaded-path111549%_))
                           _%$e111544%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (error '"module not found"
                                     _%modpath111532%_))))))))))))
    (define reload-module!
      (lambda (_%modpath111515%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath111515%_))
              (let ()
                (let ((_%modpath111519%_ _%modpath111515%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__reload-module! _%modpath111519%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
               'contract:
               'string?
               'value:
               _%modpath111515%_)))))
    (define __reload-module!
      (lambda (_%modpath111489%_)
        (let ()
          (let ((_%modpath111492%_ _%modpath111489%_))
            (let ()
              (let ((_%$e111502%_
                     (let ()
                       (declare (not safe))
                       (hash-get __modules _%modpath111492%_))))
                (if _%$e111502%_
                    ((lambda (_%current-path111505%_)
                       (if (eq? _%current-path111505%_ 'builtin)
                           (let ((_%latest-path111507%_
                                  (let ()
                                    (declare (not safe))
                                    (__find-library-module
                                     _%modpath111492%_))))
                             (if (or (equal? (path-extension
                                              _%current-path111505%_)
                                             '".scm")
                                     (let ((__tmp111574
                                            (equal? _%current-path111505%_
                                                    _%latest-path111507%_)))
                                       (declare (not safe))
                                       (not __tmp111574)))
                                 (let ((_%loaded-path111512%_
                                        (load _%modpath111492%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      __modules
                                      _%modpath111492%_
                                      _%loaded-path111512%_))
                                   _%loaded-path111512%_)
                                 '#!void))
                           (let ()
                             (declare (not safe))
                             (error '"cannot reload builtin module"
                                    _%modpath111492%_))))
                     _%$e111502%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__load-module _%modpath111492%_))))))))))
    (define __find-library-module
      (lambda (_%modpath111423%_)
        (letrec ((_%find-compiled-file111425%_
                  (lambda (_%npath111478%_)
                    (let ((_%basepath111480%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111478%_ '".o"))))
                      (let _%lp111482%_ ((_%current111484%_ '#f)
                                         (_%n111485%_ '1))
                        (let ((_%next111487%_
                               (let ((__tmp111575
                                      (number->string _%n111485%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath111480%_
                                  __tmp111575))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next111487%_))
                              (let ((__tmp111576
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%n111485%_ '1))))
                                (declare (not safe))
                                (_%lp111482%_ _%next111487%_ __tmp111576))
                              _%current111484%_))))))
                 (_%find-source-file111426%_
                  (lambda (_%npath111474%_)
                    (let ((_%spath111476%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111474%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath111476%_))
                          _%spath111476%_
                          '#f)))))
          (let _%lp111428%_ ((_%rest111430%_
                              (let () (declare (not safe)) (load-path))))
            (let* ((_%rest111431111439%_ _%rest111430%_)
                   (_%else111433111447%_ (lambda () '#f))
                   (_%K111435111462%_
                    (lambda (_%rest111450%_ _%dir111451%_)
                      (let* ((_%npath111453%_
                              (path-expand
                               _%modpath111423%_
                               (path-expand _%dir111451%_)))
                             (_%$e111455%_
                              (let ()
                                (declare (not safe))
                                (_%find-compiled-file111425%_
                                 _%npath111453%_))))
                        (if _%$e111455%_
                            (path-normalize _%$e111455%_)
                            (let ((_%$e111458%_
                                   (let ()
                                     (declare (not safe))
                                     (_%find-source-file111426%_
                                      _%npath111453%_))))
                              (if _%$e111458%_
                                  (path-normalize _%$e111458%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (_%lp111428%_ _%rest111450%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest111431111439%_))
                  (let ((_%hd111436111465%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111431111439%_)))
                        (_%tl111437111467%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111431111439%_))))
                    (let* ((_%dir111470%_ _%hd111436111465%_)
                           (_%rest111472%_ _%tl111437111467%_))
                      (declare (not safe))
                      (_%K111435111462%_ _%rest111472%_ _%dir111470%_)))
                  (let () (declare (not safe)) (_%else111433111447%_))))))))))
