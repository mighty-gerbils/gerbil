(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712573430)
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
      (lambda _%paths111350%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths111350%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111350%_)))
        (let ((__tmp111355
               (lambda (_%p111352%_)
                 (set! __load-path (cons _%p111352%_ __load-path))))
              (__tmp111354 (reverse! _%paths111350%_)))
          (declare (not safe))
          (##for-each __tmp111355 __tmp111354))))
    (define set-load-path!
      (lambda (_%paths111348%_)
        (if (and (list? _%paths111348%_)
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _%paths111348%_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111348%_)))
        (set! __load-path _%paths111348%_)))
    (define load-module
      (lambda (_%modpath111334%_)
        (if (string? _%modpath111334%_)
            (let ((_%modpath111338%_ _%modpath111334%_))
              (__load-module _%modpath111338%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@28.20-28.27"
               'contract:
               'string?
               'value:
               _%modpath111334%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath111311%_)
        (let* ((_%modpath111314%_ _%modpath111311%_)
               (_%$e111323%_
                (let ()
                  (declare (not safe))
                  (hash-get __modules _%modpath111314%_))))
          (if _%$e111323%_
              _%$e111323%_
              (let ((_%$e111326%_ (__find-library-module _%modpath111314%_)))
                (if _%$e111326%_
                    ((lambda (_%path111329%_)
                       (let ((_%loaded-path111331%_ (load _%path111329%_)))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            __modules
                            _%modpath111314%_
                            _%loaded-path111331%_))
                         _%loaded-path111331%_))
                     _%$e111326%_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _%modpath111314%_))))))))
    (define reload-module!
      (lambda (_%modpath111297%_)
        (if (string? _%modpath111297%_)
            (let ((_%modpath111301%_ _%modpath111297%_))
              (__reload-module! _%modpath111301%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@39.23-39.30"
               'contract:
               'string?
               'value:
               _%modpath111297%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath111271%_)
        (let* ((_%modpath111274%_ _%modpath111271%_)
               (_%$e111284%_
                (let ()
                  (declare (not safe))
                  (hash-get __modules _%modpath111274%_))))
          (if _%$e111284%_
              ((lambda (_%current-path111287%_)
                 (if (eq? _%current-path111287%_ 'builtin)
                     (let ((_%latest-path111289%_
                            (__find-library-module _%modpath111274%_)))
                       (if (or (equal? (path-extension _%current-path111287%_)
                                       '".scm")
                               (not (equal? _%current-path111287%_
                                            _%latest-path111289%_)))
                           (let ((_%loaded-path111294%_
                                  (load _%modpath111274%_)))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                __modules
                                _%modpath111274%_
                                _%loaded-path111294%_))
                             _%loaded-path111294%_)
                           '#!void))
                     (let ()
                       (declare (not safe))
                       (error '"cannot reload builtin module"
                              _%modpath111274%_))))
               _%$e111284%_)
              (__load-module _%modpath111274%_)))))
    (define __find-library-module
      (lambda (_%modpath111205%_)
        (letrec ((_%find-compiled-file111207%_
                  (lambda (_%npath111260%_)
                    (let ((_%basepath111262%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111260%_ '".o"))))
                      (let _%lp111264%_ ((_%current111266%_ '#f)
                                         (_%n111267%_ '1))
                        (let ((_%next111269%_
                               (let ((__tmp111356
                                      (number->string _%n111267%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath111262%_
                                  __tmp111356))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next111269%_))
                              (_%lp111264%_
                               _%next111269%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n111267%_ '1)))
                              _%current111266%_))))))
                 (_%find-source-file111208%_
                  (lambda (_%npath111256%_)
                    (let ((_%spath111258%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111256%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath111258%_))
                          _%spath111258%_
                          '#f)))))
          (let _%lp111210%_ ((_%rest111212%_ (load-path)))
            (let* ((_%rest111213111221%_ _%rest111212%_)
                   (_%else111215111229%_ (lambda () '#f))
                   (_%K111217111244%_
                    (lambda (_%rest111232%_ _%dir111233%_)
                      (let* ((_%npath111235%_
                              (path-expand
                               _%modpath111205%_
                               (path-expand _%dir111233%_)))
                             (_%$e111237%_
                              (_%find-compiled-file111207%_ _%npath111235%_)))
                        (if _%$e111237%_
                            (path-normalize _%$e111237%_)
                            (let ((_%$e111240%_
                                   (_%find-source-file111208%_
                                    _%npath111235%_)))
                              (if _%$e111240%_
                                  (path-normalize _%$e111240%_)
                                  (_%lp111210%_ _%rest111232%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest111213111221%_))
                  (let ((_%hd111218111247%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111213111221%_)))
                        (_%tl111219111249%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111213111221%_))))
                    (let* ((_%dir111252%_ _%hd111218111247%_)
                           (_%rest111254%_ _%tl111219111249%_))
                      (_%K111217111244%_ _%rest111254%_ _%dir111252%_)))
                  (_%else111215111229%_)))))))))
