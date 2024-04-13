(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1713000277)
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
      (lambda _%paths114731%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths114731%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths114731%_)))
        (let ((__tmp114737
               (lambda (_%p114733%_)
                 (set! __load-path (cons _%p114733%_ __load-path))))
              (__tmp114736 (reverse! _%paths114731%_)))
          (declare (not safe))
          (##for-each __tmp114737 __tmp114736))))
    (define set-load-path!
      (lambda (_%paths114717%_)
        (if (list? _%paths114717%_)
            (let ((_%paths114721%_ _%paths114717%_))
              (__set-load-path! _%paths114721%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@25.23-25.28"
               'contract:
               'list?
               'value:
               _%paths114717%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths114705%_)
        (let ((_%paths114708%_ _%paths114705%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths114708%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths114708%_)))
          (set! __load-path _%paths114708%_))))
    (define load-module
      (lambda (_%modpath114691%_)
        (if (string? _%modpath114691%_)
            (let ((_%modpath114695%_ _%modpath114691%_))
              (__load-module _%modpath114695%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@30.20-30.27"
               'contract:
               'string?
               'value:
               _%modpath114691%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath114656%_)
        (let ((_%modpath114659%_ _%modpath114656%_))
          (mutex-lock! __load-mx)
          (let ((_%$e114668%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath114659%_))))
            (if _%$e114668%_
                ((lambda (_%state114671%_)
                   (if (or (eq? 'builtin _%state114671%_)
                           (string? _%state114671%_))
                       (let () (mutex-unlock! __load-mx) _%state114671%_)
                       (if (eq? 'loading _%state114671%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath114659%_))
                           (if (and (pair? _%state114671%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state114671%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp114738 (cadr _%state114671%_)))
                                   (declare (not safe))
                                   (raise __tmp114738)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state114671%_)))))))
                 _%$e114668%_)
                (let ((_%$e114680%_ (__find-library-module _%modpath114659%_)))
                  (if _%$e114680%_
                      ((lambda (_%path114683%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath114659%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp114740
                                (lambda (_%exn114685%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp114741
                                         (cons 'error
                                               (cons _%exn114685%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath114659%_
                                     __tmp114741))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn114685%_))))
                               (__tmp114739
                                (lambda ()
                                  (let ((_%loaded-path114688%_
                                         (load _%path114683%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath114659%_
                                       _%loaded-path114688%_))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path114688%_))))
                           (declare (not safe))
                           (__with-catch __tmp114740 __tmp114739)))
                       _%$e114680%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath114659%_))))))))))
    (define reload-module!
      (lambda (_%modpath114642%_)
        (if (string? _%modpath114642%_)
            (let ((_%modpath114646%_ _%modpath114642%_))
              (__reload-module! _%modpath114646%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@70.23-70.30"
               'contract:
               'string?
               'value:
               _%modpath114642%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath114613%_)
        (let ((_%modpath114616%_ _%modpath114613%_))
          (mutex-lock! __load-mx)
          (let ((_%$e114626%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath114616%_))))
            (if _%$e114626%_
                ((lambda (_%state114629%_)
                   (if (eq? _%state114629%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath114616%_)))
                       (if (eq? 'loading _%state114629%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state114629%_)
                               (let ((_%latest-path114634%_
                                      (__find-library-module
                                       _%modpath114616%_)))
                                 (if (or (equal? (path-extension
                                                  _%state114629%_)
                                                 '".scm")
                                         (not (equal? _%state114629%_
                                                      _%latest-path114634%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath114616%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath114616%_))
                                     '#!void))
                               (if (and (pair? _%state114629%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state114629%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath114616%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath114616%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state114629%_))))))))
                 _%$e114626%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath114616%_)))))))
    (define __find-library-module
      (lambda (_%modpath114547%_)
        (letrec ((_%find-compiled-file114549%_
                  (lambda (_%npath114602%_)
                    (let ((_%basepath114604%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath114602%_ '".o"))))
                      (let _%lp114606%_ ((_%current114608%_ '#f)
                                         (_%n114609%_ '1))
                        (let ((_%next114611%_
                               (let ((__tmp114742
                                      (number->string _%n114609%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath114604%_
                                  __tmp114742))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next114611%_))
                              (_%lp114606%_
                               _%next114611%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n114609%_ '1)))
                              _%current114608%_))))))
                 (_%find-source-file114550%_
                  (lambda (_%npath114598%_)
                    (let ((_%spath114600%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath114598%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath114600%_))
                          _%spath114600%_
                          '#f)))))
          (let _%lp114552%_ ((_%rest114554%_ (load-path)))
            (let* ((_%rest114555114563%_ _%rest114554%_)
                   (_%else114557114571%_ (lambda () '#f))
                   (_%K114559114586%_
                    (lambda (_%rest114574%_ _%dir114575%_)
                      (let* ((_%npath114577%_
                              (path-expand
                               _%modpath114547%_
                               (path-expand _%dir114575%_)))
                             (_%$e114579%_
                              (_%find-compiled-file114549%_ _%npath114577%_)))
                        (if _%$e114579%_
                            (path-normalize _%$e114579%_)
                            (let ((_%$e114582%_
                                   (_%find-source-file114550%_
                                    _%npath114577%_)))
                              (if _%$e114582%_
                                  (path-normalize _%$e114582%_)
                                  (_%lp114552%_ _%rest114574%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest114555114563%_))
                  (let ((_%hd114560114589%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest114555114563%_)))
                        (_%tl114561114591%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest114555114563%_))))
                    (let* ((_%dir114594%_ _%hd114560114589%_)
                           (_%rest114596%_ _%tl114561114591%_))
                      (_%K114559114586%_ _%rest114596%_ _%dir114594%_)))
                  (_%else114557114571%_)))))))))
