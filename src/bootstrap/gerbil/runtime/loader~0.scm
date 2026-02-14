(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1771036674)
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
      (lambda _%paths352859%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths352859%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths352859%_)))
        (let ((__tmp352969
               (lambda (_%p352861%_)
                 (set! __load-path (cons _%p352861%_ __load-path))))
              (__tmp352968 (reverse! _%paths352859%_)))
          (declare (not safe))
          (##for-each __tmp352969 __tmp352968))))
    (define __set-load-path!
      (lambda (_%paths352847%_)
        (let ((_%paths352850%_ _%paths352847%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths352850%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths352850%_)))
          (set! __load-path _%paths352850%_))))
    (define set-load-path!
      (lambda (_%paths351891%_)
        (if (list? _%paths351891%_)
            (let ((_%paths351895%_ _%paths351891%_))
              (__set-load-path! _%paths351895%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths351891%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath352617%_)
        (let ((_%modpath352620%_ _%modpath352617%_))
          (mutex-lock! __load-mx)
          (let ((_%$e352655%_
                 (let* ((_%h352629%_ __modules)
                        (_%key352632%_ _%modpath352620%_)
                        (_%h352639%_
                         (let ((_%$obj352636%_ _%h352629%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj352636%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj352636%_)))
                                    '#t)
                               _%$obj352636%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj352636%_)))))
                        (_%h352641%_ _%h352639%_))
                   (declare (not safe))
                   (__hash-get _%h352641%_ _%key352632%_))))
            (if _%$e352655%_
                ((lambda (_%state352658%_)
                   (if (or (eq? 'builtin _%state352658%_)
                           (string? _%state352658%_))
                       (let () (mutex-unlock! __load-mx) _%state352658%_)
                       (if (eq? 'loading _%state352658%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath352665%_ _%modpath352620%_)
                                    (_%modpath352670%_ _%modpath352665%_))
                               (__load-module _%modpath352670%_)))
                           (if (and (pair? _%state352658%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state352658%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp352970 (cadr _%state352658%_)))
                                   (declare (not safe))
                                   (raise __tmp352970)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state352658%_)))))))
                 _%$e352655%_)
                (let ((_%$e352685%_ (__find-library-module _%modpath352620%_)))
                  (if _%$e352685%_
                      ((lambda (_%path352688%_)
                         (let* ((_%h352690%_ __modules)
                                (_%key352693%_ _%modpath352620%_)
                                (_%value352696%_ 'loading)
                                (_%h352703%_
                                 (let ((_%$obj352700%_ _%h352690%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj352700%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj352700%_)))
                                            '#t)
                                       _%$obj352700%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj352700%_)))))
                                (_%h352705%_ _%h352703%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h352705%_
                            _%key352693%_
                            _%value352696%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp352972
                                (lambda (_%exn352719%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h352721%_ __modules)
                                         (_%key352724%_ _%modpath352620%_)
                                         (_%value352727%_
                                          (cons 'error
                                                (cons _%exn352719%_ '())))
                                         (_%h352734%_
                                          (let ((_%$obj352731%_ _%h352721%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj352731%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj352731%_)))
                                                     '#t)
                                                _%$obj352731%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj352731%_)))))
                                         (_%h352736%_ _%h352734%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h352736%_
                                     _%key352724%_
                                     _%value352727%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn352719%_))))
                               (__tmp352971
                                (lambda ()
                                  (let ((_%loaded-path352750%_
                                         (load _%path352688%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h352752%_ __modules)
                                           (_%key352755%_ _%modpath352620%_)
                                           (_%value352758%_
                                            _%loaded-path352750%_)
                                           (_%h352765%_
                                            (let ((_%$obj352762%_ _%h352752%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj352762%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj352762%_)))
                                                       '#t)
                                                  _%$obj352762%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj352762%_)))))
                                           (_%h352767%_ _%h352765%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h352767%_
                                       _%key352755%_
                                       _%value352758%_))
                                    (if (let* ((_%h352781%_ __load-order)
                                               (_%key352784%_
                                                _%modpath352620%_)
                                               (_%h352791%_
                                                (let ((_%$obj352788%_
                                                       _%h352781%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj352788%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj352788%_)))
                   '#t)
              _%$obj352788%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj352788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h352793%_ _%h352791%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h352793%_
                                           _%key352784%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h352804%_ __load-order)
                                                 (_%key352807%_
                                                  _%modpath352620%_)
                                                 (_%value352810%_
                                                  __load-order-next)
                                                 (_%h352817%_
                                                  (let ((_%$obj352814%_
                                                         _%h352804%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj352814%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj352814%_)))
                     '#t)
                _%$obj352814%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj352814%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h352819%_ _%h352817%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h352819%_
                                             _%key352807%_
                                             _%value352810%_))
                                          (set! __load-order-next
                                                (let* ((_%x352831%_
                                                        __load-order-next)
                                                       (_%x352836%_
                                                        _%x352831%_))
                                                  (declare (not safe))
                                                  (__1+ _%x352836%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path352750%_))))
                           (declare (not safe))
                           (__with-catch __tmp352972 __tmp352971)))
                       _%$e352685%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath352620%_))))))))))
    (define load-module
      (lambda (_%modpath352025%_)
        (if (string? _%modpath352025%_)
            (let ((_%modpath352029%_ _%modpath352025%_))
              (__load-module _%modpath352029%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath352025%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath352466%_)
        (let ((_%modpath352469%_ _%modpath352466%_))
          (mutex-lock! __load-mx)
          (let ((_%$e352504%_
                 (let* ((_%h352478%_ __modules)
                        (_%key352481%_ _%modpath352469%_)
                        (_%h352488%_
                         (let ((_%$obj352485%_ _%h352478%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj352485%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj352485%_)))
                                    '#t)
                               _%$obj352485%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj352485%_)))))
                        (_%h352490%_ _%h352488%_))
                   (declare (not safe))
                   (__hash-get _%h352490%_ _%key352481%_))))
            (if _%$e352504%_
                ((lambda (_%state352507%_)
                   (if (eq? _%state352507%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath352469%_)))
                       (if (eq? 'loading _%state352507%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state352507%_)
                               (let ((_%latest-path352512%_
                                      (__find-library-module
                                       _%modpath352469%_)))
                                 (if (or (equal? (path-extension
                                                  _%state352507%_)
                                                 '".scm")
                                         (not (equal? _%state352507%_
                                                      _%latest-path352512%_)))
                                     (begin
                                       (let* ((_%h352517%_ __modules)
                                              (_%key352520%_ _%modpath352469%_)
                                              (_%h352527%_
                                               (let ((_%$obj352524%_
                                                      _%h352517%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj352524%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj352524%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj352524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj352524%_)))))
                                              (_%h352529%_ _%h352527%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h352529%_
                                          _%key352520%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath352544%_
                                               _%modpath352469%_)
                                              (_%modpath352549%_
                                               _%modpath352544%_))
                                         (__load-module _%modpath352549%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state352507%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state352507%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h352560%_ __modules)
                                            (_%key352563%_ _%modpath352469%_)
                                            (_%h352570%_
                                             (let ((_%$obj352567%_
                                                    _%h352560%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj352567%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj352567%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj352567%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj352567%_)))))
                                            (_%h352572%_ _%h352570%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h352572%_
                                        _%key352563%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath352584%_
                                             _%modpath352469%_)
                                            (_%modpath352589%_
                                             _%modpath352584%_))
                                       (__load-module _%modpath352589%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state352507%_))))))))
                 _%$e352504%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath352601%_ _%modpath352469%_)
                         (_%modpath352606%_ _%modpath352601%_))
                    (__load-module _%modpath352606%_))))))))
    (define reload-module!
      (lambda (_%modpath352159%_)
        (if (string? _%modpath352159%_)
            (let ((_%modpath352163%_ _%modpath352159%_))
              (__reload-module! _%modpath352163%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath352159%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath352400%_)
        (letrec ((_%find-compiled-file352402%_
                  (lambda (_%npath352455%_)
                    (let ((_%basepath352457%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath352455%_ '".o"))))
                      (let _%lp352459%_ ((_%current352461%_ '#f)
                                         (_%n352462%_ '1))
                        (let ((_%next352464%_
                               (let ((__tmp352973
                                      (number->string _%n352462%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath352457%_
                                  __tmp352973))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next352464%_))
                              (_%lp352459%_
                               _%next352464%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n352462%_ '1)))
                              _%current352461%_))))))
                 (_%find-source-file352403%_
                  (lambda (_%npath352451%_)
                    (let ((_%spath352453%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath352451%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath352453%_))
                          _%spath352453%_
                          '#f)))))
          (let _%lp352405%_ ((_%rest352407%_ (load-path)))
            (let* ((_%rest352408352416%_ _%rest352407%_)
                   (_%else352410352424%_ (lambda () '#f))
                   (_%K352412352439%_
                    (lambda (_%rest352427%_ _%dir352428%_)
                      (let* ((_%npath352430%_
                              (path-expand
                               _%modpath352400%_
                               (path-expand _%dir352428%_)))
                             (_%$e352432%_
                              (_%find-compiled-file352402%_ _%npath352430%_)))
                        (if _%$e352432%_
                            (path-normalize _%$e352432%_)
                            (let ((_%$e352435%_
                                   (_%find-source-file352403%_
                                    _%npath352430%_)))
                              (if _%$e352435%_
                                  (path-normalize _%$e352435%_)
                                  (_%lp352405%_ _%rest352427%_))))))))
              (if (pair? _%rest352408352416%_)
                  (let ((_%hd352413352442%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest352408352416%_)))
                        (_%tl352414352444%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest352408352416%_))))
                    (let* ((_%dir352447%_ _%hd352413352442%_)
                           (_%rest352449%_ _%tl352414352444%_))
                      (_%K352412352439%_ _%rest352449%_ _%dir352447%_)))
                  (_%else352410352424%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result352398%_
                 (let* ((_%h352377%_ __modules)
                        (_%h352384%_
                         (let ((_%$obj352381%_ _%h352377%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj352381%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj352381%_)))
                                    '#t)
                               _%$obj352381%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj352381%_)))))
                        (_%h352386%_ _%h352384%_))
                   (declare (not safe))
                   (__hash->list _%h352386%_))))
            (mutex-unlock! __load-mx)
            _%result352398%_))))
    (define __module-load-order
      (lambda (_%modpath352307%_)
        (let ((_%modpath352310%_ _%modpath352307%_))
          (mutex-lock! __load-mx)
          (let ((_%ord352373%_
                 (if (eq? (let* ((_%h352319%_ __modules)
                                 (_%key352322%_ _%modpath352310%_)
                                 (_%h352329%_
                                  (let ((_%$obj352326%_ _%h352319%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj352326%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj352326%_)))
                                             '#t)
                                        _%$obj352326%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj352326%_)))))
                                 (_%h352331%_ _%h352329%_))
                            (declare (not safe))
                            (__hash-get _%h352331%_ _%key352322%_))
                          'builtin)
                     '0
                     (let ((_%$e352369%_
                            (let* ((_%h352346%_ __load-order)
                                   (_%key352349%_ _%modpath352310%_)
                                   (_%h352356%_
                                    (let ((_%$obj352353%_ _%h352346%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj352353%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj352353%_)))
                                               '#t)
                                          _%$obj352353%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj352353%_)))))
                                   (_%h352358%_ _%h352356%_))
                              (declare (not safe))
                              (__hash-get _%h352358%_ _%key352349%_))))
                       (if _%$e352369%_ _%$e352369%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord352373%_)
                _%ord352373%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath352310%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath352293%_)
        (if (string? _%modpath352293%_)
            (let ((_%modpath352297%_ _%modpath352293%_))
              (__module-load-order _%modpath352297%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath352293%_)
              '#!void))))))
