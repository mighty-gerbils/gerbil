(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1779967242)
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
      (lambda _%paths172173%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths172173%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths172173%_)))
        (let ((__tmp172283
               (lambda (_%p172175%_)
                 (set! __load-path (cons _%p172175%_ __load-path))))
              (__tmp172282 (reverse! _%paths172173%_)))
          (declare (not safe))
          (##for-each __tmp172283 __tmp172282))))
    (define __set-load-path!
      (lambda (_%paths172161%_)
        (let ((_%paths172164%_ _%paths172161%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths172164%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths172164%_)))
          (set! __load-path _%paths172164%_))))
    (define set-load-path!
      (lambda (_%paths172147%_)
        (if (list? _%paths172147%_)
            (let ((_%paths172151%_ _%paths172147%_))
              (__set-load-path! _%paths172151%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths172147%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath171917%_)
        (let ((_%modpath171920%_ _%modpath171917%_))
          (mutex-lock! __load-mx)
          (let ((_%$e171955%_
                 (let* ((_%h171929%_ __modules)
                        (_%key171932%_ _%modpath171920%_)
                        (_%h171939%_
                         (let ((_%$obj171936%_ _%h171929%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171936%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171936%_)))
                                    '#t)
                               _%$obj171936%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171936%_)))))
                        (_%h171941%_ _%h171939%_))
                   (declare (not safe))
                   (__hash-get _%h171941%_ _%key171932%_))))
            (if _%$e171955%_
                (if (or (eq? 'builtin _%$e171955%_) (string? _%$e171955%_))
                    (let () (mutex-unlock! __load-mx) _%$e171955%_)
                    (if (eq? 'loading _%$e171955%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath171965%_ _%modpath171920%_)
                                 (_%modpath171970%_ _%modpath171965%_))
                            (__load-module _%modpath171970%_)))
                        (if (and (pair? _%$e171955%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e171955%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp172284 (cadr _%$e171955%_)))
                                (declare (not safe))
                                (raise __tmp172284)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e171955%_))))))
                (let ((_%$e171985%_ (__find-library-module _%modpath171920%_)))
                  (if _%$e171985%_
                      (let ()
                        (let* ((_%h171990%_ __modules)
                               (_%key171993%_ _%modpath171920%_)
                               (_%value171996%_ 'loading)
                               (_%h172003%_
                                (let ((_%$obj172000%_ _%h171990%_))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (##structure? _%$obj172000%_))
                                           (eq? HashTable::t
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-type
                                                   _%$obj172000%_)))
                                           '#t)
                                      _%$obj172000%_
                                      (let ()
                                        (declare (not safe))
                                        (cast HashTable::interface
                                              _%$obj172000%_)))))
                               (_%h172005%_ _%h172003%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h172005%_
                           _%key171993%_
                           _%value171996%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp172286
                               (lambda (_%exn172019%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h172021%_ __modules)
                                        (_%key172024%_ _%modpath171920%_)
                                        (_%value172027%_
                                         (cons 'error
                                               (cons _%exn172019%_ '())))
                                        (_%h172034%_
                                         (let ((_%$obj172031%_ _%h172021%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj172031%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj172031%_)))
                                                    '#t)
                                               _%$obj172031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj172031%_)))))
                                        (_%h172036%_ _%h172034%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h172036%_
                                    _%key172024%_
                                    _%value172027%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn172019%_))))
                              (__tmp172285
                               (lambda ()
                                 (let ((_%loaded-path172050%_
                                        (load _%$e171985%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h172052%_ __modules)
                                          (_%key172055%_ _%modpath171920%_)
                                          (_%value172058%_
                                           _%loaded-path172050%_)
                                          (_%h172065%_
                                           (let ((_%$obj172062%_ _%h172052%_))
                                             (if (and (let ()
                                                        (declare (not safe))
                                                        (##structure?
                                                         _%$obj172062%_))
                                                      (eq? HashTable::t
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-type
                                                              _%$obj172062%_)))
                                                      '#t)
                                                 _%$obj172062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (cast HashTable::interface
                                                         _%$obj172062%_)))))
                                          (_%h172067%_ _%h172065%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h172067%_
                                      _%key172055%_
                                      _%value172058%_))
                                   (if (let* ((_%h172081%_ __load-order)
                                              (_%key172084%_ _%modpath171920%_)
                                              (_%h172091%_
                                               (let ((_%$obj172088%_
                                                      _%h172081%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj172088%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj172088%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj172088%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj172088%_)))))
                                              (_%h172093%_ _%h172091%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h172093%_
                                          _%key172084%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h172104%_ __load-order)
                                                (_%key172107%_
                                                 _%modpath171920%_)
                                                (_%value172110%_
                                                 __load-order-next)
                                                (_%h172117%_
                                                 (let ((_%$obj172114%_
                                                        _%h172104%_))
                                                   (if (and (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure?
                                                               _%$obj172114%_))
                                                            (eq? HashTable::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##structure-type _%$obj172114%_)))
                    '#t)
               _%$obj172114%_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _%$obj172114%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%h172119%_ _%h172117%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h172119%_
                                            _%key172107%_
                                            _%value172110%_))
                                         (set! __load-order-next
                                               (let* ((_%x172131%_
                                                       __load-order-next)
                                                      (_%x172136%_
                                                       _%x172131%_))
                                                 (declare (not safe))
                                                 (__1+ _%x172136%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path172050%_))))
                          (declare (not safe))
                          (__with-catch __tmp172286 __tmp172285)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath171920%_))))))))))
    (define load-module
      (lambda (_%modpath171903%_)
        (if (string? _%modpath171903%_)
            (let ((_%modpath171907%_ _%modpath171903%_))
              (__load-module _%modpath171907%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath171903%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath171752%_)
        (let ((_%modpath171755%_ _%modpath171752%_))
          (mutex-lock! __load-mx)
          (let ((_%$e171790%_
                 (let* ((_%h171764%_ __modules)
                        (_%key171767%_ _%modpath171755%_)
                        (_%h171774%_
                         (let ((_%$obj171771%_ _%h171764%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171771%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171771%_)))
                                    '#t)
                               _%$obj171771%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171771%_)))))
                        (_%h171776%_ _%h171774%_))
                   (declare (not safe))
                   (__hash-get _%h171776%_ _%key171767%_))))
            (if _%$e171790%_
                (if (eq? _%$e171790%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath171755%_)))
                    (if (eq? 'loading _%$e171790%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e171790%_)
                            (let ((_%latest-path171798%_
                                   (__find-library-module _%modpath171755%_)))
                              (if (or (equal? (path-extension _%$e171790%_)
                                              '".scm")
                                      (not (equal? _%$e171790%_
                                                   _%latest-path171798%_)))
                                  (begin
                                    (let* ((_%h171803%_ __modules)
                                           (_%key171806%_ _%modpath171755%_)
                                           (_%h171813%_
                                            (let ((_%$obj171810%_ _%h171803%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj171810%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj171810%_)))
                                                       '#t)
                                                  _%$obj171810%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj171810%_)))))
                                           (_%h171815%_ _%h171813%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h171815%_
                                       _%key171806%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath171830%_
                                            _%modpath171755%_)
                                           (_%modpath171835%_
                                            _%modpath171830%_))
                                      (__load-module _%modpath171835%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e171790%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e171790%_))
                                          'error))
                                (let ()
                                  (let* ((_%h171846%_ __modules)
                                         (_%key171849%_ _%modpath171755%_)
                                         (_%h171856%_
                                          (let ((_%$obj171853%_ _%h171846%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj171853%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj171853%_)))
                                                     '#t)
                                                _%$obj171853%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj171853%_)))))
                                         (_%h171858%_ _%h171856%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h171858%_ _%key171849%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath171870%_ _%modpath171755%_)
                                         (_%modpath171875%_ _%modpath171870%_))
                                    (__load-module _%modpath171875%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e171790%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath171887%_ _%modpath171755%_)
                         (_%modpath171892%_ _%modpath171887%_))
                    (__load-module _%modpath171892%_))))))))
    (define reload-module!
      (lambda (_%modpath171738%_)
        (if (string? _%modpath171738%_)
            (let ((_%modpath171742%_ _%modpath171738%_))
              (__reload-module! _%modpath171742%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath171738%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath171672%_)
        (letrec ((_%find-compiled-file171674%_
                  (lambda (_%npath171727%_)
                    (let ((_%basepath171729%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath171727%_ '".o"))))
                      (let _%lp171731%_ ((_%current171733%_ '#f)
                                         (_%n171734%_ '1))
                        (let ((_%next171736%_
                               (let ((__tmp172287
                                      (number->string _%n171734%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath171729%_
                                  __tmp172287))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next171736%_))
                              (_%lp171731%_
                               _%next171736%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n171734%_ '1)))
                              _%current171733%_))))))
                 (_%find-source-file171675%_
                  (lambda (_%npath171723%_)
                    (let ((_%spath171725%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath171723%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath171725%_))
                          _%spath171725%_
                          '#f)))))
          (let _%lp171677%_ ((_%rest171679%_ (load-path)))
            (let* ((_%rest171680171688%_ _%rest171679%_)
                   (_%else171682171696%_ (lambda () '#f))
                   (_%K171684171711%_
                    (lambda (_%rest171699%_ _%dir171700%_)
                      (let* ((_%npath171702%_
                              (path-expand
                               _%modpath171672%_
                               (path-expand _%dir171700%_)))
                             (_%$e171704%_
                              (_%find-compiled-file171674%_ _%npath171702%_)))
                        (if _%$e171704%_
                            (path-normalize _%$e171704%_)
                            (let ((_%$e171707%_
                                   (_%find-source-file171675%_
                                    _%npath171702%_)))
                              (if _%$e171707%_
                                  (path-normalize _%$e171707%_)
                                  (_%lp171677%_ _%rest171699%_))))))))
              (if (pair? _%rest171680171688%_)
                  (let ((_%hd171685171714%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest171680171688%_)))
                        (_%tl171686171716%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest171680171688%_))))
                    (let* ((_%dir171719%_ _%hd171685171714%_)
                           (_%rest171721%_ _%tl171686171716%_))
                      (_%K171684171711%_ _%rest171721%_ _%dir171719%_)))
                  (_%else171682171696%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result171670%_
                 (let* ((_%h171649%_ __modules)
                        (_%h171656%_
                         (let ((_%$obj171653%_ _%h171649%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171653%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171653%_)))
                                    '#t)
                               _%$obj171653%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171653%_)))))
                        (_%h171658%_ _%h171656%_))
                   (declare (not safe))
                   (__hash->list _%h171658%_))))
            (mutex-unlock! __load-mx)
            _%result171670%_))))
    (define __module-load-order
      (lambda (_%modpath171579%_)
        (let ((_%modpath171582%_ _%modpath171579%_))
          (mutex-lock! __load-mx)
          (let ((_%ord171645%_
                 (if (eq? (let* ((_%h171591%_ __modules)
                                 (_%key171594%_ _%modpath171582%_)
                                 (_%h171601%_
                                  (let ((_%$obj171598%_ _%h171591%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj171598%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj171598%_)))
                                             '#t)
                                        _%$obj171598%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj171598%_)))))
                                 (_%h171603%_ _%h171601%_))
                            (declare (not safe))
                            (__hash-get _%h171603%_ _%key171594%_))
                          'builtin)
                     '0
                     (let ((_%$e171641%_
                            (let* ((_%h171618%_ __load-order)
                                   (_%key171621%_ _%modpath171582%_)
                                   (_%h171628%_
                                    (let ((_%$obj171625%_ _%h171618%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj171625%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj171625%_)))
                                               '#t)
                                          _%$obj171625%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj171625%_)))))
                                   (_%h171630%_ _%h171628%_))
                              (declare (not safe))
                              (__hash-get _%h171630%_ _%key171621%_))))
                       (if _%$e171641%_ _%$e171641%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord171645%_)
                _%ord171645%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath171582%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath171565%_)
        (if (string? _%modpath171565%_)
            (let ((_%modpath171569%_ _%modpath171565%_))
              (__module-load-order _%modpath171569%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath171565%_)
              '#!void))))))
