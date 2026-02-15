(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1771178564)
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
      (lambda _%paths170517%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths170517%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths170517%_)))
        (let ((__tmp170627
               (lambda (_%p170519%_)
                 (set! __load-path (cons _%p170519%_ __load-path))))
              (__tmp170626 (reverse! _%paths170517%_)))
          (declare (not safe))
          (##for-each __tmp170627 __tmp170626))))
    (define __set-load-path!
      (lambda (_%paths170505%_)
        (let ((_%paths170508%_ _%paths170505%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths170508%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths170508%_)))
          (set! __load-path _%paths170508%_))))
    (define set-load-path!
      (lambda (_%paths169549%_)
        (if (list? _%paths169549%_)
            (let ((_%paths169553%_ _%paths169549%_))
              (__set-load-path! _%paths169553%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths169549%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath170275%_)
        (let ((_%modpath170278%_ _%modpath170275%_))
          (mutex-lock! __load-mx)
          (let ((_%$e170313%_
                 (let* ((_%h170287%_ __modules)
                        (_%key170290%_ _%modpath170278%_)
                        (_%h170297%_
                         (let ((_%$obj170294%_ _%h170287%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170294%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170294%_)))
                                    '#t)
                               _%$obj170294%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170294%_)))))
                        (_%h170299%_ _%h170297%_))
                   (declare (not safe))
                   (__hash-get _%h170299%_ _%key170290%_))))
            (if _%$e170313%_
                ((lambda (_%state170316%_)
                   (if (or (eq? 'builtin _%state170316%_)
                           (string? _%state170316%_))
                       (let () (mutex-unlock! __load-mx) _%state170316%_)
                       (if (eq? 'loading _%state170316%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath170323%_ _%modpath170278%_)
                                    (_%modpath170328%_ _%modpath170323%_))
                               (__load-module _%modpath170328%_)))
                           (if (and (pair? _%state170316%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state170316%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp170628 (cadr _%state170316%_)))
                                   (declare (not safe))
                                   (raise __tmp170628)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state170316%_)))))))
                 _%$e170313%_)
                (let ((_%$e170343%_ (__find-library-module _%modpath170278%_)))
                  (if _%$e170343%_
                      ((lambda (_%path170346%_)
                         (let* ((_%h170348%_ __modules)
                                (_%key170351%_ _%modpath170278%_)
                                (_%value170354%_ 'loading)
                                (_%h170361%_
                                 (let ((_%$obj170358%_ _%h170348%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj170358%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj170358%_)))
                                            '#t)
                                       _%$obj170358%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj170358%_)))))
                                (_%h170363%_ _%h170361%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h170363%_
                            _%key170351%_
                            _%value170354%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp170630
                                (lambda (_%exn170377%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h170379%_ __modules)
                                         (_%key170382%_ _%modpath170278%_)
                                         (_%value170385%_
                                          (cons 'error
                                                (cons _%exn170377%_ '())))
                                         (_%h170392%_
                                          (let ((_%$obj170389%_ _%h170379%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj170389%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj170389%_)))
                                                     '#t)
                                                _%$obj170389%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj170389%_)))))
                                         (_%h170394%_ _%h170392%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h170394%_
                                     _%key170382%_
                                     _%value170385%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn170377%_))))
                               (__tmp170629
                                (lambda ()
                                  (let ((_%loaded-path170408%_
                                         (load _%path170346%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h170410%_ __modules)
                                           (_%key170413%_ _%modpath170278%_)
                                           (_%value170416%_
                                            _%loaded-path170408%_)
                                           (_%h170423%_
                                            (let ((_%$obj170420%_ _%h170410%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj170420%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj170420%_)))
                                                       '#t)
                                                  _%$obj170420%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj170420%_)))))
                                           (_%h170425%_ _%h170423%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h170425%_
                                       _%key170413%_
                                       _%value170416%_))
                                    (if (let* ((_%h170439%_ __load-order)
                                               (_%key170442%_
                                                _%modpath170278%_)
                                               (_%h170449%_
                                                (let ((_%$obj170446%_
                                                       _%h170439%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj170446%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj170446%_)))
                   '#t)
              _%$obj170446%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj170446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h170451%_ _%h170449%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h170451%_
                                           _%key170442%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h170462%_ __load-order)
                                                 (_%key170465%_
                                                  _%modpath170278%_)
                                                 (_%value170468%_
                                                  __load-order-next)
                                                 (_%h170475%_
                                                  (let ((_%$obj170472%_
                                                         _%h170462%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj170472%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj170472%_)))
                     '#t)
                _%$obj170472%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj170472%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h170477%_ _%h170475%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h170477%_
                                             _%key170465%_
                                             _%value170468%_))
                                          (set! __load-order-next
                                                (let* ((_%x170489%_
                                                        __load-order-next)
                                                       (_%x170494%_
                                                        _%x170489%_))
                                                  (declare (not safe))
                                                  (__1+ _%x170494%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path170408%_))))
                           (declare (not safe))
                           (__with-catch __tmp170630 __tmp170629)))
                       _%$e170343%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath170278%_))))))))))
    (define load-module
      (lambda (_%modpath169683%_)
        (if (string? _%modpath169683%_)
            (let ((_%modpath169687%_ _%modpath169683%_))
              (__load-module _%modpath169687%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath169683%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath170124%_)
        (let ((_%modpath170127%_ _%modpath170124%_))
          (mutex-lock! __load-mx)
          (let ((_%$e170162%_
                 (let* ((_%h170136%_ __modules)
                        (_%key170139%_ _%modpath170127%_)
                        (_%h170146%_
                         (let ((_%$obj170143%_ _%h170136%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170143%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170143%_)))
                                    '#t)
                               _%$obj170143%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170143%_)))))
                        (_%h170148%_ _%h170146%_))
                   (declare (not safe))
                   (__hash-get _%h170148%_ _%key170139%_))))
            (if _%$e170162%_
                ((lambda (_%state170165%_)
                   (if (eq? _%state170165%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath170127%_)))
                       (if (eq? 'loading _%state170165%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state170165%_)
                               (let ((_%latest-path170170%_
                                      (__find-library-module
                                       _%modpath170127%_)))
                                 (if (or (equal? (path-extension
                                                  _%state170165%_)
                                                 '".scm")
                                         (not (equal? _%state170165%_
                                                      _%latest-path170170%_)))
                                     (begin
                                       (let* ((_%h170175%_ __modules)
                                              (_%key170178%_ _%modpath170127%_)
                                              (_%h170185%_
                                               (let ((_%$obj170182%_
                                                      _%h170175%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj170182%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj170182%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj170182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj170182%_)))))
                                              (_%h170187%_ _%h170185%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h170187%_
                                          _%key170178%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath170202%_
                                               _%modpath170127%_)
                                              (_%modpath170207%_
                                               _%modpath170202%_))
                                         (__load-module _%modpath170207%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state170165%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state170165%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h170218%_ __modules)
                                            (_%key170221%_ _%modpath170127%_)
                                            (_%h170228%_
                                             (let ((_%$obj170225%_
                                                    _%h170218%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj170225%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj170225%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj170225%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj170225%_)))))
                                            (_%h170230%_ _%h170228%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h170230%_
                                        _%key170221%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath170242%_
                                             _%modpath170127%_)
                                            (_%modpath170247%_
                                             _%modpath170242%_))
                                       (__load-module _%modpath170247%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state170165%_))))))))
                 _%$e170162%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath170259%_ _%modpath170127%_)
                         (_%modpath170264%_ _%modpath170259%_))
                    (__load-module _%modpath170264%_))))))))
    (define reload-module!
      (lambda (_%modpath169817%_)
        (if (string? _%modpath169817%_)
            (let ((_%modpath169821%_ _%modpath169817%_))
              (__reload-module! _%modpath169821%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath169817%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath170058%_)
        (letrec ((_%find-compiled-file170060%_
                  (lambda (_%npath170113%_)
                    (let ((_%basepath170115%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170113%_ '".o"))))
                      (let _%lp170117%_ ((_%current170119%_ '#f)
                                         (_%n170120%_ '1))
                        (let ((_%next170122%_
                               (let ((__tmp170631
                                      (number->string _%n170120%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath170115%_
                                  __tmp170631))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next170122%_))
                              (_%lp170117%_
                               _%next170122%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n170120%_ '1)))
                              _%current170119%_))))))
                 (_%find-source-file170061%_
                  (lambda (_%npath170109%_)
                    (let ((_%spath170111%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170109%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath170111%_))
                          _%spath170111%_
                          '#f)))))
          (let _%lp170063%_ ((_%rest170065%_ (load-path)))
            (let* ((_%rest170066170074%_ _%rest170065%_)
                   (_%else170068170082%_ (lambda () '#f))
                   (_%K170070170097%_
                    (lambda (_%rest170085%_ _%dir170086%_)
                      (let* ((_%npath170088%_
                              (path-expand
                               _%modpath170058%_
                               (path-expand _%dir170086%_)))
                             (_%$e170090%_
                              (_%find-compiled-file170060%_ _%npath170088%_)))
                        (if _%$e170090%_
                            (path-normalize _%$e170090%_)
                            (let ((_%$e170093%_
                                   (_%find-source-file170061%_
                                    _%npath170088%_)))
                              (if _%$e170093%_
                                  (path-normalize _%$e170093%_)
                                  (_%lp170063%_ _%rest170085%_))))))))
              (if (pair? _%rest170066170074%_)
                  (let ((_%hd170071170100%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest170066170074%_)))
                        (_%tl170072170102%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest170066170074%_))))
                    (let* ((_%dir170105%_ _%hd170071170100%_)
                           (_%rest170107%_ _%tl170072170102%_))
                      (_%K170070170097%_ _%rest170107%_ _%dir170105%_)))
                  (_%else170068170082%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result170056%_
                 (let* ((_%h170035%_ __modules)
                        (_%h170042%_
                         (let ((_%$obj170039%_ _%h170035%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170039%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170039%_)))
                                    '#t)
                               _%$obj170039%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170039%_)))))
                        (_%h170044%_ _%h170042%_))
                   (declare (not safe))
                   (__hash->list _%h170044%_))))
            (mutex-unlock! __load-mx)
            _%result170056%_))))
    (define __module-load-order
      (lambda (_%modpath169965%_)
        (let ((_%modpath169968%_ _%modpath169965%_))
          (mutex-lock! __load-mx)
          (let ((_%ord170031%_
                 (if (eq? (let* ((_%h169977%_ __modules)
                                 (_%key169980%_ _%modpath169968%_)
                                 (_%h169987%_
                                  (let ((_%$obj169984%_ _%h169977%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj169984%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj169984%_)))
                                             '#t)
                                        _%$obj169984%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj169984%_)))))
                                 (_%h169989%_ _%h169987%_))
                            (declare (not safe))
                            (__hash-get _%h169989%_ _%key169980%_))
                          'builtin)
                     '0
                     (let ((_%$e170027%_
                            (let* ((_%h170004%_ __load-order)
                                   (_%key170007%_ _%modpath169968%_)
                                   (_%h170014%_
                                    (let ((_%$obj170011%_ _%h170004%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj170011%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj170011%_)))
                                               '#t)
                                          _%$obj170011%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj170011%_)))))
                                   (_%h170016%_ _%h170014%_))
                              (declare (not safe))
                              (__hash-get _%h170016%_ _%key170007%_))))
                       (if _%$e170027%_ _%$e170027%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord170031%_)
                _%ord170031%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath169968%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath169951%_)
        (if (string? _%modpath169951%_)
            (let ((_%modpath169955%_ _%modpath169951%_))
              (__module-load-order _%modpath169955%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath169951%_)
              '#!void))))))
