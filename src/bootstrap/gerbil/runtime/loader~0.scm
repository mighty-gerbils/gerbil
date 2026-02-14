(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1771093448)
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
      (lambda _%paths170041%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths170041%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths170041%_)))
        (let ((__tmp170151
               (lambda (_%p170043%_)
                 (set! __load-path (cons _%p170043%_ __load-path))))
              (__tmp170150 (reverse! _%paths170041%_)))
          (declare (not safe))
          (##for-each __tmp170151 __tmp170150))))
    (define __set-load-path!
      (lambda (_%paths170029%_)
        (let ((_%paths170032%_ _%paths170029%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths170032%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths170032%_)))
          (set! __load-path _%paths170032%_))))
    (define set-load-path!
      (lambda (_%paths169073%_)
        (if (list? _%paths169073%_)
            (let ((_%paths169077%_ _%paths169073%_))
              (__set-load-path! _%paths169077%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths169073%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath169799%_)
        (let ((_%modpath169802%_ _%modpath169799%_))
          (mutex-lock! __load-mx)
          (let ((_%$e169837%_
                 (let* ((_%h169811%_ __modules)
                        (_%key169814%_ _%modpath169802%_)
                        (_%h169821%_
                         (let ((_%$obj169818%_ _%h169811%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169818%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169818%_)))
                                    '#t)
                               _%$obj169818%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169818%_)))))
                        (_%h169823%_ _%h169821%_))
                   (declare (not safe))
                   (__hash-get _%h169823%_ _%key169814%_))))
            (if _%$e169837%_
                ((lambda (_%state169840%_)
                   (if (or (eq? 'builtin _%state169840%_)
                           (string? _%state169840%_))
                       (let () (mutex-unlock! __load-mx) _%state169840%_)
                       (if (eq? 'loading _%state169840%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath169847%_ _%modpath169802%_)
                                    (_%modpath169852%_ _%modpath169847%_))
                               (__load-module _%modpath169852%_)))
                           (if (and (pair? _%state169840%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state169840%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp170152 (cadr _%state169840%_)))
                                   (declare (not safe))
                                   (raise __tmp170152)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state169840%_)))))))
                 _%$e169837%_)
                (let ((_%$e169867%_ (__find-library-module _%modpath169802%_)))
                  (if _%$e169867%_
                      ((lambda (_%path169870%_)
                         (let* ((_%h169872%_ __modules)
                                (_%key169875%_ _%modpath169802%_)
                                (_%value169878%_ 'loading)
                                (_%h169885%_
                                 (let ((_%$obj169882%_ _%h169872%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj169882%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj169882%_)))
                                            '#t)
                                       _%$obj169882%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj169882%_)))))
                                (_%h169887%_ _%h169885%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h169887%_
                            _%key169875%_
                            _%value169878%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp170154
                                (lambda (_%exn169901%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h169903%_ __modules)
                                         (_%key169906%_ _%modpath169802%_)
                                         (_%value169909%_
                                          (cons 'error
                                                (cons _%exn169901%_ '())))
                                         (_%h169916%_
                                          (let ((_%$obj169913%_ _%h169903%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj169913%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj169913%_)))
                                                     '#t)
                                                _%$obj169913%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj169913%_)))))
                                         (_%h169918%_ _%h169916%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h169918%_
                                     _%key169906%_
                                     _%value169909%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn169901%_))))
                               (__tmp170153
                                (lambda ()
                                  (let ((_%loaded-path169932%_
                                         (load _%path169870%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h169934%_ __modules)
                                           (_%key169937%_ _%modpath169802%_)
                                           (_%value169940%_
                                            _%loaded-path169932%_)
                                           (_%h169947%_
                                            (let ((_%$obj169944%_ _%h169934%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj169944%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj169944%_)))
                                                       '#t)
                                                  _%$obj169944%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj169944%_)))))
                                           (_%h169949%_ _%h169947%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h169949%_
                                       _%key169937%_
                                       _%value169940%_))
                                    (if (let* ((_%h169963%_ __load-order)
                                               (_%key169966%_
                                                _%modpath169802%_)
                                               (_%h169973%_
                                                (let ((_%$obj169970%_
                                                       _%h169963%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj169970%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj169970%_)))
                   '#t)
              _%$obj169970%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj169970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h169975%_ _%h169973%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h169975%_
                                           _%key169966%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h169986%_ __load-order)
                                                 (_%key169989%_
                                                  _%modpath169802%_)
                                                 (_%value169992%_
                                                  __load-order-next)
                                                 (_%h169999%_
                                                  (let ((_%$obj169996%_
                                                         _%h169986%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj169996%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj169996%_)))
                     '#t)
                _%$obj169996%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj169996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h170001%_ _%h169999%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h170001%_
                                             _%key169989%_
                                             _%value169992%_))
                                          (set! __load-order-next
                                                (let* ((_%x170013%_
                                                        __load-order-next)
                                                       (_%x170018%_
                                                        _%x170013%_))
                                                  (declare (not safe))
                                                  (__1+ _%x170018%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path169932%_))))
                           (declare (not safe))
                           (__with-catch __tmp170154 __tmp170153)))
                       _%$e169867%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath169802%_))))))))))
    (define load-module
      (lambda (_%modpath169207%_)
        (if (string? _%modpath169207%_)
            (let ((_%modpath169211%_ _%modpath169207%_))
              (__load-module _%modpath169211%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath169207%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath169648%_)
        (let ((_%modpath169651%_ _%modpath169648%_))
          (mutex-lock! __load-mx)
          (let ((_%$e169686%_
                 (let* ((_%h169660%_ __modules)
                        (_%key169663%_ _%modpath169651%_)
                        (_%h169670%_
                         (let ((_%$obj169667%_ _%h169660%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169667%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169667%_)))
                                    '#t)
                               _%$obj169667%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169667%_)))))
                        (_%h169672%_ _%h169670%_))
                   (declare (not safe))
                   (__hash-get _%h169672%_ _%key169663%_))))
            (if _%$e169686%_
                ((lambda (_%state169689%_)
                   (if (eq? _%state169689%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath169651%_)))
                       (if (eq? 'loading _%state169689%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state169689%_)
                               (let ((_%latest-path169694%_
                                      (__find-library-module
                                       _%modpath169651%_)))
                                 (if (or (equal? (path-extension
                                                  _%state169689%_)
                                                 '".scm")
                                         (not (equal? _%state169689%_
                                                      _%latest-path169694%_)))
                                     (begin
                                       (let* ((_%h169699%_ __modules)
                                              (_%key169702%_ _%modpath169651%_)
                                              (_%h169709%_
                                               (let ((_%$obj169706%_
                                                      _%h169699%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj169706%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj169706%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj169706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj169706%_)))))
                                              (_%h169711%_ _%h169709%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h169711%_
                                          _%key169702%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath169726%_
                                               _%modpath169651%_)
                                              (_%modpath169731%_
                                               _%modpath169726%_))
                                         (__load-module _%modpath169731%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state169689%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state169689%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h169742%_ __modules)
                                            (_%key169745%_ _%modpath169651%_)
                                            (_%h169752%_
                                             (let ((_%$obj169749%_
                                                    _%h169742%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj169749%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj169749%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj169749%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj169749%_)))))
                                            (_%h169754%_ _%h169752%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h169754%_
                                        _%key169745%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath169766%_
                                             _%modpath169651%_)
                                            (_%modpath169771%_
                                             _%modpath169766%_))
                                       (__load-module _%modpath169771%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state169689%_))))))))
                 _%$e169686%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath169783%_ _%modpath169651%_)
                         (_%modpath169788%_ _%modpath169783%_))
                    (__load-module _%modpath169788%_))))))))
    (define reload-module!
      (lambda (_%modpath169341%_)
        (if (string? _%modpath169341%_)
            (let ((_%modpath169345%_ _%modpath169341%_))
              (__reload-module! _%modpath169345%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath169341%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath169582%_)
        (letrec ((_%find-compiled-file169584%_
                  (lambda (_%npath169637%_)
                    (let ((_%basepath169639%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath169637%_ '".o"))))
                      (let _%lp169641%_ ((_%current169643%_ '#f)
                                         (_%n169644%_ '1))
                        (let ((_%next169646%_
                               (let ((__tmp170155
                                      (number->string _%n169644%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath169639%_
                                  __tmp170155))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next169646%_))
                              (_%lp169641%_
                               _%next169646%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n169644%_ '1)))
                              _%current169643%_))))))
                 (_%find-source-file169585%_
                  (lambda (_%npath169633%_)
                    (let ((_%spath169635%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath169633%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath169635%_))
                          _%spath169635%_
                          '#f)))))
          (let _%lp169587%_ ((_%rest169589%_ (load-path)))
            (let* ((_%rest169590169598%_ _%rest169589%_)
                   (_%else169592169606%_ (lambda () '#f))
                   (_%K169594169621%_
                    (lambda (_%rest169609%_ _%dir169610%_)
                      (let* ((_%npath169612%_
                              (path-expand
                               _%modpath169582%_
                               (path-expand _%dir169610%_)))
                             (_%$e169614%_
                              (_%find-compiled-file169584%_ _%npath169612%_)))
                        (if _%$e169614%_
                            (path-normalize _%$e169614%_)
                            (let ((_%$e169617%_
                                   (_%find-source-file169585%_
                                    _%npath169612%_)))
                              (if _%$e169617%_
                                  (path-normalize _%$e169617%_)
                                  (_%lp169587%_ _%rest169609%_))))))))
              (if (pair? _%rest169590169598%_)
                  (let ((_%hd169595169624%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest169590169598%_)))
                        (_%tl169596169626%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest169590169598%_))))
                    (let* ((_%dir169629%_ _%hd169595169624%_)
                           (_%rest169631%_ _%tl169596169626%_))
                      (_%K169594169621%_ _%rest169631%_ _%dir169629%_)))
                  (_%else169592169606%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result169580%_
                 (let* ((_%h169559%_ __modules)
                        (_%h169566%_
                         (let ((_%$obj169563%_ _%h169559%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169563%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169563%_)))
                                    '#t)
                               _%$obj169563%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169563%_)))))
                        (_%h169568%_ _%h169566%_))
                   (declare (not safe))
                   (__hash->list _%h169568%_))))
            (mutex-unlock! __load-mx)
            _%result169580%_))))
    (define __module-load-order
      (lambda (_%modpath169489%_)
        (let ((_%modpath169492%_ _%modpath169489%_))
          (mutex-lock! __load-mx)
          (let ((_%ord169555%_
                 (if (eq? (let* ((_%h169501%_ __modules)
                                 (_%key169504%_ _%modpath169492%_)
                                 (_%h169511%_
                                  (let ((_%$obj169508%_ _%h169501%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj169508%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj169508%_)))
                                             '#t)
                                        _%$obj169508%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj169508%_)))))
                                 (_%h169513%_ _%h169511%_))
                            (declare (not safe))
                            (__hash-get _%h169513%_ _%key169504%_))
                          'builtin)
                     '0
                     (let ((_%$e169551%_
                            (let* ((_%h169528%_ __load-order)
                                   (_%key169531%_ _%modpath169492%_)
                                   (_%h169538%_
                                    (let ((_%$obj169535%_ _%h169528%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj169535%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj169535%_)))
                                               '#t)
                                          _%$obj169535%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj169535%_)))))
                                   (_%h169540%_ _%h169538%_))
                              (declare (not safe))
                              (__hash-get _%h169540%_ _%key169531%_))))
                       (if _%$e169551%_ _%$e169551%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord169555%_)
                _%ord169555%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath169492%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath169475%_)
        (if (string? _%modpath169475%_)
            (let ((_%modpath169479%_ _%modpath169475%_))
              (__module-load-order _%modpath169479%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath169475%_)
              '#!void))))))
