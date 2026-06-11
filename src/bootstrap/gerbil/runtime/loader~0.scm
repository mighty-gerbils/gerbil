(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1781138353)
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
      (lambda _%paths172269%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths172269%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths172269%_)))
        (let ((__tmp172379
               (lambda (_%p172271%_)
                 (set! __load-path (cons _%p172271%_ __load-path))))
              (__tmp172378 (reverse! _%paths172269%_)))
          (declare (not safe))
          (##for-each __tmp172379 __tmp172378))))
    (define __set-load-path!
      (lambda (_%paths172257%_)
        (let ((_%paths172260%_ _%paths172257%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths172260%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths172260%_)))
          (set! __load-path _%paths172260%_))))
    (define set-load-path!
      (lambda (_%paths172243%_)
        (if (list? _%paths172243%_)
            (let ((_%paths172247%_ _%paths172243%_))
              (__set-load-path! _%paths172247%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths172243%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath172013%_)
        (let ((_%modpath172016%_ _%modpath172013%_))
          (mutex-lock! __load-mx)
          (let ((_%$e172051%_
                 (let* ((_%h172025%_ __modules)
                        (_%key172028%_ _%modpath172016%_)
                        (_%h172035%_
                         (let ((_%$obj172032%_ _%h172025%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj172032%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj172032%_)))
                                    '#t)
                               _%$obj172032%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj172032%_)))))
                        (_%h172037%_ _%h172035%_))
                   (declare (not safe))
                   (__hash-get _%h172037%_ _%key172028%_))))
            (if _%$e172051%_
                (if (or (eq? 'builtin _%$e172051%_) (string? _%$e172051%_))
                    (let () (mutex-unlock! __load-mx) _%$e172051%_)
                    (if (eq? 'loading _%$e172051%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath172061%_ _%modpath172016%_)
                                 (_%modpath172066%_ _%modpath172061%_))
                            (__load-module _%modpath172066%_)))
                        (if (and (pair? _%$e172051%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e172051%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp172380 (cadr _%$e172051%_)))
                                (declare (not safe))
                                (raise __tmp172380)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e172051%_))))))
                (let ((_%$e172081%_ (__find-library-module _%modpath172016%_)))
                  (if _%$e172081%_
                      (let ()
                        (let* ((_%h172086%_ __modules)
                               (_%key172089%_ _%modpath172016%_)
                               (_%value172092%_ 'loading)
                               (_%h172099%_
                                (let ((_%$obj172096%_ _%h172086%_))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (##structure? _%$obj172096%_))
                                           (eq? HashTable::t
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-type
                                                   _%$obj172096%_)))
                                           '#t)
                                      _%$obj172096%_
                                      (let ()
                                        (declare (not safe))
                                        (cast HashTable::interface
                                              _%$obj172096%_)))))
                               (_%h172101%_ _%h172099%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h172101%_
                           _%key172089%_
                           _%value172092%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp172382
                               (lambda (_%exn172115%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h172117%_ __modules)
                                        (_%key172120%_ _%modpath172016%_)
                                        (_%value172123%_
                                         (cons 'error
                                               (cons _%exn172115%_ '())))
                                        (_%h172130%_
                                         (let ((_%$obj172127%_ _%h172117%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj172127%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj172127%_)))
                                                    '#t)
                                               _%$obj172127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj172127%_)))))
                                        (_%h172132%_ _%h172130%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h172132%_
                                    _%key172120%_
                                    _%value172123%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn172115%_))))
                              (__tmp172381
                               (lambda ()
                                 (let ((_%loaded-path172146%_
                                        (load _%$e172081%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h172148%_ __modules)
                                          (_%key172151%_ _%modpath172016%_)
                                          (_%value172154%_
                                           _%loaded-path172146%_)
                                          (_%h172161%_
                                           (let ((_%$obj172158%_ _%h172148%_))
                                             (if (and (let ()
                                                        (declare (not safe))
                                                        (##structure?
                                                         _%$obj172158%_))
                                                      (eq? HashTable::t
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-type
                                                              _%$obj172158%_)))
                                                      '#t)
                                                 _%$obj172158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (cast HashTable::interface
                                                         _%$obj172158%_)))))
                                          (_%h172163%_ _%h172161%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h172163%_
                                      _%key172151%_
                                      _%value172154%_))
                                   (if (let* ((_%h172177%_ __load-order)
                                              (_%key172180%_ _%modpath172016%_)
                                              (_%h172187%_
                                               (let ((_%$obj172184%_
                                                      _%h172177%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj172184%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj172184%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj172184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj172184%_)))))
                                              (_%h172189%_ _%h172187%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h172189%_
                                          _%key172180%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h172200%_ __load-order)
                                                (_%key172203%_
                                                 _%modpath172016%_)
                                                (_%value172206%_
                                                 __load-order-next)
                                                (_%h172213%_
                                                 (let ((_%$obj172210%_
                                                        _%h172200%_))
                                                   (if (and (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure?
                                                               _%$obj172210%_))
                                                            (eq? HashTable::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##structure-type _%$obj172210%_)))
                    '#t)
               _%$obj172210%_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _%$obj172210%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%h172215%_ _%h172213%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h172215%_
                                            _%key172203%_
                                            _%value172206%_))
                                         (set! __load-order-next
                                               (let* ((_%x172227%_
                                                       __load-order-next)
                                                      (_%x172232%_
                                                       _%x172227%_))
                                                 (declare (not safe))
                                                 (__1+ _%x172232%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path172146%_))))
                          (declare (not safe))
                          (__with-catch __tmp172382 __tmp172381)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath172016%_))))))))))
    (define load-module
      (lambda (_%modpath171999%_)
        (if (string? _%modpath171999%_)
            (let ((_%modpath172003%_ _%modpath171999%_))
              (__load-module _%modpath172003%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath171999%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath171848%_)
        (let ((_%modpath171851%_ _%modpath171848%_))
          (mutex-lock! __load-mx)
          (let ((_%$e171886%_
                 (let* ((_%h171860%_ __modules)
                        (_%key171863%_ _%modpath171851%_)
                        (_%h171870%_
                         (let ((_%$obj171867%_ _%h171860%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171867%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171867%_)))
                                    '#t)
                               _%$obj171867%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171867%_)))))
                        (_%h171872%_ _%h171870%_))
                   (declare (not safe))
                   (__hash-get _%h171872%_ _%key171863%_))))
            (if _%$e171886%_
                (if (eq? _%$e171886%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath171851%_)))
                    (if (eq? 'loading _%$e171886%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e171886%_)
                            (let ((_%latest-path171894%_
                                   (__find-library-module _%modpath171851%_)))
                              (if (or (equal? (path-extension _%$e171886%_)
                                              '".scm")
                                      (not (equal? _%$e171886%_
                                                   _%latest-path171894%_)))
                                  (begin
                                    (let* ((_%h171899%_ __modules)
                                           (_%key171902%_ _%modpath171851%_)
                                           (_%h171909%_
                                            (let ((_%$obj171906%_ _%h171899%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj171906%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj171906%_)))
                                                       '#t)
                                                  _%$obj171906%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj171906%_)))))
                                           (_%h171911%_ _%h171909%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h171911%_
                                       _%key171902%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath171926%_
                                            _%modpath171851%_)
                                           (_%modpath171931%_
                                            _%modpath171926%_))
                                      (__load-module _%modpath171931%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e171886%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e171886%_))
                                          'error))
                                (let ()
                                  (let* ((_%h171942%_ __modules)
                                         (_%key171945%_ _%modpath171851%_)
                                         (_%h171952%_
                                          (let ((_%$obj171949%_ _%h171942%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj171949%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj171949%_)))
                                                     '#t)
                                                _%$obj171949%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj171949%_)))))
                                         (_%h171954%_ _%h171952%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h171954%_ _%key171945%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath171966%_ _%modpath171851%_)
                                         (_%modpath171971%_ _%modpath171966%_))
                                    (__load-module _%modpath171971%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e171886%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath171983%_ _%modpath171851%_)
                         (_%modpath171988%_ _%modpath171983%_))
                    (__load-module _%modpath171988%_))))))))
    (define reload-module!
      (lambda (_%modpath171834%_)
        (if (string? _%modpath171834%_)
            (let ((_%modpath171838%_ _%modpath171834%_))
              (__reload-module! _%modpath171838%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath171834%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath171768%_)
        (letrec ((_%find-compiled-file171770%_
                  (lambda (_%npath171823%_)
                    (let ((_%basepath171825%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath171823%_ '".o"))))
                      (let _%lp171827%_ ((_%current171829%_ '#f)
                                         (_%n171830%_ '1))
                        (let ((_%next171832%_
                               (let ((__tmp172383
                                      (number->string _%n171830%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath171825%_
                                  __tmp172383))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next171832%_))
                              (_%lp171827%_
                               _%next171832%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n171830%_ '1)))
                              _%current171829%_))))))
                 (_%find-source-file171771%_
                  (lambda (_%npath171819%_)
                    (let ((_%spath171821%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath171819%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath171821%_))
                          _%spath171821%_
                          '#f)))))
          (let _%lp171773%_ ((_%rest171775%_ (load-path)))
            (let* ((_%$%rest171776171784%_ _%rest171775%_)
                   (_%$%else171778171792%_ (lambda () '#f))
                   (_%$%K171780171807%_
                    (lambda (_%rest171795%_ _%dir171796%_)
                      (let* ((_%npath171798%_
                              (path-expand
                               _%modpath171768%_
                               (path-expand _%dir171796%_)))
                             (_%$e171800%_
                              (_%find-compiled-file171770%_ _%npath171798%_)))
                        (if _%$e171800%_
                            (path-normalize _%$e171800%_)
                            (let ((_%$e171803%_
                                   (_%find-source-file171771%_
                                    _%npath171798%_)))
                              (if _%$e171803%_
                                  (path-normalize _%$e171803%_)
                                  (_%lp171773%_ _%rest171795%_))))))))
              (if (pair? _%$%rest171776171784%_)
                  (let ((_%$%hd171781171810%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest171776171784%_)))
                        (_%$%tl171782171812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest171776171784%_))))
                    (let* ((_%dir171815%_ _%$%hd171781171810%_)
                           (_%rest171817%_ _%$%tl171782171812%_))
                      (_%$%K171780171807%_ _%rest171817%_ _%dir171815%_)))
                  (_%$%else171778171792%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result171766%_
                 (let* ((_%h171745%_ __modules)
                        (_%h171752%_
                         (let ((_%$obj171749%_ _%h171745%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171749%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171749%_)))
                                    '#t)
                               _%$obj171749%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171749%_)))))
                        (_%h171754%_ _%h171752%_))
                   (declare (not safe))
                   (__hash->list _%h171754%_))))
            (mutex-unlock! __load-mx)
            _%result171766%_))))
    (define __module-load-order
      (lambda (_%modpath171675%_)
        (let ((_%modpath171678%_ _%modpath171675%_))
          (mutex-lock! __load-mx)
          (let ((_%ord171741%_
                 (if (eq? (let* ((_%h171687%_ __modules)
                                 (_%key171690%_ _%modpath171678%_)
                                 (_%h171697%_
                                  (let ((_%$obj171694%_ _%h171687%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj171694%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj171694%_)))
                                             '#t)
                                        _%$obj171694%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj171694%_)))))
                                 (_%h171699%_ _%h171697%_))
                            (declare (not safe))
                            (__hash-get _%h171699%_ _%key171690%_))
                          'builtin)
                     '0
                     (let ((_%$e171737%_
                            (let* ((_%h171714%_ __load-order)
                                   (_%key171717%_ _%modpath171678%_)
                                   (_%h171724%_
                                    (let ((_%$obj171721%_ _%h171714%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj171721%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj171721%_)))
                                               '#t)
                                          _%$obj171721%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj171721%_)))))
                                   (_%h171726%_ _%h171724%_))
                              (declare (not safe))
                              (__hash-get _%h171726%_ _%key171717%_))))
                       (if _%$e171737%_ _%$e171737%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord171741%_)
                _%ord171741%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath171678%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath171661%_)
        (if (string? _%modpath171661%_)
            (let ((_%modpath171665%_ _%modpath171661%_))
              (__module-load-order _%modpath171665%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath171661%_)
              '#!void))))))
