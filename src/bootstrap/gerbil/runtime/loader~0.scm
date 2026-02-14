(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1771101400)
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
      (lambda _%paths170464%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths170464%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths170464%_)))
        (let ((__tmp170574
               (lambda (_%p170466%_)
                 (set! __load-path (cons _%p170466%_ __load-path))))
              (__tmp170573 (reverse! _%paths170464%_)))
          (declare (not safe))
          (##for-each __tmp170574 __tmp170573))))
    (define __set-load-path!
      (lambda (_%paths170452%_)
        (let ((_%paths170455%_ _%paths170452%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths170455%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths170455%_)))
          (set! __load-path _%paths170455%_))))
    (define set-load-path!
      (lambda (_%paths169496%_)
        (if (list? _%paths169496%_)
            (let ((_%paths169500%_ _%paths169496%_))
              (__set-load-path! _%paths169500%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths169496%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath170222%_)
        (let ((_%modpath170225%_ _%modpath170222%_))
          (mutex-lock! __load-mx)
          (let ((_%$e170260%_
                 (let* ((_%h170234%_ __modules)
                        (_%key170237%_ _%modpath170225%_)
                        (_%h170244%_
                         (let ((_%$obj170241%_ _%h170234%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170241%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170241%_)))
                                    '#t)
                               _%$obj170241%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170241%_)))))
                        (_%h170246%_ _%h170244%_))
                   (declare (not safe))
                   (__hash-get _%h170246%_ _%key170237%_))))
            (if _%$e170260%_
                ((lambda (_%state170263%_)
                   (if (or (eq? 'builtin _%state170263%_)
                           (string? _%state170263%_))
                       (let () (mutex-unlock! __load-mx) _%state170263%_)
                       (if (eq? 'loading _%state170263%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath170270%_ _%modpath170225%_)
                                    (_%modpath170275%_ _%modpath170270%_))
                               (__load-module _%modpath170275%_)))
                           (if (and (pair? _%state170263%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state170263%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp170575 (cadr _%state170263%_)))
                                   (declare (not safe))
                                   (raise __tmp170575)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state170263%_)))))))
                 _%$e170260%_)
                (let ((_%$e170290%_ (__find-library-module _%modpath170225%_)))
                  (if _%$e170290%_
                      ((lambda (_%path170293%_)
                         (let* ((_%h170295%_ __modules)
                                (_%key170298%_ _%modpath170225%_)
                                (_%value170301%_ 'loading)
                                (_%h170308%_
                                 (let ((_%$obj170305%_ _%h170295%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj170305%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj170305%_)))
                                            '#t)
                                       _%$obj170305%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj170305%_)))))
                                (_%h170310%_ _%h170308%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h170310%_
                            _%key170298%_
                            _%value170301%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp170577
                                (lambda (_%exn170324%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h170326%_ __modules)
                                         (_%key170329%_ _%modpath170225%_)
                                         (_%value170332%_
                                          (cons 'error
                                                (cons _%exn170324%_ '())))
                                         (_%h170339%_
                                          (let ((_%$obj170336%_ _%h170326%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj170336%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj170336%_)))
                                                     '#t)
                                                _%$obj170336%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj170336%_)))))
                                         (_%h170341%_ _%h170339%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h170341%_
                                     _%key170329%_
                                     _%value170332%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn170324%_))))
                               (__tmp170576
                                (lambda ()
                                  (let ((_%loaded-path170355%_
                                         (load _%path170293%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h170357%_ __modules)
                                           (_%key170360%_ _%modpath170225%_)
                                           (_%value170363%_
                                            _%loaded-path170355%_)
                                           (_%h170370%_
                                            (let ((_%$obj170367%_ _%h170357%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj170367%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj170367%_)))
                                                       '#t)
                                                  _%$obj170367%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj170367%_)))))
                                           (_%h170372%_ _%h170370%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h170372%_
                                       _%key170360%_
                                       _%value170363%_))
                                    (if (let* ((_%h170386%_ __load-order)
                                               (_%key170389%_
                                                _%modpath170225%_)
                                               (_%h170396%_
                                                (let ((_%$obj170393%_
                                                       _%h170386%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj170393%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj170393%_)))
                   '#t)
              _%$obj170393%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj170393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h170398%_ _%h170396%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h170398%_
                                           _%key170389%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h170409%_ __load-order)
                                                 (_%key170412%_
                                                  _%modpath170225%_)
                                                 (_%value170415%_
                                                  __load-order-next)
                                                 (_%h170422%_
                                                  (let ((_%$obj170419%_
                                                         _%h170409%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj170419%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj170419%_)))
                     '#t)
                _%$obj170419%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj170419%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h170424%_ _%h170422%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h170424%_
                                             _%key170412%_
                                             _%value170415%_))
                                          (set! __load-order-next
                                                (let* ((_%x170436%_
                                                        __load-order-next)
                                                       (_%x170441%_
                                                        _%x170436%_))
                                                  (declare (not safe))
                                                  (__1+ _%x170441%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path170355%_))))
                           (declare (not safe))
                           (__with-catch __tmp170577 __tmp170576)))
                       _%$e170290%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath170225%_))))))))))
    (define load-module
      (lambda (_%modpath169630%_)
        (if (string? _%modpath169630%_)
            (let ((_%modpath169634%_ _%modpath169630%_))
              (__load-module _%modpath169634%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath169630%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath170071%_)
        (let ((_%modpath170074%_ _%modpath170071%_))
          (mutex-lock! __load-mx)
          (let ((_%$e170109%_
                 (let* ((_%h170083%_ __modules)
                        (_%key170086%_ _%modpath170074%_)
                        (_%h170093%_
                         (let ((_%$obj170090%_ _%h170083%_))
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
                   (__hash-get _%h170095%_ _%key170086%_))))
            (if _%$e170109%_
                ((lambda (_%state170112%_)
                   (if (eq? _%state170112%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath170074%_)))
                       (if (eq? 'loading _%state170112%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state170112%_)
                               (let ((_%latest-path170117%_
                                      (__find-library-module
                                       _%modpath170074%_)))
                                 (if (or (equal? (path-extension
                                                  _%state170112%_)
                                                 '".scm")
                                         (not (equal? _%state170112%_
                                                      _%latest-path170117%_)))
                                     (begin
                                       (let* ((_%h170122%_ __modules)
                                              (_%key170125%_ _%modpath170074%_)
                                              (_%h170132%_
                                               (let ((_%$obj170129%_
                                                      _%h170122%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj170129%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj170129%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj170129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj170129%_)))))
                                              (_%h170134%_ _%h170132%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h170134%_
                                          _%key170125%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath170149%_
                                               _%modpath170074%_)
                                              (_%modpath170154%_
                                               _%modpath170149%_))
                                         (__load-module _%modpath170154%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state170112%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state170112%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h170165%_ __modules)
                                            (_%key170168%_ _%modpath170074%_)
                                            (_%h170175%_
                                             (let ((_%$obj170172%_
                                                    _%h170165%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj170172%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj170172%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj170172%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj170172%_)))))
                                            (_%h170177%_ _%h170175%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h170177%_
                                        _%key170168%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath170189%_
                                             _%modpath170074%_)
                                            (_%modpath170194%_
                                             _%modpath170189%_))
                                       (__load-module _%modpath170194%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state170112%_))))))))
                 _%$e170109%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath170206%_ _%modpath170074%_)
                         (_%modpath170211%_ _%modpath170206%_))
                    (__load-module _%modpath170211%_))))))))
    (define reload-module!
      (lambda (_%modpath169764%_)
        (if (string? _%modpath169764%_)
            (let ((_%modpath169768%_ _%modpath169764%_))
              (__reload-module! _%modpath169768%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath169764%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath170005%_)
        (letrec ((_%find-compiled-file170007%_
                  (lambda (_%npath170060%_)
                    (let ((_%basepath170062%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170060%_ '".o"))))
                      (let _%lp170064%_ ((_%current170066%_ '#f)
                                         (_%n170067%_ '1))
                        (let ((_%next170069%_
                               (let ((__tmp170578
                                      (number->string _%n170067%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath170062%_
                                  __tmp170578))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next170069%_))
                              (_%lp170064%_
                               _%next170069%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n170067%_ '1)))
                              _%current170066%_))))))
                 (_%find-source-file170008%_
                  (lambda (_%npath170056%_)
                    (let ((_%spath170058%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170056%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath170058%_))
                          _%spath170058%_
                          '#f)))))
          (let _%lp170010%_ ((_%rest170012%_ (load-path)))
            (let* ((_%rest170013170021%_ _%rest170012%_)
                   (_%else170015170029%_ (lambda () '#f))
                   (_%K170017170044%_
                    (lambda (_%rest170032%_ _%dir170033%_)
                      (let* ((_%npath170035%_
                              (path-expand
                               _%modpath170005%_
                               (path-expand _%dir170033%_)))
                             (_%$e170037%_
                              (_%find-compiled-file170007%_ _%npath170035%_)))
                        (if _%$e170037%_
                            (path-normalize _%$e170037%_)
                            (let ((_%$e170040%_
                                   (_%find-source-file170008%_
                                    _%npath170035%_)))
                              (if _%$e170040%_
                                  (path-normalize _%$e170040%_)
                                  (_%lp170010%_ _%rest170032%_))))))))
              (if (pair? _%rest170013170021%_)
                  (let ((_%hd170018170047%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest170013170021%_)))
                        (_%tl170019170049%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest170013170021%_))))
                    (let* ((_%dir170052%_ _%hd170018170047%_)
                           (_%rest170054%_ _%tl170019170049%_))
                      (_%K170017170044%_ _%rest170054%_ _%dir170052%_)))
                  (_%else170015170029%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result170003%_
                 (let* ((_%h169982%_ __modules)
                        (_%h169989%_
                         (let ((_%$obj169986%_ _%h169982%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169986%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169986%_)))
                                    '#t)
                               _%$obj169986%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169986%_)))))
                        (_%h169991%_ _%h169989%_))
                   (declare (not safe))
                   (__hash->list _%h169991%_))))
            (mutex-unlock! __load-mx)
            _%result170003%_))))
    (define __module-load-order
      (lambda (_%modpath169912%_)
        (let ((_%modpath169915%_ _%modpath169912%_))
          (mutex-lock! __load-mx)
          (let ((_%ord169978%_
                 (if (eq? (let* ((_%h169924%_ __modules)
                                 (_%key169927%_ _%modpath169915%_)
                                 (_%h169934%_
                                  (let ((_%$obj169931%_ _%h169924%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj169931%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj169931%_)))
                                             '#t)
                                        _%$obj169931%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj169931%_)))))
                                 (_%h169936%_ _%h169934%_))
                            (declare (not safe))
                            (__hash-get _%h169936%_ _%key169927%_))
                          'builtin)
                     '0
                     (let ((_%$e169974%_
                            (let* ((_%h169951%_ __load-order)
                                   (_%key169954%_ _%modpath169915%_)
                                   (_%h169961%_
                                    (let ((_%$obj169958%_ _%h169951%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj169958%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj169958%_)))
                                               '#t)
                                          _%$obj169958%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj169958%_)))))
                                   (_%h169963%_ _%h169961%_))
                              (declare (not safe))
                              (__hash-get _%h169963%_ _%key169954%_))))
                       (if _%$e169974%_ _%$e169974%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord169978%_)
                _%ord169978%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath169915%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath169898%_)
        (if (string? _%modpath169898%_)
            (let ((_%modpath169902%_ _%modpath169898%_))
              (__module-load-order _%modpath169902%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath169898%_)
              '#!void))))))
