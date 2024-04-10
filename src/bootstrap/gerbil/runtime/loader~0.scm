(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1712757954)
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
      (lambda _%paths111874%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths111874%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths111874%_)))
        (let ((__tmp111880
               (lambda (_%p111876%_)
                 (set! __load-path (cons _%p111876%_ __load-path))))
              (__tmp111879 (reverse! _%paths111874%_)))
          (declare (not safe))
          (##for-each __tmp111880 __tmp111879))))
    (define set-load-path!
      (lambda (_%paths111860%_)
        (if (list? _%paths111860%_)
            (let ((_%paths111864%_ _%paths111860%_))
              (__set-load-path! _%paths111864%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths111860%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths111848%_)
        (let ((_%paths111851%_ _%paths111848%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths111851%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths111851%_)))
          (set! __load-path _%paths111851%_))))
    (define load-module
      (lambda (_%modpath111834%_)
        (if (string? _%modpath111834%_)
            (let ((_%modpath111838%_ _%modpath111834%_))
              (__load-module _%modpath111838%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath111834%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath111799%_)
        (let ((_%modpath111802%_ _%modpath111799%_))
          (mutex-lock! __load-mx)
          (let ((_%$e111811%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath111802%_))))
            (if _%$e111811%_
                ((lambda (_%state111814%_)
                   (if (or (eq? 'builtin _%state111814%_)
                           (string? _%state111814%_))
                       (let () (mutex-unlock! __load-mx) _%state111814%_)
                       (if (eq? 'loading _%state111814%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath111802%_))
                           (if (and (pair? _%state111814%_)
                                    (eq? (car _%state111814%_) 'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp111881 (cadr _%state111814%_)))
                                   (declare (not safe))
                                   (raise __tmp111881)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state111814%_)))))))
                 _%$e111811%_)
                (let ((_%$e111823%_ (__find-library-module _%modpath111802%_)))
                  (if _%$e111823%_
                      ((lambda (_%path111826%_)
                         (let ()
                           (declare (not safe))
                           (hash-put! __modules _%modpath111802%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp111883
                                (lambda (_%exn111828%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp111884
                                         (cons 'error
                                               (cons _%exn111828%_ '()))))
                                    (declare (not safe))
                                    (hash-put!
                                     __modules
                                     _%modpath111802%_
                                     __tmp111884))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn111828%_))))
                               (__tmp111882
                                (lambda ()
                                  (let ((_%loaded-path111831%_
                                         (load _%path111826%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       __modules
                                       _%modpath111802%_
                                       _%loaded-path111831%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path111831%_))))
                           (declare (not safe))
                           (__with-catch __tmp111883 __tmp111882)))
                       _%$e111823%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath111802%_))))))))))
    (define reload-module!
      (lambda (_%modpath111785%_)
        (if (string? _%modpath111785%_)
            (let ((_%modpath111789%_ _%modpath111785%_))
              (__reload-module! _%modpath111789%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath111785%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath111756%_)
        (let ((_%modpath111759%_ _%modpath111756%_))
          (mutex-lock! __load-mx)
          (let ((_%$e111769%_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _%modpath111759%_))))
            (if _%$e111769%_
                ((lambda (_%state111772%_)
                   (if (eq? _%state111772%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath111759%_)))
                       (if (eq? 'loading _%state111772%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state111772%_)
                               (let ((_%latest-path111777%_
                                      (__find-library-module
                                       _%modpath111759%_)))
                                 (if (or (equal? (path-extension
                                                  _%state111772%_)
                                                 '".scm")
                                         (not (equal? _%state111772%_
                                                      _%latest-path111777%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (hash-remove!
                                          __modules
                                          _%modpath111759%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath111759%_))
                                     '#!void))
                               (if (and (pair? _%state111772%_)
                                        (eq? (car _%state111772%_) 'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (hash-remove!
                                        __modules
                                        _%modpath111759%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath111759%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state111772%_))))))))
                 _%$e111769%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath111759%_)))))))
    (define __find-library-module
      (lambda (_%modpath111690%_)
        (letrec ((_%find-compiled-file111692%_
                  (lambda (_%npath111745%_)
                    (let ((_%basepath111747%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111745%_ '".o"))))
                      (let _%lp111749%_ ((_%current111751%_ '#f)
                                         (_%n111752%_ '1))
                        (let ((_%next111754%_
                               (let ((__tmp111885
                                      (number->string _%n111752%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath111747%_
                                  __tmp111885))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next111754%_))
                              (_%lp111749%_
                               _%next111754%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n111752%_ '1)))
                              _%current111751%_))))))
                 (_%find-source-file111693%_
                  (lambda (_%npath111741%_)
                    (let ((_%spath111743%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath111741%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath111743%_))
                          _%spath111743%_
                          '#f)))))
          (let _%lp111695%_ ((_%rest111697%_ (load-path)))
            (let* ((_%rest111698111706%_ _%rest111697%_)
                   (_%else111700111714%_ (lambda () '#f))
                   (_%K111702111729%_
                    (lambda (_%rest111717%_ _%dir111718%_)
                      (let* ((_%npath111720%_
                              (path-expand
                               _%modpath111690%_
                               (path-expand _%dir111718%_)))
                             (_%$e111722%_
                              (_%find-compiled-file111692%_ _%npath111720%_)))
                        (if _%$e111722%_
                            (path-normalize _%$e111722%_)
                            (let ((_%$e111725%_
                                   (_%find-source-file111693%_
                                    _%npath111720%_)))
                              (if _%$e111725%_
                                  (path-normalize _%$e111725%_)
                                  (_%lp111695%_ _%rest111717%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest111698111706%_))
                  (let ((_%hd111703111732%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111698111706%_)))
                        (_%tl111704111734%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111698111706%_))))
                    (let* ((_%dir111737%_ _%hd111703111732%_)
                           (_%rest111739%_ _%tl111704111734%_))
                      (_%K111702111729%_ _%rest111739%_ _%dir111737%_)))
                  (_%else111700111714%_)))))))))
