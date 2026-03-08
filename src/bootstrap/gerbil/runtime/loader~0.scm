(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1773009266)
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
      (lambda _%paths171106%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths171106%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths171106%_)))
        (let ((__tmp171216
               (lambda (_%p171108%_)
                 (set! __load-path (cons _%p171108%_ __load-path))))
              (__tmp171215 (reverse! _%paths171106%_)))
          (declare (not safe))
          (##for-each __tmp171216 __tmp171215))))
    (define __set-load-path!
      (lambda (_%paths171094%_)
        (let ((_%paths171097%_ _%paths171094%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths171097%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths171097%_)))
          (set! __load-path _%paths171097%_))))
    (define set-load-path!
      (lambda (_%paths170138%_)
        (if (list? _%paths170138%_)
            (let ((_%paths170142%_ _%paths170138%_))
              (__set-load-path! _%paths170142%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths170138%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath170864%_)
        (let ((_%modpath170867%_ _%modpath170864%_))
          (mutex-lock! __load-mx)
          (let ((_%$e170902%_
                 (let* ((_%h170876%_ __modules)
                        (_%key170879%_ _%modpath170867%_)
                        (_%h170886%_
                         (let ((_%$obj170883%_ _%h170876%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170883%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170883%_)))
                                    '#t)
                               _%$obj170883%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170883%_)))))
                        (_%h170888%_ _%h170886%_))
                   (declare (not safe))
                   (__hash-get _%h170888%_ _%key170879%_))))
            (if _%$e170902%_
                ((lambda (_%state170905%_)
                   (if (or (eq? 'builtin _%state170905%_)
                           (string? _%state170905%_))
                       (let () (mutex-unlock! __load-mx) _%state170905%_)
                       (if (eq? 'loading _%state170905%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath170912%_ _%modpath170867%_)
                                    (_%modpath170917%_ _%modpath170912%_))
                               (__load-module _%modpath170917%_)))
                           (if (and (pair? _%state170905%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state170905%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp171217 (cadr _%state170905%_)))
                                   (declare (not safe))
                                   (raise __tmp171217)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state170905%_)))))))
                 _%$e170902%_)
                (let ((_%$e170932%_ (__find-library-module _%modpath170867%_)))
                  (if _%$e170932%_
                      ((lambda (_%path170935%_)
                         (let* ((_%h170937%_ __modules)
                                (_%key170940%_ _%modpath170867%_)
                                (_%value170943%_ 'loading)
                                (_%h170950%_
                                 (let ((_%$obj170947%_ _%h170937%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj170947%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj170947%_)))
                                            '#t)
                                       _%$obj170947%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj170947%_)))))
                                (_%h170952%_ _%h170950%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h170952%_
                            _%key170940%_
                            _%value170943%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp171219
                                (lambda (_%exn170966%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h170968%_ __modules)
                                         (_%key170971%_ _%modpath170867%_)
                                         (_%value170974%_
                                          (cons 'error
                                                (cons _%exn170966%_ '())))
                                         (_%h170981%_
                                          (let ((_%$obj170978%_ _%h170968%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj170978%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj170978%_)))
                                                     '#t)
                                                _%$obj170978%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj170978%_)))))
                                         (_%h170983%_ _%h170981%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h170983%_
                                     _%key170971%_
                                     _%value170974%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn170966%_))))
                               (__tmp171218
                                (lambda ()
                                  (let ((_%loaded-path170997%_
                                         (load _%path170935%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h170999%_ __modules)
                                           (_%key171002%_ _%modpath170867%_)
                                           (_%value171005%_
                                            _%loaded-path170997%_)
                                           (_%h171012%_
                                            (let ((_%$obj171009%_ _%h170999%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj171009%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj171009%_)))
                                                       '#t)
                                                  _%$obj171009%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj171009%_)))))
                                           (_%h171014%_ _%h171012%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h171014%_
                                       _%key171002%_
                                       _%value171005%_))
                                    (if (let* ((_%h171028%_ __load-order)
                                               (_%key171031%_
                                                _%modpath170867%_)
                                               (_%h171038%_
                                                (let ((_%$obj171035%_
                                                       _%h171028%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj171035%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj171035%_)))
                   '#t)
              _%$obj171035%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj171035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h171040%_ _%h171038%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h171040%_
                                           _%key171031%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h171051%_ __load-order)
                                                 (_%key171054%_
                                                  _%modpath170867%_)
                                                 (_%value171057%_
                                                  __load-order-next)
                                                 (_%h171064%_
                                                  (let ((_%$obj171061%_
                                                         _%h171051%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj171061%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj171061%_)))
                     '#t)
                _%$obj171061%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj171061%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h171066%_ _%h171064%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h171066%_
                                             _%key171054%_
                                             _%value171057%_))
                                          (set! __load-order-next
                                                (let* ((_%x171078%_
                                                        __load-order-next)
                                                       (_%x171083%_
                                                        _%x171078%_))
                                                  (declare (not safe))
                                                  (__1+ _%x171083%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path170997%_))))
                           (declare (not safe))
                           (__with-catch __tmp171219 __tmp171218)))
                       _%$e170932%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath170867%_))))))))))
    (define load-module
      (lambda (_%modpath170272%_)
        (if (string? _%modpath170272%_)
            (let ((_%modpath170276%_ _%modpath170272%_))
              (__load-module _%modpath170276%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath170272%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath170713%_)
        (let ((_%modpath170716%_ _%modpath170713%_))
          (mutex-lock! __load-mx)
          (let ((_%$e170751%_
                 (let* ((_%h170725%_ __modules)
                        (_%key170728%_ _%modpath170716%_)
                        (_%h170735%_
                         (let ((_%$obj170732%_ _%h170725%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170732%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170732%_)))
                                    '#t)
                               _%$obj170732%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170732%_)))))
                        (_%h170737%_ _%h170735%_))
                   (declare (not safe))
                   (__hash-get _%h170737%_ _%key170728%_))))
            (if _%$e170751%_
                ((lambda (_%state170754%_)
                   (if (eq? _%state170754%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath170716%_)))
                       (if (eq? 'loading _%state170754%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state170754%_)
                               (let ((_%latest-path170759%_
                                      (__find-library-module
                                       _%modpath170716%_)))
                                 (if (or (equal? (path-extension
                                                  _%state170754%_)
                                                 '".scm")
                                         (not (equal? _%state170754%_
                                                      _%latest-path170759%_)))
                                     (begin
                                       (let* ((_%h170764%_ __modules)
                                              (_%key170767%_ _%modpath170716%_)
                                              (_%h170774%_
                                               (let ((_%$obj170771%_
                                                      _%h170764%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj170771%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj170771%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj170771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj170771%_)))))
                                              (_%h170776%_ _%h170774%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h170776%_
                                          _%key170767%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath170791%_
                                               _%modpath170716%_)
                                              (_%modpath170796%_
                                               _%modpath170791%_))
                                         (__load-module _%modpath170796%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state170754%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state170754%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h170807%_ __modules)
                                            (_%key170810%_ _%modpath170716%_)
                                            (_%h170817%_
                                             (let ((_%$obj170814%_
                                                    _%h170807%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj170814%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj170814%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj170814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj170814%_)))))
                                            (_%h170819%_ _%h170817%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h170819%_
                                        _%key170810%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath170831%_
                                             _%modpath170716%_)
                                            (_%modpath170836%_
                                             _%modpath170831%_))
                                       (__load-module _%modpath170836%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state170754%_))))))))
                 _%$e170751%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath170848%_ _%modpath170716%_)
                         (_%modpath170853%_ _%modpath170848%_))
                    (__load-module _%modpath170853%_))))))))
    (define reload-module!
      (lambda (_%modpath170406%_)
        (if (string? _%modpath170406%_)
            (let ((_%modpath170410%_ _%modpath170406%_))
              (__reload-module! _%modpath170410%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath170406%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath170647%_)
        (letrec ((_%find-compiled-file170649%_
                  (lambda (_%npath170702%_)
                    (let ((_%basepath170704%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170702%_ '".o"))))
                      (let _%lp170706%_ ((_%current170708%_ '#f)
                                         (_%n170709%_ '1))
                        (let ((_%next170711%_
                               (let ((__tmp171220
                                      (number->string _%n170709%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath170704%_
                                  __tmp171220))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next170711%_))
                              (_%lp170706%_
                               _%next170711%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n170709%_ '1)))
                              _%current170708%_))))))
                 (_%find-source-file170650%_
                  (lambda (_%npath170698%_)
                    (let ((_%spath170700%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath170698%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath170700%_))
                          _%spath170700%_
                          '#f)))))
          (let _%lp170652%_ ((_%rest170654%_ (load-path)))
            (let* ((_%rest170655170663%_ _%rest170654%_)
                   (_%else170657170671%_ (lambda () '#f))
                   (_%K170659170686%_
                    (lambda (_%rest170674%_ _%dir170675%_)
                      (let* ((_%npath170677%_
                              (path-expand
                               _%modpath170647%_
                               (path-expand _%dir170675%_)))
                             (_%$e170679%_
                              (_%find-compiled-file170649%_ _%npath170677%_)))
                        (if _%$e170679%_
                            (path-normalize _%$e170679%_)
                            (let ((_%$e170682%_
                                   (_%find-source-file170650%_
                                    _%npath170677%_)))
                              (if _%$e170682%_
                                  (path-normalize _%$e170682%_)
                                  (_%lp170652%_ _%rest170674%_))))))))
              (if (pair? _%rest170655170663%_)
                  (let ((_%hd170660170689%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest170655170663%_)))
                        (_%tl170661170691%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest170655170663%_))))
                    (let* ((_%dir170694%_ _%hd170660170689%_)
                           (_%rest170696%_ _%tl170661170691%_))
                      (_%K170659170686%_ _%rest170696%_ _%dir170694%_)))
                  (_%else170657170671%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result170645%_
                 (let* ((_%h170624%_ __modules)
                        (_%h170631%_
                         (let ((_%$obj170628%_ _%h170624%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170628%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170628%_)))
                                    '#t)
                               _%$obj170628%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170628%_)))))
                        (_%h170633%_ _%h170631%_))
                   (declare (not safe))
                   (__hash->list _%h170633%_))))
            (mutex-unlock! __load-mx)
            _%result170645%_))))
    (define __module-load-order
      (lambda (_%modpath170554%_)
        (let ((_%modpath170557%_ _%modpath170554%_))
          (mutex-lock! __load-mx)
          (let ((_%ord170620%_
                 (if (eq? (let* ((_%h170566%_ __modules)
                                 (_%key170569%_ _%modpath170557%_)
                                 (_%h170576%_
                                  (let ((_%$obj170573%_ _%h170566%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj170573%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj170573%_)))
                                             '#t)
                                        _%$obj170573%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj170573%_)))))
                                 (_%h170578%_ _%h170576%_))
                            (declare (not safe))
                            (__hash-get _%h170578%_ _%key170569%_))
                          'builtin)
                     '0
                     (let ((_%$e170616%_
                            (let* ((_%h170593%_ __load-order)
                                   (_%key170596%_ _%modpath170557%_)
                                   (_%h170603%_
                                    (let ((_%$obj170600%_ _%h170593%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj170600%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj170600%_)))
                                               '#t)
                                          _%$obj170600%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj170600%_)))))
                                   (_%h170605%_ _%h170603%_))
                              (declare (not safe))
                              (__hash-get _%h170605%_ _%key170596%_))))
                       (if _%$e170616%_ _%$e170616%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord170620%_)
                _%ord170620%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath170557%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath170540%_)
        (if (string? _%modpath170540%_)
            (let ((_%modpath170544%_ _%modpath170540%_))
              (__module-load-order _%modpath170544%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath170540%_)
              '#!void))))))
