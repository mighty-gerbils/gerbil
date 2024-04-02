(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712084995)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths111462%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths111462%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111462%_)))
        (let ((__tmp111467
               (lambda (_%p111464%_)
                 (set! __load-path (cons _%p111464%_ __load-path))))
              (__tmp111466 (reverse! _%paths111462%_)))
          (declare (not safe))
          (##for-each __tmp111467 __tmp111466))))
    (define set-load-path!
      (lambda (_%paths111460%_)
        (if (and (let () (declare (not safe)) (list? _%paths111460%_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths111460%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111460%_)))
        (set! __load-path _%paths111460%_)))
    (define load-module
      (lambda (_%modpath111446%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath111446%_))
              (let ()
                (let ((_%modpath111450%_ _%modpath111446%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__load-module _%modpath111450%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
               'contract:
               'string?
               'value:
               _%modpath111446%_)))))
    (define __load-module
      (lambda (_%modpath111423%_)
        (let ()
          (let ((_%modpath111426%_ _%modpath111423%_))
            (let ()
              (let ((_%$e111435%_
                     (let ()
                       (declare (not safe))
                       (hash-get __modules _%modpath111426%_))))
                (if _%$e111435%_
                    _%$e111435%_
                    (let ((_%$e111438%_
                           (let ()
                             (declare (not safe))
                             (__find-library-module _%modpath111426%_))))
                      (if _%$e111438%_
                          ((lambda (_%path111441%_)
                             (let ((_%loaded-path111443%_
                                    (load _%path111441%_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _%modpath111426%_
                                  _%loaded-path111443%_))
                               _%loaded-path111443%_))
                           _%$e111438%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (error '"module not found"
                                     _%modpath111426%_))))))))))))
    (define reload-module!
      (lambda (_%modpath111409%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath111409%_))
              (let ()
                (let ((_%modpath111413%_ _%modpath111409%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__reload-module! _%modpath111413%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
               'contract:
               'string?
               'value:
               _%modpath111409%_)))))
    (define __reload-module!
      (lambda (_%modpath111383%_)
        (let ()
          (let ((_%modpath111386%_ _%modpath111383%_))
            (let ()
              (let ((_%$e111396%_
                     (let ()
                       (declare (not safe))
                       (hash-get __modules _%modpath111386%_))))
                (if _%$e111396%_
                    ((lambda (_%current-path111399%_)
                       (if (eq? _%current-path111399%_ 'builtin)
                           (let ((_%latest-path111401%_
                                  (let ()
                                    (declare (not safe))
                                    (__find-library-module
                                     _%modpath111386%_))))
                             (if (or (equal? (path-extension
                                              _%current-path111399%_)
                                             '".scm")
                                     (let ((__tmp111468
                                            (equal? _%current-path111399%_
                                                    _%latest-path111401%_)))
                                       (declare (not safe))
                                       (not __tmp111468)))
                                 (let ((_%loaded-path111406%_
                                        (load _%modpath111386%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      __modules
                                      _%modpath111386%_
                                      _%loaded-path111406%_))
                                   _%loaded-path111406%_)
                                 '#!void))
                           (let ()
                             (declare (not safe))
                             (error '"cannot reload builtin module"
                                    _%modpath111386%_))))
                     _%$e111396%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__load-module _%modpath111386%_))))))))))
    (define __find-library-module
      (lambda (_%modpath111317%_)
        (letrec ((_%find-compiled-file111319%_
                  (lambda (_%npath111372%_)
                    (let ((_%basepath111374%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111372%_ '".o"))))
                      (let _%lp111376%_ ((_%current111378%_ '#f)
                                         (_%n111379%_ '1))
                        (let ((_%next111381%_
                               (let ((__tmp111469
                                      (number->string _%n111379%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath111374%_
                                  __tmp111469))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next111381%_))
                              (let ((__tmp111470
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%n111379%_ '1))))
                                (declare (not safe))
                                (_%lp111376%_ _%next111381%_ __tmp111470))
                              _%current111378%_))))))
                 (_%find-source-file111320%_
                  (lambda (_%npath111368%_)
                    (let ((_%spath111370%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111368%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath111370%_))
                          _%spath111370%_
                          '#f)))))
          (let _%lp111322%_ ((_%rest111324%_
                              (let () (declare (not safe)) (load-path))))
            (let* ((_%rest111325111333%_ _%rest111324%_)
                   (_%else111327111341%_ (lambda () '#f))
                   (_%K111329111356%_
                    (lambda (_%rest111344%_ _%dir111345%_)
                      (let* ((_%npath111347%_
                              (path-expand
                               _%modpath111317%_
                               (path-expand _%dir111345%_)))
                             (_%$e111349%_
                              (let ()
                                (declare (not safe))
                                (_%find-compiled-file111319%_
                                 _%npath111347%_))))
                        (if _%$e111349%_
                            (path-normalize _%$e111349%_)
                            (let ((_%$e111352%_
                                   (let ()
                                     (declare (not safe))
                                     (_%find-source-file111320%_
                                      _%npath111347%_))))
                              (if _%$e111352%_
                                  (path-normalize _%$e111352%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (_%lp111322%_ _%rest111344%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest111325111333%_))
                  (let ((_%hd111330111359%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111325111333%_)))
                        (_%tl111331111361%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111325111333%_))))
                    (let* ((_%dir111364%_ _%hd111330111359%_)
                           (_%rest111366%_ _%tl111331111361%_))
                      (declare (not safe))
                      (_%K111329111356%_ _%rest111366%_ _%dir111364%_)))
                  (let () (declare (not safe)) (_%else111327111341%_))))))))))
