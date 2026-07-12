(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1783878476)
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
      (lambda _%paths176221%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths176221%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths176221%_)))
        (let ((__tmp176331
               (lambda (_%p176223%_)
                 (set! __load-path (cons _%p176223%_ __load-path))))
              (__tmp176330 (reverse! _%paths176221%_)))
          (declare (not safe))
          (##for-each __tmp176331 __tmp176330))))
    (define __set-load-path!
      (lambda (_%paths176209%_)
        (let ((_%paths176212%_ _%paths176209%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths176212%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths176212%_)))
          (set! __load-path _%paths176212%_))))
    (define set-load-path!
      (lambda (_%paths176195%_)
        (if (list? _%paths176195%_)
            (let ((_%paths176199%_ _%paths176195%_))
              (__set-load-path! _%paths176199%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths176195%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath175965%_)
        (let ((_%modpath175968%_ _%modpath175965%_))
          (mutex-lock! __load-mx)
          (let ((_%$e176003%_
                 (let* ((_%h175977%_ __modules)
                        (_%key175980%_ _%modpath175968%_)
                        (_%h175987%_
                         (let ((_%$obj175984%_ _%h175977%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj175984%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj175984%_)))
                                    '#t)
                               _%$obj175984%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj175984%_)))))
                        (_%h175989%_ _%h175987%_))
                   (declare (not safe))
                   (__hash-get _%h175989%_ _%key175980%_))))
            (if _%$e176003%_
                (if (or (eq? 'builtin _%$e176003%_) (string? _%$e176003%_))
                    (let () (mutex-unlock! __load-mx) _%$e176003%_)
                    (if (eq? 'loading _%$e176003%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath176013%_ _%modpath175968%_)
                                 (_%modpath176018%_ _%modpath176013%_))
                            (__load-module _%modpath176018%_)))
                        (if (and (pair? _%$e176003%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e176003%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp176332 (cadr _%$e176003%_)))
                                (declare (not safe))
                                (raise __tmp176332)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e176003%_))))))
                (let ((_%$e176033%_ (__find-library-module _%modpath175968%_)))
                  (if _%$e176033%_
                      (let ()
                        (let* ((_%h176038%_ __modules)
                               (_%key176041%_ _%modpath175968%_)
                               (_%value176044%_ 'loading)
                               (_%h176051%_
                                (let ((_%$obj176048%_ _%h176038%_))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (##structure? _%$obj176048%_))
                                           (eq? HashTable::t
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-type
                                                   _%$obj176048%_)))
                                           '#t)
                                      _%$obj176048%_
                                      (let ()
                                        (declare (not safe))
                                        (cast HashTable::interface
                                              _%$obj176048%_)))))
                               (_%h176053%_ _%h176051%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h176053%_
                           _%key176041%_
                           _%value176044%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp176334
                               (lambda (_%exn176067%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h176069%_ __modules)
                                        (_%key176072%_ _%modpath175968%_)
                                        (_%value176075%_
                                         (cons 'error
                                               (cons _%exn176067%_ '())))
                                        (_%h176082%_
                                         (let ((_%$obj176079%_ _%h176069%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj176079%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj176079%_)))
                                                    '#t)
                                               _%$obj176079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj176079%_)))))
                                        (_%h176084%_ _%h176082%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h176084%_
                                    _%key176072%_
                                    _%value176075%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn176067%_))))
                              (__tmp176333
                               (lambda ()
                                 (let ((_%loaded-path176098%_
                                        (load _%$e176033%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h176100%_ __modules)
                                          (_%key176103%_ _%modpath175968%_)
                                          (_%value176106%_
                                           _%loaded-path176098%_)
                                          (_%h176113%_
                                           (let ((_%$obj176110%_ _%h176100%_))
                                             (if (and (let ()
                                                        (declare (not safe))
                                                        (##structure?
                                                         _%$obj176110%_))
                                                      (eq? HashTable::t
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-type
                                                              _%$obj176110%_)))
                                                      '#t)
                                                 _%$obj176110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (cast HashTable::interface
                                                         _%$obj176110%_)))))
                                          (_%h176115%_ _%h176113%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h176115%_
                                      _%key176103%_
                                      _%value176106%_))
                                   (if (let* ((_%h176129%_ __load-order)
                                              (_%key176132%_ _%modpath175968%_)
                                              (_%h176139%_
                                               (let ((_%$obj176136%_
                                                      _%h176129%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj176136%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj176136%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj176136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj176136%_)))))
                                              (_%h176141%_ _%h176139%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h176141%_
                                          _%key176132%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h176152%_ __load-order)
                                                (_%key176155%_
                                                 _%modpath175968%_)
                                                (_%value176158%_
                                                 __load-order-next)
                                                (_%h176165%_
                                                 (let ((_%$obj176162%_
                                                        _%h176152%_))
                                                   (if (and (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure?
                                                               _%$obj176162%_))
                                                            (eq? HashTable::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##structure-type _%$obj176162%_)))
                    '#t)
               _%$obj176162%_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _%$obj176162%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%h176167%_ _%h176165%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h176167%_
                                            _%key176155%_
                                            _%value176158%_))
                                         (set! __load-order-next
                                               (let* ((_%x176179%_
                                                       __load-order-next)
                                                      (_%x176184%_
                                                       _%x176179%_))
                                                 (declare (not safe))
                                                 (__1+ _%x176184%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path176098%_))))
                          (declare (not safe))
                          (__with-catch __tmp176334 __tmp176333)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath175968%_))))))))))
    (define load-module
      (lambda (_%modpath175951%_)
        (if (string? _%modpath175951%_)
            (let ((_%modpath175955%_ _%modpath175951%_))
              (__load-module _%modpath175955%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath175951%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath175800%_)
        (let ((_%modpath175803%_ _%modpath175800%_))
          (mutex-lock! __load-mx)
          (let ((_%$e175838%_
                 (let* ((_%h175812%_ __modules)
                        (_%key175815%_ _%modpath175803%_)
                        (_%h175822%_
                         (let ((_%$obj175819%_ _%h175812%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj175819%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj175819%_)))
                                    '#t)
                               _%$obj175819%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj175819%_)))))
                        (_%h175824%_ _%h175822%_))
                   (declare (not safe))
                   (__hash-get _%h175824%_ _%key175815%_))))
            (if _%$e175838%_
                (if (eq? _%$e175838%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath175803%_)))
                    (if (eq? 'loading _%$e175838%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e175838%_)
                            (let ((_%latest-path175846%_
                                   (__find-library-module _%modpath175803%_)))
                              (if (or (equal? (path-extension _%$e175838%_)
                                              '".scm")
                                      (not (equal? _%$e175838%_
                                                   _%latest-path175846%_)))
                                  (begin
                                    (let* ((_%h175851%_ __modules)
                                           (_%key175854%_ _%modpath175803%_)
                                           (_%h175861%_
                                            (let ((_%$obj175858%_ _%h175851%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj175858%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj175858%_)))
                                                       '#t)
                                                  _%$obj175858%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj175858%_)))))
                                           (_%h175863%_ _%h175861%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h175863%_
                                       _%key175854%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath175878%_
                                            _%modpath175803%_)
                                           (_%modpath175883%_
                                            _%modpath175878%_))
                                      (__load-module _%modpath175883%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e175838%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e175838%_))
                                          'error))
                                (let ()
                                  (let* ((_%h175894%_ __modules)
                                         (_%key175897%_ _%modpath175803%_)
                                         (_%h175904%_
                                          (let ((_%$obj175901%_ _%h175894%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj175901%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj175901%_)))
                                                     '#t)
                                                _%$obj175901%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj175901%_)))))
                                         (_%h175906%_ _%h175904%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h175906%_ _%key175897%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath175918%_ _%modpath175803%_)
                                         (_%modpath175923%_ _%modpath175918%_))
                                    (__load-module _%modpath175923%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e175838%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath175935%_ _%modpath175803%_)
                         (_%modpath175940%_ _%modpath175935%_))
                    (__load-module _%modpath175940%_))))))))
    (define reload-module!
      (lambda (_%modpath175786%_)
        (if (string? _%modpath175786%_)
            (let ((_%modpath175790%_ _%modpath175786%_))
              (__reload-module! _%modpath175790%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath175786%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath175720%_)
        (letrec ((_%find-compiled-file175722%_
                  (lambda (_%npath175775%_)
                    (let ((_%basepath175777%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath175775%_ '".o"))))
                      (let _%lp175779%_ ((_%current175781%_ '#f)
                                         (_%n175782%_ '1))
                        (let ((_%next175784%_
                               (let ((__tmp176335
                                      (number->string _%n175782%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath175777%_
                                  __tmp176335))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next175784%_))
                              (_%lp175779%_
                               _%next175784%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n175782%_ '1)))
                              _%current175781%_))))))
                 (_%find-source-file175723%_
                  (lambda (_%npath175771%_)
                    (let ((_%spath175773%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath175771%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath175773%_))
                          _%spath175773%_
                          '#f)))))
          (let _%lp175725%_ ((_%rest175727%_ (load-path)))
            (let* ((_%$%rest175728175736%_ _%rest175727%_)
                   (_%$%else175730175744%_ (lambda () '#f))
                   (_%$%K175732175759%_
                    (lambda (_%rest175747%_ _%dir175748%_)
                      (let* ((_%npath175750%_
                              (path-expand
                               _%modpath175720%_
                               (path-expand _%dir175748%_)))
                             (_%$e175752%_
                              (_%find-compiled-file175722%_ _%npath175750%_)))
                        (if _%$e175752%_
                            (path-normalize _%$e175752%_)
                            (let ((_%$e175755%_
                                   (_%find-source-file175723%_
                                    _%npath175750%_)))
                              (if _%$e175755%_
                                  (path-normalize _%$e175755%_)
                                  (_%lp175725%_ _%rest175747%_))))))))
              (if (pair? _%$%rest175728175736%_)
                  (let ((_%$%hd175733175762%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest175728175736%_)))
                        (_%$%tl175734175764%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest175728175736%_))))
                    (let* ((_%dir175767%_ _%$%hd175733175762%_)
                           (_%rest175769%_ _%$%tl175734175764%_))
                      (_%$%K175732175759%_ _%rest175769%_ _%dir175767%_)))
                  (_%$%else175730175744%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result175718%_
                 (let* ((_%h175697%_ __modules)
                        (_%h175704%_
                         (let ((_%$obj175701%_ _%h175697%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj175701%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj175701%_)))
                                    '#t)
                               _%$obj175701%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj175701%_)))))
                        (_%h175706%_ _%h175704%_))
                   (declare (not safe))
                   (__hash->list _%h175706%_))))
            (mutex-unlock! __load-mx)
            _%result175718%_))))
    (define __module-load-order
      (lambda (_%modpath175627%_)
        (let ((_%modpath175630%_ _%modpath175627%_))
          (mutex-lock! __load-mx)
          (let ((_%ord175693%_
                 (if (eq? (let* ((_%h175639%_ __modules)
                                 (_%key175642%_ _%modpath175630%_)
                                 (_%h175649%_
                                  (let ((_%$obj175646%_ _%h175639%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj175646%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj175646%_)))
                                             '#t)
                                        _%$obj175646%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj175646%_)))))
                                 (_%h175651%_ _%h175649%_))
                            (declare (not safe))
                            (__hash-get _%h175651%_ _%key175642%_))
                          'builtin)
                     '0
                     (let ((_%$e175689%_
                            (let* ((_%h175666%_ __load-order)
                                   (_%key175669%_ _%modpath175630%_)
                                   (_%h175676%_
                                    (let ((_%$obj175673%_ _%h175666%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj175673%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj175673%_)))
                                               '#t)
                                          _%$obj175673%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj175673%_)))))
                                   (_%h175678%_ _%h175676%_))
                              (declare (not safe))
                              (__hash-get _%h175678%_ _%key175669%_))))
                       (if _%$e175689%_ _%$e175689%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord175693%_)
                _%ord175693%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath175630%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath175613%_)
        (if (string? _%modpath175613%_)
            (let ((_%modpath175617%_ _%modpath175613%_))
              (__module-load-order _%modpath175617%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath175613%_)
              '#!void))))))
