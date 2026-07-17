(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1784279015)
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
      (lambda _%paths179013%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths179013%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths179013%_)))
        (let ((__tmp179123
               (lambda (_%p179015%_)
                 (set! __load-path (cons _%p179015%_ __load-path))))
              (__tmp179122 (reverse! _%paths179013%_)))
          (declare (not safe))
          (##for-each __tmp179123 __tmp179122))))
    (define __set-load-path!
      (lambda (_%paths179001%_)
        (let ((_%paths179004%_ _%paths179001%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths179004%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths179004%_)))
          (set! __load-path _%paths179004%_))))
    (define set-load-path!
      (lambda (_%paths178987%_)
        (if (list? _%paths178987%_)
            (let ((_%paths178991%_ _%paths178987%_))
              (__set-load-path! _%paths178991%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths178987%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath178757%_)
        (let ((_%modpath178760%_ _%modpath178757%_))
          (mutex-lock! __load-mx)
          (let ((_%$e178795%_
                 (let* ((_%h178769%_ __modules)
                        (_%key178772%_ _%modpath178760%_)
                        (_%h178779%_
                         (let ((_%$obj178776%_ _%h178769%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj178776%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj178776%_)))
                                    '#t)
                               _%$obj178776%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj178776%_)))))
                        (_%h178781%_ _%h178779%_))
                   (declare (not safe))
                   (__hash-get _%h178781%_ _%key178772%_))))
            (if _%$e178795%_
                (if (or (eq? 'builtin _%$e178795%_) (string? _%$e178795%_))
                    (let () (mutex-unlock! __load-mx) _%$e178795%_)
                    (if (eq? 'loading _%$e178795%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath178805%_ _%modpath178760%_)
                                 (_%modpath178810%_ _%modpath178805%_))
                            (__load-module _%modpath178810%_)))
                        (if (and (pair? _%$e178795%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e178795%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp179124 (cadr _%$e178795%_)))
                                (declare (not safe))
                                (raise __tmp179124)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e178795%_))))))
                (let ((_%$e178825%_ (__find-library-module _%modpath178760%_)))
                  (if _%$e178825%_
                      (let ()
                        (let* ((_%h178830%_ __modules)
                               (_%key178833%_ _%modpath178760%_)
                               (_%value178836%_ 'loading)
                               (_%h178843%_
                                (let ((_%$obj178840%_ _%h178830%_))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (##structure? _%$obj178840%_))
                                           (eq? HashTable::t
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-type
                                                   _%$obj178840%_)))
                                           '#t)
                                      _%$obj178840%_
                                      (let ()
                                        (declare (not safe))
                                        (cast HashTable::interface
                                              _%$obj178840%_)))))
                               (_%h178845%_ _%h178843%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h178845%_
                           _%key178833%_
                           _%value178836%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp179126
                               (lambda (_%exn178859%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h178861%_ __modules)
                                        (_%key178864%_ _%modpath178760%_)
                                        (_%value178867%_
                                         (list 'error _%exn178859%_))
                                        (_%h178874%_
                                         (let ((_%$obj178871%_ _%h178861%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj178871%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj178871%_)))
                                                    '#t)
                                               _%$obj178871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj178871%_)))))
                                        (_%h178876%_ _%h178874%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h178876%_
                                    _%key178864%_
                                    _%value178867%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn178859%_))))
                              (__tmp179125
                               (lambda ()
                                 (let ((_%loaded-path178890%_
                                        (load _%$e178825%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h178892%_ __modules)
                                          (_%key178895%_ _%modpath178760%_)
                                          (_%value178898%_
                                           _%loaded-path178890%_)
                                          (_%h178905%_
                                           (let ((_%$obj178902%_ _%h178892%_))
                                             (if (and (let ()
                                                        (declare (not safe))
                                                        (##structure?
                                                         _%$obj178902%_))
                                                      (eq? HashTable::t
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-type
                                                              _%$obj178902%_)))
                                                      '#t)
                                                 _%$obj178902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (cast HashTable::interface
                                                         _%$obj178902%_)))))
                                          (_%h178907%_ _%h178905%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h178907%_
                                      _%key178895%_
                                      _%value178898%_))
                                   (if (let* ((_%h178921%_ __load-order)
                                              (_%key178924%_ _%modpath178760%_)
                                              (_%h178931%_
                                               (let ((_%$obj178928%_
                                                      _%h178921%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj178928%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj178928%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj178928%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj178928%_)))))
                                              (_%h178933%_ _%h178931%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h178933%_
                                          _%key178924%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h178944%_ __load-order)
                                                (_%key178947%_
                                                 _%modpath178760%_)
                                                (_%value178950%_
                                                 __load-order-next)
                                                (_%h178957%_
                                                 (let ((_%$obj178954%_
                                                        _%h178944%_))
                                                   (if (and (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure?
                                                               _%$obj178954%_))
                                                            (eq? HashTable::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##structure-type _%$obj178954%_)))
                    '#t)
               _%$obj178954%_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _%$obj178954%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%h178959%_ _%h178957%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h178959%_
                                            _%key178947%_
                                            _%value178950%_))
                                         (set! __load-order-next
                                               (let* ((_%x178971%_
                                                       __load-order-next)
                                                      (_%x178976%_
                                                       _%x178971%_))
                                                 (declare (not safe))
                                                 (__1+ _%x178976%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path178890%_))))
                          (declare (not safe))
                          (__with-catch __tmp179126 __tmp179125)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath178760%_))))))))))
    (define load-module
      (lambda (_%modpath178743%_)
        (if (string? _%modpath178743%_)
            (let ((_%modpath178747%_ _%modpath178743%_))
              (__load-module _%modpath178747%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath178743%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath178592%_)
        (let ((_%modpath178595%_ _%modpath178592%_))
          (mutex-lock! __load-mx)
          (let ((_%$e178630%_
                 (let* ((_%h178604%_ __modules)
                        (_%key178607%_ _%modpath178595%_)
                        (_%h178614%_
                         (let ((_%$obj178611%_ _%h178604%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj178611%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj178611%_)))
                                    '#t)
                               _%$obj178611%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj178611%_)))))
                        (_%h178616%_ _%h178614%_))
                   (declare (not safe))
                   (__hash-get _%h178616%_ _%key178607%_))))
            (if _%$e178630%_
                (if (eq? _%$e178630%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath178595%_)))
                    (if (eq? 'loading _%$e178630%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e178630%_)
                            (let ((_%latest-path178638%_
                                   (__find-library-module _%modpath178595%_)))
                              (if (or (equal? (path-extension _%$e178630%_)
                                              '".scm")
                                      (not (equal? _%$e178630%_
                                                   _%latest-path178638%_)))
                                  (begin
                                    (let* ((_%h178643%_ __modules)
                                           (_%key178646%_ _%modpath178595%_)
                                           (_%h178653%_
                                            (let ((_%$obj178650%_ _%h178643%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj178650%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj178650%_)))
                                                       '#t)
                                                  _%$obj178650%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj178650%_)))))
                                           (_%h178655%_ _%h178653%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h178655%_
                                       _%key178646%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath178670%_
                                            _%modpath178595%_)
                                           (_%modpath178675%_
                                            _%modpath178670%_))
                                      (__load-module _%modpath178675%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e178630%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e178630%_))
                                          'error))
                                (let ()
                                  (let* ((_%h178686%_ __modules)
                                         (_%key178689%_ _%modpath178595%_)
                                         (_%h178696%_
                                          (let ((_%$obj178693%_ _%h178686%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj178693%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj178693%_)))
                                                     '#t)
                                                _%$obj178693%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj178693%_)))))
                                         (_%h178698%_ _%h178696%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h178698%_ _%key178689%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath178710%_ _%modpath178595%_)
                                         (_%modpath178715%_ _%modpath178710%_))
                                    (__load-module _%modpath178715%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e178630%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath178727%_ _%modpath178595%_)
                         (_%modpath178732%_ _%modpath178727%_))
                    (__load-module _%modpath178732%_))))))))
    (define reload-module!
      (lambda (_%modpath178578%_)
        (if (string? _%modpath178578%_)
            (let ((_%modpath178582%_ _%modpath178578%_))
              (__reload-module! _%modpath178582%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath178578%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath178512%_)
        (letrec ((_%find-compiled-file178514%_
                  (lambda (_%npath178567%_)
                    (let ((_%basepath178569%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath178567%_ '".o"))))
                      (let _%lp178571%_ ((_%current178573%_ '#f)
                                         (_%n178574%_ '1))
                        (let ((_%next178576%_
                               (let ((__tmp179127
                                      (number->string _%n178574%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath178569%_
                                  __tmp179127))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next178576%_))
                              (_%lp178571%_
                               _%next178576%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n178574%_ '1)))
                              _%current178573%_))))))
                 (_%find-source-file178515%_
                  (lambda (_%npath178563%_)
                    (let ((_%spath178565%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath178563%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath178565%_))
                          _%spath178565%_
                          '#f)))))
          (let _%lp178517%_ ((_%rest178519%_ (load-path)))
            (let* ((_%$%rest178520178528%_ _%rest178519%_)
                   (_%$%else178522178536%_ (lambda () '#f))
                   (_%$%K178524178551%_
                    (lambda (_%rest178539%_ _%dir178540%_)
                      (let* ((_%npath178542%_
                              (path-expand
                               _%modpath178512%_
                               (path-expand _%dir178540%_)))
                             (_%$e178544%_
                              (_%find-compiled-file178514%_ _%npath178542%_)))
                        (if _%$e178544%_
                            (path-normalize _%$e178544%_)
                            (let ((_%$e178547%_
                                   (_%find-source-file178515%_
                                    _%npath178542%_)))
                              (if _%$e178547%_
                                  (path-normalize _%$e178547%_)
                                  (_%lp178517%_ _%rest178539%_))))))))
              (if (pair? _%$%rest178520178528%_)
                  (let ((_%$%hd178525178554%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest178520178528%_)))
                        (_%$%tl178526178556%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest178520178528%_))))
                    (let* ((_%dir178559%_ _%$%hd178525178554%_)
                           (_%rest178561%_ _%$%tl178526178556%_))
                      (_%$%K178524178551%_ _%rest178561%_ _%dir178559%_)))
                  (_%$%else178522178536%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result178510%_
                 (let* ((_%h178489%_ __modules)
                        (_%h178496%_
                         (let ((_%$obj178493%_ _%h178489%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj178493%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj178493%_)))
                                    '#t)
                               _%$obj178493%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj178493%_)))))
                        (_%h178498%_ _%h178496%_))
                   (declare (not safe))
                   (__hash->list _%h178498%_))))
            (mutex-unlock! __load-mx)
            _%result178510%_))))
    (define __module-load-order
      (lambda (_%modpath178419%_)
        (let ((_%modpath178422%_ _%modpath178419%_))
          (mutex-lock! __load-mx)
          (let ((_%ord178485%_
                 (if (eq? (let* ((_%h178431%_ __modules)
                                 (_%key178434%_ _%modpath178422%_)
                                 (_%h178441%_
                                  (let ((_%$obj178438%_ _%h178431%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj178438%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj178438%_)))
                                             '#t)
                                        _%$obj178438%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj178438%_)))))
                                 (_%h178443%_ _%h178441%_))
                            (declare (not safe))
                            (__hash-get _%h178443%_ _%key178434%_))
                          'builtin)
                     '0
                     (let ((_%$e178481%_
                            (let* ((_%h178458%_ __load-order)
                                   (_%key178461%_ _%modpath178422%_)
                                   (_%h178468%_
                                    (let ((_%$obj178465%_ _%h178458%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj178465%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj178465%_)))
                                               '#t)
                                          _%$obj178465%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj178465%_)))))
                                   (_%h178470%_ _%h178468%_))
                              (declare (not safe))
                              (__hash-get _%h178470%_ _%key178461%_))))
                       (if _%$e178481%_ _%$e178481%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord178485%_)
                _%ord178485%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath178422%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath178405%_)
        (if (string? _%modpath178405%_)
            (let ((_%modpath178409%_ _%modpath178405%_))
              (__module-load-order _%modpath178409%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath178405%_)
              '#!void))))))
