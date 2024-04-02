(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712093476)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths111657%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths111657%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111657%_)))
        (let ((__tmp111662
               (lambda (_%p111659%_)
                 (set! __load-path (cons _%p111659%_ __load-path))))
              (__tmp111661 (reverse! _%paths111657%_)))
          (declare (not safe))
          (##for-each __tmp111662 __tmp111661))))
    (define set-load-path!
      (lambda (_%paths111655%_)
        (if (and (let () (declare (not safe)) (list? _%paths111655%_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths111655%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111655%_)))
        (set! __load-path _%paths111655%_)))
    (define load-module
      (lambda (_%modpath111641%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath111641%_))
              (let ()
                (let ((_%modpath111645%_ _%modpath111641%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__load-module _%modpath111645%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
               'contract:
               'string?
               'value:
               _%modpath111641%_)))))
    (define __load-module
      (lambda (_%modpath111618%_)
        (let ()
          (let ((_%modpath111621%_ _%modpath111618%_))
            (let ()
              (let ((_%$e111630%_
                     (let ()
                       (declare (not safe))
                       (hash-get __modules _%modpath111621%_))))
                (if _%$e111630%_
                    _%$e111630%_
                    (let ((_%$e111633%_
                           (let ()
                             (declare (not safe))
                             (__find-library-module _%modpath111621%_))))
                      (if _%$e111633%_
                          ((lambda (_%path111636%_)
                             (let ((_%loaded-path111638%_
                                    (load _%path111636%_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _%modpath111621%_
                                  _%loaded-path111638%_))
                               _%loaded-path111638%_))
                           _%$e111633%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (error '"module not found"
                                     _%modpath111621%_))))))))))))
    (define reload-module!
      (lambda (_%modpath111604%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath111604%_))
              (let ()
                (let ((_%modpath111608%_ _%modpath111604%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__reload-module! _%modpath111608%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
               'contract:
               'string?
               'value:
               _%modpath111604%_)))))
    (define __reload-module!
      (lambda (_%modpath111578%_)
        (let ()
          (let ((_%modpath111581%_ _%modpath111578%_))
            (let ()
              (let ((_%$e111591%_
                     (let ()
                       (declare (not safe))
                       (hash-get __modules _%modpath111581%_))))
                (if _%$e111591%_
                    ((lambda (_%current-path111594%_)
                       (if (eq? _%current-path111594%_ 'builtin)
                           (let ((_%latest-path111596%_
                                  (let ()
                                    (declare (not safe))
                                    (__find-library-module
                                     _%modpath111581%_))))
                             (if (or (equal? (path-extension
                                              _%current-path111594%_)
                                             '".scm")
                                     (let ((__tmp111663
                                            (equal? _%current-path111594%_
                                                    _%latest-path111596%_)))
                                       (declare (not safe))
                                       (not __tmp111663)))
                                 (let ((_%loaded-path111601%_
                                        (load _%modpath111581%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      __modules
                                      _%modpath111581%_
                                      _%loaded-path111601%_))
                                   _%loaded-path111601%_)
                                 '#!void))
                           (let ()
                             (declare (not safe))
                             (error '"cannot reload builtin module"
                                    _%modpath111581%_))))
                     _%$e111591%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__load-module _%modpath111581%_))))))))))
    (define __find-library-module
      (lambda (_%modpath111512%_)
        (letrec ((_%find-compiled-file111514%_
                  (lambda (_%npath111567%_)
                    (let ((_%basepath111569%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111567%_ '".o"))))
                      (let _%lp111571%_ ((_%current111573%_ '#f)
                                         (_%n111574%_ '1))
                        (let ((_%next111576%_
                               (let ((__tmp111664
                                      (number->string _%n111574%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath111569%_
                                  __tmp111664))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next111576%_))
                              (let ((__tmp111665
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%n111574%_ '1))))
                                (declare (not safe))
                                (_%lp111571%_ _%next111576%_ __tmp111665))
                              _%current111573%_))))))
                 (_%find-source-file111515%_
                  (lambda (_%npath111563%_)
                    (let ((_%spath111565%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111563%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath111565%_))
                          _%spath111565%_
                          '#f)))))
          (let _%lp111517%_ ((_%rest111519%_
                              (let () (declare (not safe)) (load-path))))
            (let* ((_%rest111520111528%_ _%rest111519%_)
                   (_%else111522111536%_ (lambda () '#f))
                   (_%K111524111551%_
                    (lambda (_%rest111539%_ _%dir111540%_)
                      (let* ((_%npath111542%_
                              (path-expand
                               _%modpath111512%_
                               (path-expand _%dir111540%_)))
                             (_%$e111544%_
                              (let ()
                                (declare (not safe))
                                (_%find-compiled-file111514%_
                                 _%npath111542%_))))
                        (if _%$e111544%_
                            (path-normalize _%$e111544%_)
                            (let ((_%$e111547%_
                                   (let ()
                                     (declare (not safe))
                                     (_%find-source-file111515%_
                                      _%npath111542%_))))
                              (if _%$e111547%_
                                  (path-normalize _%$e111547%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (_%lp111517%_ _%rest111539%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest111520111528%_))
                  (let ((_%hd111525111554%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111520111528%_)))
                        (_%tl111526111556%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111520111528%_))))
                    (let* ((_%dir111559%_ _%hd111525111554%_)
                           (_%rest111561%_ _%tl111526111556%_))
                      (declare (not safe))
                      (_%K111524111551%_ _%rest111561%_ _%dir111559%_)))
                  (let () (declare (not safe)) (_%else111522111536%_))))))))))
