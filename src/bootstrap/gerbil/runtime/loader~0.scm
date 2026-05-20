(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1779274770)
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
      (lambda _%paths171395%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths171395%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths171395%_)))
        (let ((__tmp171505
               (lambda (_%p171397%_)
                 (set! __load-path (cons _%p171397%_ __load-path))))
              (__tmp171504 (reverse! _%paths171395%_)))
          (declare (not safe))
          (##for-each __tmp171505 __tmp171504))))
    (define __set-load-path!
      (lambda (_%paths171383%_)
        (let ((_%paths171386%_ _%paths171383%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths171386%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths171386%_)))
          (set! __load-path _%paths171386%_))))
    (define set-load-path!
      (lambda (_%paths170427%_)
        (if (list? _%paths170427%_)
            (let ((_%paths170431%_ _%paths170427%_))
              (__set-load-path! _%paths170431%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths170427%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath171153%_)
        (let ((_%modpath171156%_ _%modpath171153%_))
          (mutex-lock! __load-mx)
          (let ((_%$e171191%_
                 (let* ((_%h171165%_ __modules)
                        (_%key171168%_ _%modpath171156%_)
                        (_%h171175%_
                         (let ((_%$obj171172%_ _%h171165%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171172%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171172%_)))
                                    '#t)
                               _%$obj171172%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171172%_)))))
                        (_%h171177%_ _%h171175%_))
                   (declare (not safe))
                   (__hash-get _%h171177%_ _%key171168%_))))
            (if _%$e171191%_
                ((lambda (_%state171194%_)
                   (if (or (eq? 'builtin _%state171194%_)
                           (string? _%state171194%_))
                       (let () (mutex-unlock! __load-mx) _%state171194%_)
                       (if (eq? 'loading _%state171194%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath171201%_ _%modpath171156%_)
                                    (_%modpath171206%_ _%modpath171201%_))
                               (__load-module _%modpath171206%_)))
                           (if (and (pair? _%state171194%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state171194%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp171506 (cadr _%state171194%_)))
                                   (declare (not safe))
                                   (raise __tmp171506)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state171194%_)))))))
                 _%$e171191%_)
                (let ((_%$e171221%_ (__find-library-module _%modpath171156%_)))
                  (if _%$e171221%_
                      ((lambda (_%path171224%_)
                         (let* ((_%h171226%_ __modules)
                                (_%key171229%_ _%modpath171156%_)
                                (_%value171232%_ 'loading)
                                (_%h171239%_
                                 (let ((_%$obj171236%_ _%h171226%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj171236%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj171236%_)))
                                            '#t)
                                       _%$obj171236%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj171236%_)))))
                                (_%h171241%_ _%h171239%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h171241%_
                            _%key171229%_
                            _%value171232%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp171508
                                (lambda (_%exn171255%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h171257%_ __modules)
                                         (_%key171260%_ _%modpath171156%_)
                                         (_%value171263%_
                                          (cons 'error
                                                (cons _%exn171255%_ '())))
                                         (_%h171270%_
                                          (let ((_%$obj171267%_ _%h171257%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj171267%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj171267%_)))
                                                     '#t)
                                                _%$obj171267%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj171267%_)))))
                                         (_%h171272%_ _%h171270%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h171272%_
                                     _%key171260%_
                                     _%value171263%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn171255%_))))
                               (__tmp171507
                                (lambda ()
                                  (let ((_%loaded-path171286%_
                                         (load _%path171224%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h171288%_ __modules)
                                           (_%key171291%_ _%modpath171156%_)
                                           (_%value171294%_
                                            _%loaded-path171286%_)
                                           (_%h171301%_
                                            (let ((_%$obj171298%_ _%h171288%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj171298%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj171298%_)))
                                                       '#t)
                                                  _%$obj171298%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj171298%_)))))
                                           (_%h171303%_ _%h171301%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h171303%_
                                       _%key171291%_
                                       _%value171294%_))
                                    (if (let* ((_%h171317%_ __load-order)
                                               (_%key171320%_
                                                _%modpath171156%_)
                                               (_%h171327%_
                                                (let ((_%$obj171324%_
                                                       _%h171317%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj171324%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj171324%_)))
                   '#t)
              _%$obj171324%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj171324%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h171329%_ _%h171327%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h171329%_
                                           _%key171320%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h171340%_ __load-order)
                                                 (_%key171343%_
                                                  _%modpath171156%_)
                                                 (_%value171346%_
                                                  __load-order-next)
                                                 (_%h171353%_
                                                  (let ((_%$obj171350%_
                                                         _%h171340%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj171350%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj171350%_)))
                     '#t)
                _%$obj171350%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj171350%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h171355%_ _%h171353%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h171355%_
                                             _%key171343%_
                                             _%value171346%_))
                                          (set! __load-order-next
                                                (let* ((_%x171367%_
                                                        __load-order-next)
                                                       (_%x171372%_
                                                        _%x171367%_))
                                                  (declare (not safe))
                                                  (__1+ _%x171372%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path171286%_))))
                           (declare (not safe))
                           (__with-catch __tmp171508 __tmp171507)))
                       _%$e171221%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath171156%_))))))))))
    (define load-module
      (lambda (_%modpath170561%_)
        (if (string? _%modpath170561%_)
            (let ((_%modpath170565%_ _%modpath170561%_))
              (__load-module _%modpath170565%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath170561%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath171002%_)
        (let ((_%modpath171005%_ _%modpath171002%_))
          (mutex-lock! __load-mx)
          (let ((_%$e171040%_
                 (let* ((_%h171014%_ __modules)
                        (_%key171017%_ _%modpath171005%_)
                        (_%h171024%_
                         (let ((_%$obj171021%_ _%h171014%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171021%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171021%_)))
                                    '#t)
                               _%$obj171021%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171021%_)))))
                        (_%h171026%_ _%h171024%_))
                   (declare (not safe))
                   (__hash-get _%h171026%_ _%key171017%_))))
            (if _%$e171040%_
                ((lambda (_%state171043%_)
                   (if (eq? _%state171043%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath171005%_)))
                       (if (eq? 'loading _%state171043%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state171043%_)
                               (let ((_%latest-path171048%_
                                      (__find-library-module
                                       _%modpath171005%_)))
                                 (if (or (equal? (path-extension
                                                  _%state171043%_)
                                                 '".scm")
                                         (not (equal? _%state171043%_
                                                      _%latest-path171048%_)))
                                     (begin
                                       (let* ((_%h171053%_ __modules)
                                              (_%key171056%_ _%modpath171005%_)
                                              (_%h171063%_
                                               (let ((_%$obj171060%_
                                                      _%h171053%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj171060%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj171060%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj171060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj171060%_)))))
                                              (_%h171065%_ _%h171063%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h171065%_
                                          _%key171056%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath171080%_
                                               _%modpath171005%_)
                                              (_%modpath171085%_
                                               _%modpath171080%_))
                                         (__load-module _%modpath171085%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state171043%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state171043%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h171096%_ __modules)
                                            (_%key171099%_ _%modpath171005%_)
                                            (_%h171106%_
                                             (let ((_%$obj171103%_
                                                    _%h171096%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj171103%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj171103%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj171103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj171103%_)))))
                                            (_%h171108%_ _%h171106%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h171108%_
                                        _%key171099%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath171120%_
                                             _%modpath171005%_)
                                            (_%modpath171125%_
                                             _%modpath171120%_))
                                       (__load-module _%modpath171125%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state171043%_))))))))
                 _%$e171040%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath171137%_ _%modpath171005%_)
                         (_%modpath171142%_ _%modpath171137%_))
                    (__load-module _%modpath171142%_))))))))
    (define reload-module!
      (lambda (_%modpath170695%_)
        (if (string? _%modpath170695%_)
            (let ((_%modpath170699%_ _%modpath170695%_))
              (__reload-module! _%modpath170699%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath170695%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath170936%_)
        (letrec ((_%find-compiled-file170938%_
                  (lambda (_%npath170991%_)
                    (let ((_%basepath170993%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170991%_ '".o"))))
                      (let _%lp170995%_ ((_%current170997%_ '#f)
                                         (_%n170998%_ '1))
                        (let ((_%next171000%_
                               (let ((__tmp171509
                                      (number->string _%n170998%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath170993%_
                                  __tmp171509))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next171000%_))
                              (_%lp170995%_
                               _%next171000%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n170998%_ '1)))
                              _%current170997%_))))))
                 (_%find-source-file170939%_
                  (lambda (_%npath170987%_)
                    (let ((_%spath170989%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170987%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath170989%_))
                          _%spath170989%_
                          '#f)))))
          (let _%lp170941%_ ((_%rest170943%_ (load-path)))
            (let* ((_%rest170944170952%_ _%rest170943%_)
                   (_%else170946170960%_ (lambda () '#f))
                   (_%K170948170975%_
                    (lambda (_%rest170963%_ _%dir170964%_)
                      (let* ((_%npath170966%_
                              (path-expand
                               _%modpath170936%_
                               (path-expand _%dir170964%_)))
                             (_%$e170968%_
                              (_%find-compiled-file170938%_ _%npath170966%_)))
                        (if _%$e170968%_
                            (path-normalize _%$e170968%_)
                            (let ((_%$e170971%_
                                   (_%find-source-file170939%_
                                    _%npath170966%_)))
                              (if _%$e170971%_
                                  (path-normalize _%$e170971%_)
                                  (_%lp170941%_ _%rest170963%_))))))))
              (if (pair? _%rest170944170952%_)
                  (let ((_%hd170949170978%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest170944170952%_)))
                        (_%tl170950170980%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest170944170952%_))))
                    (let* ((_%dir170983%_ _%hd170949170978%_)
                           (_%rest170985%_ _%tl170950170980%_))
                      (_%K170948170975%_ _%rest170985%_ _%dir170983%_)))
                  (_%else170946170960%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result170934%_
                 (let* ((_%h170913%_ __modules)
                        (_%h170920%_
                         (let ((_%$obj170917%_ _%h170913%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170917%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170917%_)))
                                    '#t)
                               _%$obj170917%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170917%_)))))
                        (_%h170922%_ _%h170920%_))
                   (declare (not safe))
                   (__hash->list _%h170922%_))))
            (mutex-unlock! __load-mx)
            _%result170934%_))))
    (define __module-load-order
      (lambda (_%modpath170843%_)
        (let ((_%modpath170846%_ _%modpath170843%_))
          (mutex-lock! __load-mx)
          (let ((_%ord170909%_
                 (if (eq? (let* ((_%h170855%_ __modules)
                                 (_%key170858%_ _%modpath170846%_)
                                 (_%h170865%_
                                  (let ((_%$obj170862%_ _%h170855%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj170862%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj170862%_)))
                                             '#t)
                                        _%$obj170862%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj170862%_)))))
                                 (_%h170867%_ _%h170865%_))
                            (declare (not safe))
                            (__hash-get _%h170867%_ _%key170858%_))
                          'builtin)
                     '0
                     (let ((_%$e170905%_
                            (let* ((_%h170882%_ __load-order)
                                   (_%key170885%_ _%modpath170846%_)
                                   (_%h170892%_
                                    (let ((_%$obj170889%_ _%h170882%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj170889%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj170889%_)))
                                               '#t)
                                          _%$obj170889%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj170889%_)))))
                                   (_%h170894%_ _%h170892%_))
                              (declare (not safe))
                              (__hash-get _%h170894%_ _%key170885%_))))
                       (if _%$e170905%_ _%$e170905%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord170909%_)
                _%ord170909%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath170846%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath170829%_)
        (if (string? _%modpath170829%_)
            (let ((_%modpath170833%_ _%modpath170829%_))
              (__module-load-order _%modpath170833%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath170829%_)
              '#!void))))))
