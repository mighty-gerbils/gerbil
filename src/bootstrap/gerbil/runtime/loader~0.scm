(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1771104506)
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
      (lambda _%paths170568%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths170568%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths170568%_)))
        (let ((__tmp170678
               (lambda (_%p170570%_)
                 (set! __load-path (cons _%p170570%_ __load-path))))
              (__tmp170677 (reverse! _%paths170568%_)))
          (declare (not safe))
          (##for-each __tmp170678 __tmp170677))))
    (define __set-load-path!
      (lambda (_%paths170556%_)
        (let ((_%paths170559%_ _%paths170556%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths170559%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths170559%_)))
          (set! __load-path _%paths170559%_))))
    (define set-load-path!
      (lambda (_%paths169600%_)
        (if (list? _%paths169600%_)
            (let ((_%paths169604%_ _%paths169600%_))
              (__set-load-path! _%paths169604%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths169600%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath170326%_)
        (let ((_%modpath170329%_ _%modpath170326%_))
          (mutex-lock! __load-mx)
          (let ((_%$e170364%_
                 (let* ((_%h170338%_ __modules)
                        (_%key170341%_ _%modpath170329%_)
                        (_%h170348%_
                         (let ((_%$obj170345%_ _%h170338%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170345%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170345%_)))
                                    '#t)
                               _%$obj170345%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170345%_)))))
                        (_%h170350%_ _%h170348%_))
                   (declare (not safe))
                   (__hash-get _%h170350%_ _%key170341%_))))
            (if _%$e170364%_
                ((lambda (_%state170367%_)
                   (if (or (eq? 'builtin _%state170367%_)
                           (string? _%state170367%_))
                       (let () (mutex-unlock! __load-mx) _%state170367%_)
                       (if (eq? 'loading _%state170367%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath170374%_ _%modpath170329%_)
                                    (_%modpath170379%_ _%modpath170374%_))
                               (__load-module _%modpath170379%_)))
                           (if (and (pair? _%state170367%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state170367%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp170679 (cadr _%state170367%_)))
                                   (declare (not safe))
                                   (raise __tmp170679)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state170367%_)))))))
                 _%$e170364%_)
                (let ((_%$e170394%_ (__find-library-module _%modpath170329%_)))
                  (if _%$e170394%_
                      ((lambda (_%path170397%_)
                         (let* ((_%h170399%_ __modules)
                                (_%key170402%_ _%modpath170329%_)
                                (_%value170405%_ 'loading)
                                (_%h170412%_
                                 (let ((_%$obj170409%_ _%h170399%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj170409%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj170409%_)))
                                            '#t)
                                       _%$obj170409%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj170409%_)))))
                                (_%h170414%_ _%h170412%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h170414%_
                            _%key170402%_
                            _%value170405%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp170681
                                (lambda (_%exn170428%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h170430%_ __modules)
                                         (_%key170433%_ _%modpath170329%_)
                                         (_%value170436%_
                                          (cons 'error
                                                (cons _%exn170428%_ '())))
                                         (_%h170443%_
                                          (let ((_%$obj170440%_ _%h170430%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj170440%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj170440%_)))
                                                     '#t)
                                                _%$obj170440%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj170440%_)))))
                                         (_%h170445%_ _%h170443%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h170445%_
                                     _%key170433%_
                                     _%value170436%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn170428%_))))
                               (__tmp170680
                                (lambda ()
                                  (let ((_%loaded-path170459%_
                                         (load _%path170397%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h170461%_ __modules)
                                           (_%key170464%_ _%modpath170329%_)
                                           (_%value170467%_
                                            _%loaded-path170459%_)
                                           (_%h170474%_
                                            (let ((_%$obj170471%_ _%h170461%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj170471%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj170471%_)))
                                                       '#t)
                                                  _%$obj170471%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj170471%_)))))
                                           (_%h170476%_ _%h170474%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h170476%_
                                       _%key170464%_
                                       _%value170467%_))
                                    (if (let* ((_%h170490%_ __load-order)
                                               (_%key170493%_
                                                _%modpath170329%_)
                                               (_%h170500%_
                                                (let ((_%$obj170497%_
                                                       _%h170490%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj170497%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj170497%_)))
                   '#t)
              _%$obj170497%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj170497%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h170502%_ _%h170500%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h170502%_
                                           _%key170493%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h170513%_ __load-order)
                                                 (_%key170516%_
                                                  _%modpath170329%_)
                                                 (_%value170519%_
                                                  __load-order-next)
                                                 (_%h170526%_
                                                  (let ((_%$obj170523%_
                                                         _%h170513%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj170523%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj170523%_)))
                     '#t)
                _%$obj170523%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj170523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h170528%_ _%h170526%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h170528%_
                                             _%key170516%_
                                             _%value170519%_))
                                          (set! __load-order-next
                                                (let* ((_%x170540%_
                                                        __load-order-next)
                                                       (_%x170545%_
                                                        _%x170540%_))
                                                  (declare (not safe))
                                                  (__1+ _%x170545%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path170459%_))))
                           (declare (not safe))
                           (__with-catch __tmp170681 __tmp170680)))
                       _%$e170394%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath170329%_))))))))))
    (define load-module
      (lambda (_%modpath169734%_)
        (if (string? _%modpath169734%_)
            (let ((_%modpath169738%_ _%modpath169734%_))
              (__load-module _%modpath169738%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath169734%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath170175%_)
        (let ((_%modpath170178%_ _%modpath170175%_))
          (mutex-lock! __load-mx)
          (let ((_%$e170213%_
                 (let* ((_%h170187%_ __modules)
                        (_%key170190%_ _%modpath170178%_)
                        (_%h170197%_
                         (let ((_%$obj170194%_ _%h170187%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170194%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170194%_)))
                                    '#t)
                               _%$obj170194%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170194%_)))))
                        (_%h170199%_ _%h170197%_))
                   (declare (not safe))
                   (__hash-get _%h170199%_ _%key170190%_))))
            (if _%$e170213%_
                ((lambda (_%state170216%_)
                   (if (eq? _%state170216%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath170178%_)))
                       (if (eq? 'loading _%state170216%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state170216%_)
                               (let ((_%latest-path170221%_
                                      (__find-library-module
                                       _%modpath170178%_)))
                                 (if (or (equal? (path-extension
                                                  _%state170216%_)
                                                 '".scm")
                                         (not (equal? _%state170216%_
                                                      _%latest-path170221%_)))
                                     (begin
                                       (let* ((_%h170226%_ __modules)
                                              (_%key170229%_ _%modpath170178%_)
                                              (_%h170236%_
                                               (let ((_%$obj170233%_
                                                      _%h170226%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj170233%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj170233%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj170233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj170233%_)))))
                                              (_%h170238%_ _%h170236%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h170238%_
                                          _%key170229%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath170253%_
                                               _%modpath170178%_)
                                              (_%modpath170258%_
                                               _%modpath170253%_))
                                         (__load-module _%modpath170258%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state170216%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state170216%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h170269%_ __modules)
                                            (_%key170272%_ _%modpath170178%_)
                                            (_%h170279%_
                                             (let ((_%$obj170276%_
                                                    _%h170269%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj170276%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj170276%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj170276%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj170276%_)))))
                                            (_%h170281%_ _%h170279%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h170281%_
                                        _%key170272%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath170293%_
                                             _%modpath170178%_)
                                            (_%modpath170298%_
                                             _%modpath170293%_))
                                       (__load-module _%modpath170298%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state170216%_))))))))
                 _%$e170213%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath170310%_ _%modpath170178%_)
                         (_%modpath170315%_ _%modpath170310%_))
                    (__load-module _%modpath170315%_))))))))
    (define reload-module!
      (lambda (_%modpath169868%_)
        (if (string? _%modpath169868%_)
            (let ((_%modpath169872%_ _%modpath169868%_))
              (__reload-module! _%modpath169872%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath169868%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath170109%_)
        (letrec ((_%find-compiled-file170111%_
                  (lambda (_%npath170164%_)
                    (let ((_%basepath170166%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170164%_ '".o"))))
                      (let _%lp170168%_ ((_%current170170%_ '#f)
                                         (_%n170171%_ '1))
                        (let ((_%next170173%_
                               (let ((__tmp170682
                                      (number->string _%n170171%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath170166%_
                                  __tmp170682))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next170173%_))
                              (_%lp170168%_
                               _%next170173%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n170171%_ '1)))
                              _%current170170%_))))))
                 (_%find-source-file170112%_
                  (lambda (_%npath170160%_)
                    (let ((_%spath170162%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170160%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath170162%_))
                          _%spath170162%_
                          '#f)))))
          (let _%lp170114%_ ((_%rest170116%_ (load-path)))
            (let* ((_%rest170117170125%_ _%rest170116%_)
                   (_%else170119170133%_ (lambda () '#f))
                   (_%K170121170148%_
                    (lambda (_%rest170136%_ _%dir170137%_)
                      (let* ((_%npath170139%_
                              (path-expand
                               _%modpath170109%_
                               (path-expand _%dir170137%_)))
                             (_%$e170141%_
                              (_%find-compiled-file170111%_ _%npath170139%_)))
                        (if _%$e170141%_
                            (path-normalize _%$e170141%_)
                            (let ((_%$e170144%_
                                   (_%find-source-file170112%_
                                    _%npath170139%_)))
                              (if _%$e170144%_
                                  (path-normalize _%$e170144%_)
                                  (_%lp170114%_ _%rest170136%_))))))))
              (if (pair? _%rest170117170125%_)
                  (let ((_%hd170122170151%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest170117170125%_)))
                        (_%tl170123170153%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest170117170125%_))))
                    (let* ((_%dir170156%_ _%hd170122170151%_)
                           (_%rest170158%_ _%tl170123170153%_))
                      (_%K170121170148%_ _%rest170158%_ _%dir170156%_)))
                  (_%else170119170133%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result170107%_
                 (let* ((_%h170086%_ __modules)
                        (_%h170093%_
                         (let ((_%$obj170090%_ _%h170086%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170090%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170090%_)))
                                    '#t)
                               _%$obj170090%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170090%_)))))
                        (_%h170095%_ _%h170093%_))
                   (declare (not safe))
                   (__hash->list _%h170095%_))))
            (mutex-unlock! __load-mx)
            _%result170107%_))))
    (define __module-load-order
      (lambda (_%modpath170016%_)
        (let ((_%modpath170019%_ _%modpath170016%_))
          (mutex-lock! __load-mx)
          (let ((_%ord170082%_
                 (if (eq? (let* ((_%h170028%_ __modules)
                                 (_%key170031%_ _%modpath170019%_)
                                 (_%h170038%_
                                  (let ((_%$obj170035%_ _%h170028%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj170035%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj170035%_)))
                                             '#t)
                                        _%$obj170035%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj170035%_)))))
                                 (_%h170040%_ _%h170038%_))
                            (declare (not safe))
                            (__hash-get _%h170040%_ _%key170031%_))
                          'builtin)
                     '0
                     (let ((_%$e170078%_
                            (let* ((_%h170055%_ __load-order)
                                   (_%key170058%_ _%modpath170019%_)
                                   (_%h170065%_
                                    (let ((_%$obj170062%_ _%h170055%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj170062%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj170062%_)))
                                               '#t)
                                          _%$obj170062%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj170062%_)))))
                                   (_%h170067%_ _%h170065%_))
                              (declare (not safe))
                              (__hash-get _%h170067%_ _%key170058%_))))
                       (if _%$e170078%_ _%$e170078%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord170082%_)
                _%ord170082%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath170019%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath170002%_)
        (if (string? _%modpath170002%_)
            (let ((_%modpath170006%_ _%modpath170002%_))
              (__module-load-order _%modpath170006%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath170002%_)
              '#!void))))))
