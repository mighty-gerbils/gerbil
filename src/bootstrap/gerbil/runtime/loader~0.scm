(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1770505716)
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
      (lambda _%paths166989%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths166989%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths166989%_)))
        (let ((__tmp167099
               (lambda (_%p166991%_)
                 (set! __load-path (cons _%p166991%_ __load-path))))
              (__tmp167098 (reverse! _%paths166989%_)))
          (declare (not safe))
          (##for-each __tmp167099 __tmp167098))))
    (define __set-load-path!
      (lambda (_%paths166977%_)
        (let ((_%paths166980%_ _%paths166977%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths166980%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths166980%_)))
          (set! __load-path _%paths166980%_))))
    (define set-load-path!
      (lambda (_%paths166021%_)
        (if (list? _%paths166021%_)
            (let ((_%paths166025%_ _%paths166021%_))
              (__set-load-path! _%paths166025%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths166021%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath166747%_)
        (let ((_%modpath166750%_ _%modpath166747%_))
          (mutex-lock! __load-mx)
          (let ((_%$e166785%_
                 (let* ((_%h166759%_ __modules)
                        (_%key166762%_ _%modpath166750%_)
                        (_%h166769%_
                         (let ((_%$obj166766%_ _%h166759%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj166766%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj166766%_)))
                                    '#t)
                               _%$obj166766%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj166766%_)))))
                        (_%h166771%_ _%h166769%_))
                   (declare (not safe))
                   (__hash-get _%h166771%_ _%key166762%_))))
            (if _%$e166785%_
                ((lambda (_%state166788%_)
                   (if (or (eq? 'builtin _%state166788%_)
                           (string? _%state166788%_))
                       (let () (mutex-unlock! __load-mx) _%state166788%_)
                       (if (eq? 'loading _%state166788%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath166795%_ _%modpath166750%_)
                                    (_%modpath166800%_ _%modpath166795%_))
                               (__load-module _%modpath166800%_)))
                           (if (and (pair? _%state166788%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state166788%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp167100 (cadr _%state166788%_)))
                                   (declare (not safe))
                                   (raise __tmp167100)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state166788%_)))))))
                 _%$e166785%_)
                (let ((_%$e166815%_ (__find-library-module _%modpath166750%_)))
                  (if _%$e166815%_
                      ((lambda (_%path166818%_)
                         (let* ((_%h166820%_ __modules)
                                (_%key166823%_ _%modpath166750%_)
                                (_%value166826%_ 'loading)
                                (_%h166833%_
                                 (let ((_%$obj166830%_ _%h166820%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj166830%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj166830%_)))
                                            '#t)
                                       _%$obj166830%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj166830%_)))))
                                (_%h166835%_ _%h166833%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h166835%_
                            _%key166823%_
                            _%value166826%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp167102
                                (lambda (_%exn166849%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h166851%_ __modules)
                                         (_%key166854%_ _%modpath166750%_)
                                         (_%value166857%_
                                          (cons 'error
                                                (cons _%exn166849%_ '())))
                                         (_%h166864%_
                                          (let ((_%$obj166861%_ _%h166851%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj166861%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj166861%_)))
                                                     '#t)
                                                _%$obj166861%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj166861%_)))))
                                         (_%h166866%_ _%h166864%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h166866%_
                                     _%key166854%_
                                     _%value166857%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn166849%_))))
                               (__tmp167101
                                (lambda ()
                                  (let ((_%loaded-path166880%_
                                         (load _%path166818%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h166882%_ __modules)
                                           (_%key166885%_ _%modpath166750%_)
                                           (_%value166888%_
                                            _%loaded-path166880%_)
                                           (_%h166895%_
                                            (let ((_%$obj166892%_ _%h166882%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj166892%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj166892%_)))
                                                       '#t)
                                                  _%$obj166892%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj166892%_)))))
                                           (_%h166897%_ _%h166895%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h166897%_
                                       _%key166885%_
                                       _%value166888%_))
                                    (if (let* ((_%h166911%_ __load-order)
                                               (_%key166914%_
                                                _%modpath166750%_)
                                               (_%h166921%_
                                                (let ((_%$obj166918%_
                                                       _%h166911%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj166918%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj166918%_)))
                   '#t)
              _%$obj166918%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj166918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h166923%_ _%h166921%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h166923%_
                                           _%key166914%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h166934%_ __load-order)
                                                 (_%key166937%_
                                                  _%modpath166750%_)
                                                 (_%value166940%_
                                                  __load-order-next)
                                                 (_%h166947%_
                                                  (let ((_%$obj166944%_
                                                         _%h166934%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj166944%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj166944%_)))
                     '#t)
                _%$obj166944%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj166944%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h166949%_ _%h166947%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h166949%_
                                             _%key166937%_
                                             _%value166940%_))
                                          (set! __load-order-next
                                                (let* ((_%x166961%_
                                                        __load-order-next)
                                                       (_%x166966%_
                                                        _%x166961%_))
                                                  (declare (not safe))
                                                  (__1+ _%x166966%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path166880%_))))
                           (declare (not safe))
                           (__with-catch __tmp167102 __tmp167101)))
                       _%$e166815%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath166750%_))))))))))
    (define load-module
      (lambda (_%modpath166155%_)
        (if (string? _%modpath166155%_)
            (let ((_%modpath166159%_ _%modpath166155%_))
              (__load-module _%modpath166159%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath166155%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath166596%_)
        (let ((_%modpath166599%_ _%modpath166596%_))
          (mutex-lock! __load-mx)
          (let ((_%$e166634%_
                 (let* ((_%h166608%_ __modules)
                        (_%key166611%_ _%modpath166599%_)
                        (_%h166618%_
                         (let ((_%$obj166615%_ _%h166608%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj166615%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj166615%_)))
                                    '#t)
                               _%$obj166615%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj166615%_)))))
                        (_%h166620%_ _%h166618%_))
                   (declare (not safe))
                   (__hash-get _%h166620%_ _%key166611%_))))
            (if _%$e166634%_
                ((lambda (_%state166637%_)
                   (if (eq? _%state166637%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath166599%_)))
                       (if (eq? 'loading _%state166637%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state166637%_)
                               (let ((_%latest-path166642%_
                                      (__find-library-module
                                       _%modpath166599%_)))
                                 (if (or (equal? (path-extension
                                                  _%state166637%_)
                                                 '".scm")
                                         (not (equal? _%state166637%_
                                                      _%latest-path166642%_)))
                                     (begin
                                       (let* ((_%h166647%_ __modules)
                                              (_%key166650%_ _%modpath166599%_)
                                              (_%h166657%_
                                               (let ((_%$obj166654%_
                                                      _%h166647%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj166654%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj166654%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj166654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj166654%_)))))
                                              (_%h166659%_ _%h166657%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h166659%_
                                          _%key166650%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath166674%_
                                               _%modpath166599%_)
                                              (_%modpath166679%_
                                               _%modpath166674%_))
                                         (__load-module _%modpath166679%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state166637%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state166637%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h166690%_ __modules)
                                            (_%key166693%_ _%modpath166599%_)
                                            (_%h166700%_
                                             (let ((_%$obj166697%_
                                                    _%h166690%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj166697%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj166697%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj166697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj166697%_)))))
                                            (_%h166702%_ _%h166700%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h166702%_
                                        _%key166693%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath166714%_
                                             _%modpath166599%_)
                                            (_%modpath166719%_
                                             _%modpath166714%_))
                                       (__load-module _%modpath166719%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state166637%_))))))))
                 _%$e166634%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath166731%_ _%modpath166599%_)
                         (_%modpath166736%_ _%modpath166731%_))
                    (__load-module _%modpath166736%_))))))))
    (define reload-module!
      (lambda (_%modpath166289%_)
        (if (string? _%modpath166289%_)
            (let ((_%modpath166293%_ _%modpath166289%_))
              (__reload-module! _%modpath166293%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath166289%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath166530%_)
        (letrec ((_%find-compiled-file166532%_
                  (lambda (_%npath166585%_)
                    (let ((_%basepath166587%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath166585%_ '".o"))))
                      (let _%lp166589%_ ((_%current166591%_ '#f)
                                         (_%n166592%_ '1))
                        (let ((_%next166594%_
                               (let ((__tmp167103
                                      (number->string _%n166592%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath166587%_
                                  __tmp167103))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next166594%_))
                              (_%lp166589%_
                               _%next166594%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n166592%_ '1)))
                              _%current166591%_))))))
                 (_%find-source-file166533%_
                  (lambda (_%npath166581%_)
                    (let ((_%spath166583%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath166581%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath166583%_))
                          _%spath166583%_
                          '#f)))))
          (let _%lp166535%_ ((_%rest166537%_ (load-path)))
            (let* ((_%rest166538166546%_ _%rest166537%_)
                   (_%else166540166554%_ (lambda () '#f))
                   (_%K166542166569%_
                    (lambda (_%rest166557%_ _%dir166558%_)
                      (let* ((_%npath166560%_
                              (path-expand
                               _%modpath166530%_
                               (path-expand _%dir166558%_)))
                             (_%$e166562%_
                              (_%find-compiled-file166532%_ _%npath166560%_)))
                        (if _%$e166562%_
                            (path-normalize _%$e166562%_)
                            (let ((_%$e166565%_
                                   (_%find-source-file166533%_
                                    _%npath166560%_)))
                              (if _%$e166565%_
                                  (path-normalize _%$e166565%_)
                                  (_%lp166535%_ _%rest166557%_))))))))
              (if (pair? _%rest166538166546%_)
                  (let ((_%hd166543166572%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest166538166546%_)))
                        (_%tl166544166574%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest166538166546%_))))
                    (let* ((_%dir166577%_ _%hd166543166572%_)
                           (_%rest166579%_ _%tl166544166574%_))
                      (_%K166542166569%_ _%rest166579%_ _%dir166577%_)))
                  (_%else166540166554%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result166528%_
                 (let* ((_%h166507%_ __modules)
                        (_%h166514%_
                         (let ((_%$obj166511%_ _%h166507%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj166511%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj166511%_)))
                                    '#t)
                               _%$obj166511%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj166511%_)))))
                        (_%h166516%_ _%h166514%_))
                   (declare (not safe))
                   (__hash->list _%h166516%_))))
            (mutex-unlock! __load-mx)
            _%result166528%_))))
    (define __module-load-order
      (lambda (_%modpath166437%_)
        (let ((_%modpath166440%_ _%modpath166437%_))
          (mutex-lock! __load-mx)
          (let ((_%ord166503%_
                 (if (eq? (let* ((_%h166449%_ __modules)
                                 (_%key166452%_ _%modpath166440%_)
                                 (_%h166459%_
                                  (let ((_%$obj166456%_ _%h166449%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj166456%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj166456%_)))
                                             '#t)
                                        _%$obj166456%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj166456%_)))))
                                 (_%h166461%_ _%h166459%_))
                            (declare (not safe))
                            (__hash-get _%h166461%_ _%key166452%_))
                          'builtin)
                     '0
                     (let ((_%$e166499%_
                            (let* ((_%h166476%_ __load-order)
                                   (_%key166479%_ _%modpath166440%_)
                                   (_%h166486%_
                                    (let ((_%$obj166483%_ _%h166476%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj166483%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj166483%_)))
                                               '#t)
                                          _%$obj166483%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj166483%_)))))
                                   (_%h166488%_ _%h166486%_))
                              (declare (not safe))
                              (__hash-get _%h166488%_ _%key166479%_))))
                       (if _%$e166499%_ _%$e166499%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord166503%_)
                _%ord166503%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath166440%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath166423%_)
        (if (string? _%modpath166423%_)
            (let ((_%modpath166427%_ _%modpath166423%_))
              (__module-load-order _%modpath166427%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath166423%_)
              '#!void))))))
