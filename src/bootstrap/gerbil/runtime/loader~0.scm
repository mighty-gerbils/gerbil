(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712702630)
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
    (define __load-mx (make-mutex 'loader))
    (define __load-cv (make-condition-variable 'loader))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths111389%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths111389%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111389%_)))
        (let ((__tmp111395
               (lambda (_%p111391%_)
                 (set! __load-path (cons _%p111391%_ __load-path))))
              (__tmp111394 (reverse! _%paths111389%_)))
          (declare (not safe))
          (##for-each __tmp111395 __tmp111394))))
    (define set-load-path!
      (lambda (_%paths111375%_)
        (if (list? _%paths111375%_)
            (let ((_%paths111379%_ _%paths111375%_))
              (__set-load-path! _%paths111379%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths111375%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths111363%_)
        (let ((_%paths111366%_ _%paths111363%_))
          (if (and '#t
                   (let ()
                     (declare (not safe))
                     (__andmap1 string? _%paths111366%_)))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths111366%_)))
          (set! __load-path _%paths111366%_))))
    (define load-module
      (lambda (_%modpath111349%_)
        (if (string? _%modpath111349%_)
            (let ((_%modpath111353%_ _%modpath111349%_))
              (__load-module _%modpath111353%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath111349%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath111314%_)
        (let ((_%modpath111317%_ _%modpath111314%_))
          (mutex-lock! __load-mx)
          (let ((_%$e111326%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath111317%_))))
            (if _%$e111326%_
                ((lambda (_%state111329%_)
                   (if (or (eq? 'builtin _%state111329%_)
                           (string? _%state111329%_))
                       (let () (mutex-unlock! __load-mx) _%state111329%_)
                       (if (eq? 'loading _%state111329%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath111317%_))
                           (if (and (pair? _%state111329%_)
                                    (eq? (car _%state111329%_) 'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp111396 (cadr _%state111329%_)))
                                   (declare (not safe))
                                   (raise __tmp111396)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state111329%_)))))))
                 _%$e111326%_)
                (let ((_%$e111338%_ (__find-library-module _%modpath111317%_)))
                  (if _%$e111338%_
                      ((lambda (_%path111341%_)
                         (let ()
                           (declare (not safe))
                           (hash-put! __modules _%modpath111317%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp111398
                                (lambda (_%exn111343%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp111399
                                         (cons 'error
                                               (cons _%exn111343%_ '()))))
                                    (declare (not safe))
                                    (hash-put!
                                     __modules
                                     _%modpath111317%_
                                     __tmp111399))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn111343%_))))
                               (__tmp111397
                                (lambda ()
                                  (let ((_%loaded-path111346%_
                                         (load _%path111341%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       __modules
                                       _%modpath111317%_
                                       _%loaded-path111346%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path111346%_))))
                           (declare (not safe))
                           (__with-catch __tmp111398 __tmp111397)))
                       _%$e111338%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath111317%_))))))))))
    (define reload-module!
      (lambda (_%modpath111300%_)
        (if (string? _%modpath111300%_)
            (let ((_%modpath111304%_ _%modpath111300%_))
              (__reload-module! _%modpath111304%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath111300%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath111271%_)
        (let ((_%modpath111274%_ _%modpath111271%_))
          (mutex-lock! __load-mx)
          (let ((_%$e111284%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath111274%_))))
            (if _%$e111284%_
                ((lambda (_%state111287%_)
                   (if (eq? _%state111287%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath111274%_)))
                       (if (eq? 'loading _%state111287%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state111287%_)
                               (let ((_%latest-path111292%_
                                      (__find-library-module
                                       _%modpath111274%_)))
                                 (if (or (equal? (path-extension
                                                  _%state111287%_)
                                                 '".scm")
                                         (not (equal? _%state111287%_
                                                      _%latest-path111292%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (hash-remove!
                                          __modules
                                          _%modpath111274%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath111274%_))
                                     '#!void))
                               (if (and (pair? _%state111287%_)
                                        (eq? (car _%state111287%_) 'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (hash-remove!
                                        __modules
                                        _%modpath111274%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath111274%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state111287%_))))))))
                 _%$e111284%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath111274%_)))))))
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
                               (let ((__tmp111400
                                      (number->string _%n111267%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath111262%_
                                  __tmp111400))))
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
