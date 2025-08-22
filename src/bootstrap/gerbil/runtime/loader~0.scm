(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1755903075)
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
    (define __load-order
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
    (define __load-order-next '1)
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths119784%_
        (if (let () (declare (not safe)) (__andmap1 string? _%paths119784%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths119784%_)))
        (let ((__tmp119790
               (lambda (_%p119786%_)
                 (set! __load-path (cons _%p119786%_ __load-path))))
              (__tmp119789 (reverse! _%paths119784%_)))
          (declare (not safe))
          (##for-each __tmp119790 __tmp119789))))
    (define set-load-path!
      (lambda (_%paths119770%_)
        (if (list? _%paths119770%_)
            (let ((_%paths119774%_ _%paths119770%_))
              (__set-load-path! _%paths119774%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths119770%_)
              '#!void))))
    (define __set-load-path!
      (lambda (_%paths119758%_)
        (let ((_%paths119761%_ _%paths119758%_))
          (if (let () (declare (not safe)) (__andmap1 string? _%paths119761%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths119761%_)))
          (set! __load-path _%paths119761%_))))
    (define load-module
      (lambda (_%modpath119744%_)
        (if (string? _%modpath119744%_)
            (let ((_%modpath119748%_ _%modpath119744%_))
              (__load-module _%modpath119748%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath119744%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath119709%_)
        (let ((_%modpath119712%_ _%modpath119709%_))
          (mutex-lock! __load-mx)
          (let ((_%$e119721%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath119712%_))))
            (if _%$e119721%_
                ((lambda (_%state119724%_)
                   (if (or (eq? 'builtin _%state119724%_)
                           (string? _%state119724%_))
                       (let () (mutex-unlock! __load-mx) _%state119724%_)
                       (if (eq? 'loading _%state119724%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (__load-module _%modpath119712%_))
                           (if (and (pair? _%state119724%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state119724%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp119791 (cadr _%state119724%_)))
                                   (declare (not safe))
                                   (raise __tmp119791)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state119724%_)))))))
                 _%$e119721%_)
                (let ((_%$e119733%_ (__find-library-module _%modpath119712%_)))
                  (if _%$e119733%_
                      ((lambda (_%path119736%_)
                         (let ()
                           (declare (not safe))
                           (__hash-put! __modules _%modpath119712%_ 'loading))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp119793
                                (lambda (_%exn119738%_)
                                  (mutex-lock! __load-mx)
                                  (let ((__tmp119794
                                         (cons 'error
                                               (cons _%exn119738%_ '()))))
                                    (declare (not safe))
                                    (__hash-put!
                                     __modules
                                     _%modpath119712%_
                                     __tmp119794))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn119738%_))))
                               (__tmp119792
                                (lambda ()
                                  (let ((_%loaded-path119741%_
                                         (load _%path119736%_)))
                                    (mutex-lock! __load-mx)
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       __modules
                                       _%modpath119712%_
                                       _%loaded-path119741%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__hash-get
                                           __load-order
                                           _%modpath119712%_))
                                        '#!void
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (__hash-put!
                                             __load-order
                                             _%modpath119712%_
                                             __load-order-next))
                                          (set! __load-order-next
                                                (+ __load-order-next '1))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path119741%_))))
                           (declare (not safe))
                           (__with-catch __tmp119793 __tmp119792)))
                       _%$e119733%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath119712%_))))))))))
    (define reload-module!
      (lambda (_%modpath119695%_)
        (if (string? _%modpath119695%_)
            (let ((_%modpath119699%_ _%modpath119695%_))
              (__reload-module! _%modpath119699%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath119695%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath119667%_)
        (let ((_%modpath119670%_ _%modpath119667%_))
          (mutex-lock! __load-mx)
          (let ((_%$e119679%_
                 (let ()
                   (declare (not safe))
                   (__hash-get __modules _%modpath119670%_))))
            (if _%$e119679%_
                ((lambda (_%state119682%_)
                   (if (eq? _%state119682%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath119670%_)))
                       (if (eq? 'loading _%state119682%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state119682%_)
                               (let ((_%latest-path119687%_
                                      (__find-library-module
                                       _%modpath119670%_)))
                                 (if (or (equal? (path-extension
                                                  _%state119682%_)
                                                 '".scm")
                                         (not (equal? _%state119682%_
                                                      _%latest-path119687%_)))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (__hash-remove!
                                          __modules
                                          _%modpath119670%_))
                                       (mutex-unlock! __load-mx)
                                       (__load-module _%modpath119670%_))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state119682%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state119682%_))
                                             'error))
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (__hash-remove!
                                        __modules
                                        _%modpath119670%_))
                                     (mutex-unlock! __load-mx)
                                     (__load-module _%modpath119670%_))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state119682%_))))))))
                 _%$e119679%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (__load-module _%modpath119670%_)))))))
    (define __find-library-module
      (lambda (_%modpath119601%_)
        (letrec ((_%find-compiled-file119603%_
                  (lambda (_%npath119656%_)
                    (let ((_%basepath119658%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath119656%_ '".o"))))
                      (let _%lp119660%_ ((_%current119662%_ '#f)
                                         (_%n119663%_ '1))
                        (let ((_%next119665%_
                               (let ((__tmp119795
                                      (number->string _%n119663%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath119658%_
                                  __tmp119795))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next119665%_))
                              (_%lp119660%_
                               _%next119665%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n119663%_ '1)))
                              _%current119662%_))))))
                 (_%find-source-file119604%_
                  (lambda (_%npath119652%_)
                    (let ((_%spath119654%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath119652%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath119654%_))
                          _%spath119654%_
                          '#f)))))
          (let _%lp119606%_ ((_%rest119608%_ (load-path)))
            (let* ((_%rest119609119617%_ _%rest119608%_)
                   (_%else119611119625%_ (lambda () '#f))
                   (_%K119613119640%_
                    (lambda (_%rest119628%_ _%dir119629%_)
                      (let* ((_%npath119631%_
                              (path-expand
                               _%modpath119601%_
                               (path-expand _%dir119629%_)))
                             (_%$e119633%_
                              (_%find-compiled-file119603%_ _%npath119631%_)))
                        (if _%$e119633%_
                            (path-normalize _%$e119633%_)
                            (let ((_%$e119636%_
                                   (_%find-source-file119604%_
                                    _%npath119631%_)))
                              (if _%$e119636%_
                                  (path-normalize _%$e119636%_)
                                  (_%lp119606%_ _%rest119628%_))))))))
              (if (pair? _%rest119609119617%_)
                  (let ((_%hd119614119643%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest119609119617%_)))
                        (_%tl119615119645%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest119609119617%_))))
                    (let* ((_%dir119648%_ _%hd119614119643%_)
                           (_%rest119650%_ _%tl119615119645%_))
                      (_%K119613119640%_ _%rest119650%_ _%dir119648%_)))
                  (_%else119611119625%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result119599%_
                 (let () (declare (not safe)) (__hash->list __modules))))
            (mutex-unlock! __load-mx)
            _%result119599%_))))
    (define module-load-order
      (lambda (_%modpath119583%_)
        (if (string? _%modpath119583%_)
            (let ((_%modpath119587%_ _%modpath119583%_))
              (__module-load-order _%modpath119587%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath119583%_)
              '#!void))))
    (define __module-load-order
      (lambda (_%modpath119563%_)
        (let ((_%modpath119566%_ _%modpath119563%_))
          (mutex-lock! __load-mx)
          (let ((_%ord119581%_
                 (if (eq? (let ()
                            (declare (not safe))
                            (__hash-get __modules _%modpath119566%_))
                          'builtin)
                     '0
                     (let ((_%$e119577%_
                            (let ()
                              (declare (not safe))
                              (__hash-get __load-order _%modpath119566%_))))
                       (if _%$e119577%_ _%$e119577%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord119581%_)
                _%ord119581%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath119566%_))
                  '#!void))))))))
