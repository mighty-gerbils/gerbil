(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1773012985)
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
      (lambda _%paths171116%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths171116%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths171116%_)))
        (let ((__tmp171226
               (lambda (_%p171118%_)
                 (set! __load-path (cons _%p171118%_ __load-path))))
              (__tmp171225 (reverse! _%paths171116%_)))
          (declare (not safe))
          (##for-each __tmp171226 __tmp171225))))
    (define __set-load-path!
      (lambda (_%paths171104%_)
        (let ((_%paths171107%_ _%paths171104%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths171107%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths171107%_)))
          (set! __load-path _%paths171107%_))))
    (define set-load-path!
      (lambda (_%paths170148%_)
        (if (list? _%paths170148%_)
            (let ((_%paths170152%_ _%paths170148%_))
              (__set-load-path! _%paths170152%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths170148%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath170874%_)
        (let ((_%modpath170877%_ _%modpath170874%_))
          (mutex-lock! __load-mx)
          (let ((_%$e170912%_
                 (let* ((_%h170886%_ __modules)
                        (_%key170889%_ _%modpath170877%_)
                        (_%h170896%_
                         (let ((_%$obj170893%_ _%h170886%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170893%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170893%_)))
                                    '#t)
                               _%$obj170893%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170893%_)))))
                        (_%h170898%_ _%h170896%_))
                   (declare (not safe))
                   (__hash-get _%h170898%_ _%key170889%_))))
            (if _%$e170912%_
                ((lambda (_%state170915%_)
                   (if (or (eq? 'builtin _%state170915%_)
                           (string? _%state170915%_))
                       (let () (mutex-unlock! __load-mx) _%state170915%_)
                       (if (eq? 'loading _%state170915%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath170922%_ _%modpath170877%_)
                                    (_%modpath170927%_ _%modpath170922%_))
                               (__load-module _%modpath170927%_)))
                           (if (and (pair? _%state170915%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state170915%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp171227 (cadr _%state170915%_)))
                                   (declare (not safe))
                                   (raise __tmp171227)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state170915%_)))))))
                 _%$e170912%_)
                (let ((_%$e170942%_ (__find-library-module _%modpath170877%_)))
                  (if _%$e170942%_
                      ((lambda (_%path170945%_)
                         (let* ((_%h170947%_ __modules)
                                (_%key170950%_ _%modpath170877%_)
                                (_%value170953%_ 'loading)
                                (_%h170960%_
                                 (let ((_%$obj170957%_ _%h170947%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj170957%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj170957%_)))
                                            '#t)
                                       _%$obj170957%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj170957%_)))))
                                (_%h170962%_ _%h170960%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h170962%_
                            _%key170950%_
                            _%value170953%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp171229
                                (lambda (_%exn170976%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h170978%_ __modules)
                                         (_%key170981%_ _%modpath170877%_)
                                         (_%value170984%_
                                          (cons 'error
                                                (cons _%exn170976%_ '())))
                                         (_%h170991%_
                                          (let ((_%$obj170988%_ _%h170978%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj170988%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj170988%_)))
                                                     '#t)
                                                _%$obj170988%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj170988%_)))))
                                         (_%h170993%_ _%h170991%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h170993%_
                                     _%key170981%_
                                     _%value170984%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn170976%_))))
                               (__tmp171228
                                (lambda ()
                                  (let ((_%loaded-path171007%_
                                         (load _%path170945%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h171009%_ __modules)
                                           (_%key171012%_ _%modpath170877%_)
                                           (_%value171015%_
                                            _%loaded-path171007%_)
                                           (_%h171022%_
                                            (let ((_%$obj171019%_ _%h171009%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj171019%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj171019%_)))
                                                       '#t)
                                                  _%$obj171019%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj171019%_)))))
                                           (_%h171024%_ _%h171022%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h171024%_
                                       _%key171012%_
                                       _%value171015%_))
                                    (if (let* ((_%h171038%_ __load-order)
                                               (_%key171041%_
                                                _%modpath170877%_)
                                               (_%h171048%_
                                                (let ((_%$obj171045%_
                                                       _%h171038%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj171045%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj171045%_)))
                   '#t)
              _%$obj171045%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj171045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h171050%_ _%h171048%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h171050%_
                                           _%key171041%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h171061%_ __load-order)
                                                 (_%key171064%_
                                                  _%modpath170877%_)
                                                 (_%value171067%_
                                                  __load-order-next)
                                                 (_%h171074%_
                                                  (let ((_%$obj171071%_
                                                         _%h171061%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj171071%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj171071%_)))
                     '#t)
                _%$obj171071%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj171071%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h171076%_ _%h171074%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h171076%_
                                             _%key171064%_
                                             _%value171067%_))
                                          (set! __load-order-next
                                                (let* ((_%x171088%_
                                                        __load-order-next)
                                                       (_%x171093%_
                                                        _%x171088%_))
                                                  (declare (not safe))
                                                  (__1+ _%x171093%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path171007%_))))
                           (declare (not safe))
                           (__with-catch __tmp171229 __tmp171228)))
                       _%$e170942%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath170877%_))))))))))
    (define load-module
      (lambda (_%modpath170282%_)
        (if (string? _%modpath170282%_)
            (let ((_%modpath170286%_ _%modpath170282%_))
              (__load-module _%modpath170286%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath170282%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath170723%_)
        (let ((_%modpath170726%_ _%modpath170723%_))
          (mutex-lock! __load-mx)
          (let ((_%$e170761%_
                 (let* ((_%h170735%_ __modules)
                        (_%key170738%_ _%modpath170726%_)
                        (_%h170745%_
                         (let ((_%$obj170742%_ _%h170735%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170742%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170742%_)))
                                    '#t)
                               _%$obj170742%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170742%_)))))
                        (_%h170747%_ _%h170745%_))
                   (declare (not safe))
                   (__hash-get _%h170747%_ _%key170738%_))))
            (if _%$e170761%_
                ((lambda (_%state170764%_)
                   (if (eq? _%state170764%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath170726%_)))
                       (if (eq? 'loading _%state170764%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state170764%_)
                               (let ((_%latest-path170769%_
                                      (__find-library-module
                                       _%modpath170726%_)))
                                 (if (or (equal? (path-extension
                                                  _%state170764%_)
                                                 '".scm")
                                         (not (equal? _%state170764%_
                                                      _%latest-path170769%_)))
                                     (begin
                                       (let* ((_%h170774%_ __modules)
                                              (_%key170777%_ _%modpath170726%_)
                                              (_%h170784%_
                                               (let ((_%$obj170781%_
                                                      _%h170774%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj170781%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj170781%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj170781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj170781%_)))))
                                              (_%h170786%_ _%h170784%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h170786%_
                                          _%key170777%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath170801%_
                                               _%modpath170726%_)
                                              (_%modpath170806%_
                                               _%modpath170801%_))
                                         (__load-module _%modpath170806%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state170764%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state170764%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h170817%_ __modules)
                                            (_%key170820%_ _%modpath170726%_)
                                            (_%h170827%_
                                             (let ((_%$obj170824%_
                                                    _%h170817%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj170824%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj170824%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj170824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj170824%_)))))
                                            (_%h170829%_ _%h170827%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h170829%_
                                        _%key170820%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath170841%_
                                             _%modpath170726%_)
                                            (_%modpath170846%_
                                             _%modpath170841%_))
                                       (__load-module _%modpath170846%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state170764%_))))))))
                 _%$e170761%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath170858%_ _%modpath170726%_)
                         (_%modpath170863%_ _%modpath170858%_))
                    (__load-module _%modpath170863%_))))))))
    (define reload-module!
      (lambda (_%modpath170416%_)
        (if (string? _%modpath170416%_)
            (let ((_%modpath170420%_ _%modpath170416%_))
              (__reload-module! _%modpath170420%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath170416%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath170657%_)
        (letrec ((_%find-compiled-file170659%_
                  (lambda (_%npath170712%_)
                    (let ((_%basepath170714%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170712%_ '".o"))))
                      (let _%lp170716%_ ((_%current170718%_ '#f)
                                         (_%n170719%_ '1))
                        (let ((_%next170721%_
                               (let ((__tmp171230
                                      (number->string _%n170719%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath170714%_
                                  __tmp171230))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next170721%_))
                              (_%lp170716%_
                               _%next170721%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n170719%_ '1)))
                              _%current170718%_))))))
                 (_%find-source-file170660%_
                  (lambda (_%npath170708%_)
                    (let ((_%spath170710%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170708%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath170710%_))
                          _%spath170710%_
                          '#f)))))
          (let _%lp170662%_ ((_%rest170664%_ (load-path)))
            (let* ((_%rest170665170673%_ _%rest170664%_)
                   (_%else170667170681%_ (lambda () '#f))
                   (_%K170669170696%_
                    (lambda (_%rest170684%_ _%dir170685%_)
                      (let* ((_%npath170687%_
                              (path-expand
                               _%modpath170657%_
                               (path-expand _%dir170685%_)))
                             (_%$e170689%_
                              (_%find-compiled-file170659%_ _%npath170687%_)))
                        (if _%$e170689%_
                            (path-normalize _%$e170689%_)
                            (let ((_%$e170692%_
                                   (_%find-source-file170660%_
                                    _%npath170687%_)))
                              (if _%$e170692%_
                                  (path-normalize _%$e170692%_)
                                  (_%lp170662%_ _%rest170684%_))))))))
              (if (pair? _%rest170665170673%_)
                  (let ((_%hd170670170699%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest170665170673%_)))
                        (_%tl170671170701%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest170665170673%_))))
                    (let* ((_%dir170704%_ _%hd170670170699%_)
                           (_%rest170706%_ _%tl170671170701%_))
                      (_%K170669170696%_ _%rest170706%_ _%dir170704%_)))
                  (_%else170667170681%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result170655%_
                 (let* ((_%h170634%_ __modules)
                        (_%h170641%_
                         (let ((_%$obj170638%_ _%h170634%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170638%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170638%_)))
                                    '#t)
                               _%$obj170638%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170638%_)))))
                        (_%h170643%_ _%h170641%_))
                   (declare (not safe))
                   (__hash->list _%h170643%_))))
            (mutex-unlock! __load-mx)
            _%result170655%_))))
    (define __module-load-order
      (lambda (_%modpath170564%_)
        (let ((_%modpath170567%_ _%modpath170564%_))
          (mutex-lock! __load-mx)
          (let ((_%ord170630%_
                 (if (eq? (let* ((_%h170576%_ __modules)
                                 (_%key170579%_ _%modpath170567%_)
                                 (_%h170586%_
                                  (let ((_%$obj170583%_ _%h170576%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj170583%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj170583%_)))
                                             '#t)
                                        _%$obj170583%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj170583%_)))))
                                 (_%h170588%_ _%h170586%_))
                            (declare (not safe))
                            (__hash-get _%h170588%_ _%key170579%_))
                          'builtin)
                     '0
                     (let ((_%$e170626%_
                            (let* ((_%h170603%_ __load-order)
                                   (_%key170606%_ _%modpath170567%_)
                                   (_%h170613%_
                                    (let ((_%$obj170610%_ _%h170603%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj170610%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj170610%_)))
                                               '#t)
                                          _%$obj170610%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj170610%_)))))
                                   (_%h170615%_ _%h170613%_))
                              (declare (not safe))
                              (__hash-get _%h170615%_ _%key170606%_))))
                       (if _%$e170626%_ _%$e170626%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord170630%_)
                _%ord170630%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath170567%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath170550%_)
        (if (string? _%modpath170550%_)
            (let ((_%modpath170554%_ _%modpath170550%_))
              (__module-load-order _%modpath170554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath170550%_)
              '#!void))))))
