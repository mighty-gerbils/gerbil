(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712124234)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths111603%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths111603%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111603%_)))
        (let ((__tmp111608
               (lambda (_%p111605%_)
                 (set! __load-path (cons _%p111605%_ __load-path))))
              (__tmp111607 (reverse! _%paths111603%_)))
          (declare (not safe))
          (##for-each __tmp111608 __tmp111607))))
    (define set-load-path!
      (lambda (_%paths111601%_)
        (if (and (let () (declare (not safe)) (list? _%paths111601%_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths111601%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111601%_)))
        (set! __load-path _%paths111601%_)))
    (define load-module
      (lambda (_%modpath111587%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath111587%_))
              (let ()
                (let ((_%modpath111591%_ _%modpath111587%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__load-module _%modpath111591%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
               'contract:
               'string?
               'value:
               _%modpath111587%_)))))
    (define __load-module
      (lambda (_%modpath111564%_)
        (let ()
          (let ((_%modpath111567%_ _%modpath111564%_))
            (let ()
              (let ((_%$e111576%_
                     (let ()
                       (declare (not safe))
                       (hash-get __modules _%modpath111567%_))))
                (if _%$e111576%_
                    _%$e111576%_
                    (let ((_%$e111579%_
                           (let ()
                             (declare (not safe))
                             (__find-library-module _%modpath111567%_))))
                      (if _%$e111579%_
                          ((lambda (_%path111582%_)
                             (let ((_%loaded-path111584%_
                                    (load _%path111582%_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _%modpath111567%_
                                  _%loaded-path111584%_))
                               _%loaded-path111584%_))
                           _%$e111579%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (error '"module not found"
                                     _%modpath111567%_))))))))))))
    (define reload-module!
      (lambda (_%modpath111550%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%modpath111550%_))
              (let ()
                (let ((_%modpath111554%_ _%modpath111550%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__reload-module! _%modpath111554%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
               'contract:
               'string?
               'value:
               _%modpath111550%_)))))
    (define __reload-module!
      (lambda (_%modpath111524%_)
        (let ()
          (let ((_%modpath111527%_ _%modpath111524%_))
            (let ()
              (let ((_%$e111537%_
                     (let ()
                       (declare (not safe))
                       (hash-get __modules _%modpath111527%_))))
                (if _%$e111537%_
                    ((lambda (_%current-path111540%_)
                       (if (eq? _%current-path111540%_ 'builtin)
                           (let ((_%latest-path111542%_
                                  (let ()
                                    (declare (not safe))
                                    (__find-library-module
                                     _%modpath111527%_))))
                             (if (or (equal? (path-extension
                                              _%current-path111540%_)
                                             '".scm")
                                     (let ((__tmp111609
                                            (equal? _%current-path111540%_
                                                    _%latest-path111542%_)))
                                       (declare (not safe))
                                       (not __tmp111609)))
                                 (let ((_%loaded-path111547%_
                                        (load _%modpath111527%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      __modules
                                      _%modpath111527%_
                                      _%loaded-path111547%_))
                                   _%loaded-path111547%_)
                                 '#!void))
                           (let ()
                             (declare (not safe))
                             (error '"cannot reload builtin module"
                                    _%modpath111527%_))))
                     _%$e111537%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (__load-module _%modpath111527%_))))))))))
    (define __find-library-module
      (lambda (_%modpath111458%_)
        (letrec ((_%find-compiled-file111460%_
                  (lambda (_%npath111513%_)
                    (let ((_%basepath111515%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111513%_ '".o"))))
                      (let _%lp111517%_ ((_%current111519%_ '#f)
                                         (_%n111520%_ '1))
                        (let ((_%next111522%_
                               (let ((__tmp111610
                                      (number->string _%n111520%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath111515%_
                                  __tmp111610))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next111522%_))
                              (let ((__tmp111611
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%n111520%_ '1))))
                                (declare (not safe))
                                (_%lp111517%_ _%next111522%_ __tmp111611))
                              _%current111519%_))))))
                 (_%find-source-file111461%_
                  (lambda (_%npath111509%_)
                    (let ((_%spath111511%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111509%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath111511%_))
                          _%spath111511%_
                          '#f)))))
          (let _%lp111463%_ ((_%rest111465%_
                              (let () (declare (not safe)) (load-path))))
            (let* ((_%rest111466111474%_ _%rest111465%_)
                   (_%else111468111482%_ (lambda () '#f))
                   (_%K111470111497%_
                    (lambda (_%rest111485%_ _%dir111486%_)
                      (let* ((_%npath111488%_
                              (path-expand
                               _%modpath111458%_
                               (path-expand _%dir111486%_)))
                             (_%$e111490%_
                              (let ()
                                (declare (not safe))
                                (_%find-compiled-file111460%_
                                 _%npath111488%_))))
                        (if _%$e111490%_
                            (path-normalize _%$e111490%_)
                            (let ((_%$e111493%_
                                   (let ()
                                     (declare (not safe))
                                     (_%find-source-file111461%_
                                      _%npath111488%_))))
                              (if _%$e111493%_
                                  (path-normalize _%$e111493%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (_%lp111463%_ _%rest111485%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest111466111474%_))
                  (let ((_%hd111471111500%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111466111474%_)))
                        (_%tl111472111502%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111466111474%_))))
                    (let* ((_%dir111505%_ _%hd111471111500%_)
                           (_%rest111507%_ _%tl111472111502%_))
                      (declare (not safe))
                      (_%K111470111497%_ _%rest111507%_ _%dir111505%_)))
                  (let () (declare (not safe)) (_%else111468111482%_))))))))))
