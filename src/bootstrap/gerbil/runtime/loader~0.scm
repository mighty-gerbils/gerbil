(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1771092628)
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
      (lambda _%paths170037%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths170037%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths170037%_)))
        (let ((__tmp170147
               (lambda (_%p170039%_)
                 (set! __load-path (cons _%p170039%_ __load-path))))
              (__tmp170146 (reverse! _%paths170037%_)))
          (declare (not safe))
          (##for-each __tmp170147 __tmp170146))))
    (define __set-load-path!
      (lambda (_%paths170025%_)
        (let ((_%paths170028%_ _%paths170025%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths170028%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths170028%_)))
          (set! __load-path _%paths170028%_))))
    (define set-load-path!
      (lambda (_%paths169069%_)
        (if (list? _%paths169069%_)
            (let ((_%paths169073%_ _%paths169069%_))
              (__set-load-path! _%paths169073%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths169069%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath169795%_)
        (let ((_%modpath169798%_ _%modpath169795%_))
          (mutex-lock! __load-mx)
          (let ((_%$e169833%_
                 (let* ((_%h169807%_ __modules)
                        (_%key169810%_ _%modpath169798%_)
                        (_%h169817%_
                         (let ((_%$obj169814%_ _%h169807%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169814%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169814%_)))
                                    '#t)
                               _%$obj169814%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169814%_)))))
                        (_%h169819%_ _%h169817%_))
                   (declare (not safe))
                   (__hash-get _%h169819%_ _%key169810%_))))
            (if _%$e169833%_
                ((lambda (_%state169836%_)
                   (if (or (eq? 'builtin _%state169836%_)
                           (string? _%state169836%_))
                       (let () (mutex-unlock! __load-mx) _%state169836%_)
                       (if (eq? 'loading _%state169836%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath169843%_ _%modpath169798%_)
                                    (_%modpath169848%_ _%modpath169843%_))
                               (__load-module _%modpath169848%_)))
                           (if (and (pair? _%state169836%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state169836%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp170148 (cadr _%state169836%_)))
                                   (declare (not safe))
                                   (raise __tmp170148)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state169836%_)))))))
                 _%$e169833%_)
                (let ((_%$e169863%_ (__find-library-module _%modpath169798%_)))
                  (if _%$e169863%_
                      ((lambda (_%path169866%_)
                         (let* ((_%h169868%_ __modules)
                                (_%key169871%_ _%modpath169798%_)
                                (_%value169874%_ 'loading)
                                (_%h169881%_
                                 (let ((_%$obj169878%_ _%h169868%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj169878%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj169878%_)))
                                            '#t)
                                       _%$obj169878%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj169878%_)))))
                                (_%h169883%_ _%h169881%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h169883%_
                            _%key169871%_
                            _%value169874%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp170150
                                (lambda (_%exn169897%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h169899%_ __modules)
                                         (_%key169902%_ _%modpath169798%_)
                                         (_%value169905%_
                                          (cons 'error
                                                (cons _%exn169897%_ '())))
                                         (_%h169912%_
                                          (let ((_%$obj169909%_ _%h169899%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj169909%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj169909%_)))
                                                     '#t)
                                                _%$obj169909%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj169909%_)))))
                                         (_%h169914%_ _%h169912%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h169914%_
                                     _%key169902%_
                                     _%value169905%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn169897%_))))
                               (__tmp170149
                                (lambda ()
                                  (let ((_%loaded-path169928%_
                                         (load _%path169866%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h169930%_ __modules)
                                           (_%key169933%_ _%modpath169798%_)
                                           (_%value169936%_
                                            _%loaded-path169928%_)
                                           (_%h169943%_
                                            (let ((_%$obj169940%_ _%h169930%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj169940%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj169940%_)))
                                                       '#t)
                                                  _%$obj169940%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj169940%_)))))
                                           (_%h169945%_ _%h169943%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h169945%_
                                       _%key169933%_
                                       _%value169936%_))
                                    (if (let* ((_%h169959%_ __load-order)
                                               (_%key169962%_
                                                _%modpath169798%_)
                                               (_%h169969%_
                                                (let ((_%$obj169966%_
                                                       _%h169959%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj169966%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj169966%_)))
                   '#t)
              _%$obj169966%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj169966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h169971%_ _%h169969%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h169971%_
                                           _%key169962%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h169982%_ __load-order)
                                                 (_%key169985%_
                                                  _%modpath169798%_)
                                                 (_%value169988%_
                                                  __load-order-next)
                                                 (_%h169995%_
                                                  (let ((_%$obj169992%_
                                                         _%h169982%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj169992%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj169992%_)))
                     '#t)
                _%$obj169992%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj169992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h169997%_ _%h169995%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h169997%_
                                             _%key169985%_
                                             _%value169988%_))
                                          (set! __load-order-next
                                                (let* ((_%x170009%_
                                                        __load-order-next)
                                                       (_%x170014%_
                                                        _%x170009%_))
                                                  (declare (not safe))
                                                  (__1+ _%x170014%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path169928%_))))
                           (declare (not safe))
                           (__with-catch __tmp170150 __tmp170149)))
                       _%$e169863%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath169798%_))))))))))
    (define load-module
      (lambda (_%modpath169203%_)
        (if (string? _%modpath169203%_)
            (let ((_%modpath169207%_ _%modpath169203%_))
              (__load-module _%modpath169207%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath169203%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath169644%_)
        (let ((_%modpath169647%_ _%modpath169644%_))
          (mutex-lock! __load-mx)
          (let ((_%$e169682%_
                 (let* ((_%h169656%_ __modules)
                        (_%key169659%_ _%modpath169647%_)
                        (_%h169666%_
                         (let ((_%$obj169663%_ _%h169656%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169663%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169663%_)))
                                    '#t)
                               _%$obj169663%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169663%_)))))
                        (_%h169668%_ _%h169666%_))
                   (declare (not safe))
                   (__hash-get _%h169668%_ _%key169659%_))))
            (if _%$e169682%_
                ((lambda (_%state169685%_)
                   (if (eq? _%state169685%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath169647%_)))
                       (if (eq? 'loading _%state169685%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state169685%_)
                               (let ((_%latest-path169690%_
                                      (__find-library-module
                                       _%modpath169647%_)))
                                 (if (or (equal? (path-extension
                                                  _%state169685%_)
                                                 '".scm")
                                         (not (equal? _%state169685%_
                                                      _%latest-path169690%_)))
                                     (begin
                                       (let* ((_%h169695%_ __modules)
                                              (_%key169698%_ _%modpath169647%_)
                                              (_%h169705%_
                                               (let ((_%$obj169702%_
                                                      _%h169695%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj169702%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj169702%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj169702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj169702%_)))))
                                              (_%h169707%_ _%h169705%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h169707%_
                                          _%key169698%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath169722%_
                                               _%modpath169647%_)
                                              (_%modpath169727%_
                                               _%modpath169722%_))
                                         (__load-module _%modpath169727%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state169685%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state169685%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h169738%_ __modules)
                                            (_%key169741%_ _%modpath169647%_)
                                            (_%h169748%_
                                             (let ((_%$obj169745%_
                                                    _%h169738%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj169745%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj169745%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj169745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj169745%_)))))
                                            (_%h169750%_ _%h169748%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h169750%_
                                        _%key169741%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath169762%_
                                             _%modpath169647%_)
                                            (_%modpath169767%_
                                             _%modpath169762%_))
                                       (__load-module _%modpath169767%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state169685%_))))))))
                 _%$e169682%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath169779%_ _%modpath169647%_)
                         (_%modpath169784%_ _%modpath169779%_))
                    (__load-module _%modpath169784%_))))))))
    (define reload-module!
      (lambda (_%modpath169337%_)
        (if (string? _%modpath169337%_)
            (let ((_%modpath169341%_ _%modpath169337%_))
              (__reload-module! _%modpath169341%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath169337%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath169578%_)
        (letrec ((_%find-compiled-file169580%_
                  (lambda (_%npath169633%_)
                    (let ((_%basepath169635%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath169633%_ '".o"))))
                      (let _%lp169637%_ ((_%current169639%_ '#f)
                                         (_%n169640%_ '1))
                        (let ((_%next169642%_
                               (let ((__tmp170151
                                      (number->string _%n169640%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath169635%_
                                  __tmp170151))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next169642%_))
                              (_%lp169637%_
                               _%next169642%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n169640%_ '1)))
                              _%current169639%_))))))
                 (_%find-source-file169581%_
                  (lambda (_%npath169629%_)
                    (let ((_%spath169631%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath169629%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath169631%_))
                          _%spath169631%_
                          '#f)))))
          (let _%lp169583%_ ((_%rest169585%_ (load-path)))
            (let* ((_%rest169586169594%_ _%rest169585%_)
                   (_%else169588169602%_ (lambda () '#f))
                   (_%K169590169617%_
                    (lambda (_%rest169605%_ _%dir169606%_)
                      (let* ((_%npath169608%_
                              (path-expand
                               _%modpath169578%_
                               (path-expand _%dir169606%_)))
                             (_%$e169610%_
                              (_%find-compiled-file169580%_ _%npath169608%_)))
                        (if _%$e169610%_
                            (path-normalize _%$e169610%_)
                            (let ((_%$e169613%_
                                   (_%find-source-file169581%_
                                    _%npath169608%_)))
                              (if _%$e169613%_
                                  (path-normalize _%$e169613%_)
                                  (_%lp169583%_ _%rest169605%_))))))))
              (if (pair? _%rest169586169594%_)
                  (let ((_%hd169591169620%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest169586169594%_)))
                        (_%tl169592169622%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest169586169594%_))))
                    (let* ((_%dir169625%_ _%hd169591169620%_)
                           (_%rest169627%_ _%tl169592169622%_))
                      (_%K169590169617%_ _%rest169627%_ _%dir169625%_)))
                  (_%else169588169602%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result169576%_
                 (let* ((_%h169555%_ __modules)
                        (_%h169562%_
                         (let ((_%$obj169559%_ _%h169555%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169559%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169559%_)))
                                    '#t)
                               _%$obj169559%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169559%_)))))
                        (_%h169564%_ _%h169562%_))
                   (declare (not safe))
                   (__hash->list _%h169564%_))))
            (mutex-unlock! __load-mx)
            _%result169576%_))))
    (define __module-load-order
      (lambda (_%modpath169485%_)
        (let ((_%modpath169488%_ _%modpath169485%_))
          (mutex-lock! __load-mx)
          (let ((_%ord169551%_
                 (if (eq? (let* ((_%h169497%_ __modules)
                                 (_%key169500%_ _%modpath169488%_)
                                 (_%h169507%_
                                  (let ((_%$obj169504%_ _%h169497%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj169504%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj169504%_)))
                                             '#t)
                                        _%$obj169504%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj169504%_)))))
                                 (_%h169509%_ _%h169507%_))
                            (declare (not safe))
                            (__hash-get _%h169509%_ _%key169500%_))
                          'builtin)
                     '0
                     (let ((_%$e169547%_
                            (let* ((_%h169524%_ __load-order)
                                   (_%key169527%_ _%modpath169488%_)
                                   (_%h169534%_
                                    (let ((_%$obj169531%_ _%h169524%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj169531%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj169531%_)))
                                               '#t)
                                          _%$obj169531%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj169531%_)))))
                                   (_%h169536%_ _%h169534%_))
                              (declare (not safe))
                              (__hash-get _%h169536%_ _%key169527%_))))
                       (if _%$e169547%_ _%$e169547%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord169551%_)
                _%ord169551%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath169488%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath169471%_)
        (if (string? _%modpath169471%_)
            (let ((_%modpath169475%_ _%modpath169471%_))
              (__module-load-order _%modpath169475%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath169471%_)
              '#!void))))))
