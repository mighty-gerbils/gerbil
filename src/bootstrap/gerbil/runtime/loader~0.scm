(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1781697561)
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
      (lambda _%paths174955%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths174955%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths174955%_)))
        (let ((__tmp175065
               (lambda (_%p174957%_)
                 (set! __load-path (cons _%p174957%_ __load-path))))
              (__tmp175064 (reverse! _%paths174955%_)))
          (declare (not safe))
          (##for-each __tmp175065 __tmp175064))))
    (define __set-load-path!
      (lambda (_%paths174943%_)
        (let ((_%paths174946%_ _%paths174943%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths174946%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths174946%_)))
          (set! __load-path _%paths174946%_))))
    (define set-load-path!
      (lambda (_%paths174929%_)
        (if (list? _%paths174929%_)
            (let ((_%paths174933%_ _%paths174929%_))
              (__set-load-path! _%paths174933%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths174929%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath174699%_)
        (let ((_%modpath174702%_ _%modpath174699%_))
          (mutex-lock! __load-mx)
          (let ((_%$e174737%_
                 (let* ((_%h174711%_ __modules)
                        (_%key174714%_ _%modpath174702%_)
                        (_%h174721%_
                         (let ((_%$obj174718%_ _%h174711%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj174718%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj174718%_)))
                                    '#t)
                               _%$obj174718%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj174718%_)))))
                        (_%h174723%_ _%h174721%_))
                   (declare (not safe))
                   (__hash-get _%h174723%_ _%key174714%_))))
            (if _%$e174737%_
                (if (or (eq? 'builtin _%$e174737%_) (string? _%$e174737%_))
                    (let () (mutex-unlock! __load-mx) _%$e174737%_)
                    (if (eq? 'loading _%$e174737%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath174747%_ _%modpath174702%_)
                                 (_%modpath174752%_ _%modpath174747%_))
                            (__load-module _%modpath174752%_)))
                        (if (and (pair? _%$e174737%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e174737%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp175066 (cadr _%$e174737%_)))
                                (declare (not safe))
                                (raise __tmp175066)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e174737%_))))))
                (let ((_%$e174767%_ (__find-library-module _%modpath174702%_)))
                  (if _%$e174767%_
                      (let ()
                        (let* ((_%h174772%_ __modules)
                               (_%key174775%_ _%modpath174702%_)
                               (_%value174778%_ 'loading)
                               (_%h174785%_
                                (let ((_%$obj174782%_ _%h174772%_))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (##structure? _%$obj174782%_))
                                           (eq? HashTable::t
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-type
                                                   _%$obj174782%_)))
                                           '#t)
                                      _%$obj174782%_
                                      (let ()
                                        (declare (not safe))
                                        (cast HashTable::interface
                                              _%$obj174782%_)))))
                               (_%h174787%_ _%h174785%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h174787%_
                           _%key174775%_
                           _%value174778%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp175068
                               (lambda (_%exn174801%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h174803%_ __modules)
                                        (_%key174806%_ _%modpath174702%_)
                                        (_%value174809%_
                                         (cons 'error
                                               (cons _%exn174801%_ '())))
                                        (_%h174816%_
                                         (let ((_%$obj174813%_ _%h174803%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj174813%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj174813%_)))
                                                    '#t)
                                               _%$obj174813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj174813%_)))))
                                        (_%h174818%_ _%h174816%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h174818%_
                                    _%key174806%_
                                    _%value174809%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn174801%_))))
                              (__tmp175067
                               (lambda ()
                                 (let ((_%loaded-path174832%_
                                        (load _%$e174767%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h174834%_ __modules)
                                          (_%key174837%_ _%modpath174702%_)
                                          (_%value174840%_
                                           _%loaded-path174832%_)
                                          (_%h174847%_
                                           (let ((_%$obj174844%_ _%h174834%_))
                                             (if (and (let ()
                                                        (declare (not safe))
                                                        (##structure?
                                                         _%$obj174844%_))
                                                      (eq? HashTable::t
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-type
                                                              _%$obj174844%_)))
                                                      '#t)
                                                 _%$obj174844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (cast HashTable::interface
                                                         _%$obj174844%_)))))
                                          (_%h174849%_ _%h174847%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h174849%_
                                      _%key174837%_
                                      _%value174840%_))
                                   (if (let* ((_%h174863%_ __load-order)
                                              (_%key174866%_ _%modpath174702%_)
                                              (_%h174873%_
                                               (let ((_%$obj174870%_
                                                      _%h174863%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj174870%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj174870%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj174870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj174870%_)))))
                                              (_%h174875%_ _%h174873%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h174875%_
                                          _%key174866%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h174886%_ __load-order)
                                                (_%key174889%_
                                                 _%modpath174702%_)
                                                (_%value174892%_
                                                 __load-order-next)
                                                (_%h174899%_
                                                 (let ((_%$obj174896%_
                                                        _%h174886%_))
                                                   (if (and (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure?
                                                               _%$obj174896%_))
                                                            (eq? HashTable::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##structure-type _%$obj174896%_)))
                    '#t)
               _%$obj174896%_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _%$obj174896%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%h174901%_ _%h174899%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h174901%_
                                            _%key174889%_
                                            _%value174892%_))
                                         (set! __load-order-next
                                               (let* ((_%x174913%_
                                                       __load-order-next)
                                                      (_%x174918%_
                                                       _%x174913%_))
                                                 (declare (not safe))
                                                 (__1+ _%x174918%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path174832%_))))
                          (declare (not safe))
                          (__with-catch __tmp175068 __tmp175067)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath174702%_))))))))))
    (define load-module
      (lambda (_%modpath174685%_)
        (if (string? _%modpath174685%_)
            (let ((_%modpath174689%_ _%modpath174685%_))
              (__load-module _%modpath174689%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath174685%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath174534%_)
        (let ((_%modpath174537%_ _%modpath174534%_))
          (mutex-lock! __load-mx)
          (let ((_%$e174572%_
                 (let* ((_%h174546%_ __modules)
                        (_%key174549%_ _%modpath174537%_)
                        (_%h174556%_
                         (let ((_%$obj174553%_ _%h174546%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj174553%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj174553%_)))
                                    '#t)
                               _%$obj174553%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj174553%_)))))
                        (_%h174558%_ _%h174556%_))
                   (declare (not safe))
                   (__hash-get _%h174558%_ _%key174549%_))))
            (if _%$e174572%_
                (if (eq? _%$e174572%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath174537%_)))
                    (if (eq? 'loading _%$e174572%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e174572%_)
                            (let ((_%latest-path174580%_
                                   (__find-library-module _%modpath174537%_)))
                              (if (or (equal? (path-extension _%$e174572%_)
                                              '".scm")
                                      (not (equal? _%$e174572%_
                                                   _%latest-path174580%_)))
                                  (begin
                                    (let* ((_%h174585%_ __modules)
                                           (_%key174588%_ _%modpath174537%_)
                                           (_%h174595%_
                                            (let ((_%$obj174592%_ _%h174585%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj174592%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj174592%_)))
                                                       '#t)
                                                  _%$obj174592%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj174592%_)))))
                                           (_%h174597%_ _%h174595%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h174597%_
                                       _%key174588%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath174612%_
                                            _%modpath174537%_)
                                           (_%modpath174617%_
                                            _%modpath174612%_))
                                      (__load-module _%modpath174617%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e174572%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e174572%_))
                                          'error))
                                (let ()
                                  (let* ((_%h174628%_ __modules)
                                         (_%key174631%_ _%modpath174537%_)
                                         (_%h174638%_
                                          (let ((_%$obj174635%_ _%h174628%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj174635%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj174635%_)))
                                                     '#t)
                                                _%$obj174635%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj174635%_)))))
                                         (_%h174640%_ _%h174638%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h174640%_ _%key174631%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath174652%_ _%modpath174537%_)
                                         (_%modpath174657%_ _%modpath174652%_))
                                    (__load-module _%modpath174657%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e174572%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath174669%_ _%modpath174537%_)
                         (_%modpath174674%_ _%modpath174669%_))
                    (__load-module _%modpath174674%_))))))))
    (define reload-module!
      (lambda (_%modpath174520%_)
        (if (string? _%modpath174520%_)
            (let ((_%modpath174524%_ _%modpath174520%_))
              (__reload-module! _%modpath174524%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath174520%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath174454%_)
        (letrec ((_%find-compiled-file174456%_
                  (lambda (_%npath174509%_)
                    (let ((_%basepath174511%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath174509%_ '".o"))))
                      (let _%lp174513%_ ((_%current174515%_ '#f)
                                         (_%n174516%_ '1))
                        (let ((_%next174518%_
                               (let ((__tmp175069
                                      (number->string _%n174516%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath174511%_
                                  __tmp175069))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next174518%_))
                              (_%lp174513%_
                               _%next174518%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n174516%_ '1)))
                              _%current174515%_))))))
                 (_%find-source-file174457%_
                  (lambda (_%npath174505%_)
                    (let ((_%spath174507%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath174505%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath174507%_))
                          _%spath174507%_
                          '#f)))))
          (let _%lp174459%_ ((_%rest174461%_ (load-path)))
            (let* ((_%$%rest174462174470%_ _%rest174461%_)
                   (_%$%else174464174478%_ (lambda () '#f))
                   (_%$%K174466174493%_
                    (lambda (_%rest174481%_ _%dir174482%_)
                      (let* ((_%npath174484%_
                              (path-expand
                               _%modpath174454%_
                               (path-expand _%dir174482%_)))
                             (_%$e174486%_
                              (_%find-compiled-file174456%_ _%npath174484%_)))
                        (if _%$e174486%_
                            (path-normalize _%$e174486%_)
                            (let ((_%$e174489%_
                                   (_%find-source-file174457%_
                                    _%npath174484%_)))
                              (if _%$e174489%_
                                  (path-normalize _%$e174489%_)
                                  (_%lp174459%_ _%rest174481%_))))))))
              (if (pair? _%$%rest174462174470%_)
                  (let ((_%$%hd174467174496%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest174462174470%_)))
                        (_%$%tl174468174498%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest174462174470%_))))
                    (let* ((_%dir174501%_ _%$%hd174467174496%_)
                           (_%rest174503%_ _%$%tl174468174498%_))
                      (_%$%K174466174493%_ _%rest174503%_ _%dir174501%_)))
                  (_%$%else174464174478%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result174452%_
                 (let* ((_%h174431%_ __modules)
                        (_%h174438%_
                         (let ((_%$obj174435%_ _%h174431%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj174435%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj174435%_)))
                                    '#t)
                               _%$obj174435%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj174435%_)))))
                        (_%h174440%_ _%h174438%_))
                   (declare (not safe))
                   (__hash->list _%h174440%_))))
            (mutex-unlock! __load-mx)
            _%result174452%_))))
    (define __module-load-order
      (lambda (_%modpath174361%_)
        (let ((_%modpath174364%_ _%modpath174361%_))
          (mutex-lock! __load-mx)
          (let ((_%ord174427%_
                 (if (eq? (let* ((_%h174373%_ __modules)
                                 (_%key174376%_ _%modpath174364%_)
                                 (_%h174383%_
                                  (let ((_%$obj174380%_ _%h174373%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj174380%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj174380%_)))
                                             '#t)
                                        _%$obj174380%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj174380%_)))))
                                 (_%h174385%_ _%h174383%_))
                            (declare (not safe))
                            (__hash-get _%h174385%_ _%key174376%_))
                          'builtin)
                     '0
                     (let ((_%$e174423%_
                            (let* ((_%h174400%_ __load-order)
                                   (_%key174403%_ _%modpath174364%_)
                                   (_%h174410%_
                                    (let ((_%$obj174407%_ _%h174400%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj174407%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj174407%_)))
                                               '#t)
                                          _%$obj174407%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj174407%_)))))
                                   (_%h174412%_ _%h174410%_))
                              (declare (not safe))
                              (__hash-get _%h174412%_ _%key174403%_))))
                       (if _%$e174423%_ _%$e174423%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord174427%_)
                _%ord174427%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath174364%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath174347%_)
        (if (string? _%modpath174347%_)
            (let ((_%modpath174351%_ _%modpath174347%_))
              (__module-load-order _%modpath174351%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath174347%_)
              '#!void))))))
