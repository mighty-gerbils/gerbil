(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1770405373)
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
      (lambda _%paths166981%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths166981%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths166981%_)))
        (let ((__tmp167091
               (lambda (_%p166983%_)
                 (set! __load-path (cons _%p166983%_ __load-path))))
              (__tmp167090 (reverse! _%paths166981%_)))
          (declare (not safe))
          (##for-each __tmp167091 __tmp167090))))
    (define __set-load-path!
      (lambda (_%paths166969%_)
        (let ((_%paths166972%_ _%paths166969%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths166972%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths166972%_)))
          (set! __load-path _%paths166972%_))))
    (define set-load-path!
      (lambda (_%paths166013%_)
        (if (list? _%paths166013%_)
            (let ((_%paths166017%_ _%paths166013%_))
              (__set-load-path! _%paths166017%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths166013%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath166739%_)
        (let ((_%modpath166742%_ _%modpath166739%_))
          (mutex-lock! __load-mx)
          (let ((_%$e166777%_
                 (let* ((_%h166751%_ __modules)
                        (_%key166754%_ _%modpath166742%_)
                        (_%h166761%_
                         (let ((_%$obj166758%_ _%h166751%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj166758%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj166758%_)))
                                    '#t)
                               _%$obj166758%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj166758%_)))))
                        (_%h166763%_ _%h166761%_))
                   (declare (not safe))
                   (__hash-get _%h166763%_ _%key166754%_))))
            (if _%$e166777%_
                ((lambda (_%state166780%_)
                   (if (or (eq? 'builtin _%state166780%_)
                           (string? _%state166780%_))
                       (let () (mutex-unlock! __load-mx) _%state166780%_)
                       (if (eq? 'loading _%state166780%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath166787%_ _%modpath166742%_)
                                    (_%modpath166792%_ _%modpath166787%_))
                               (__load-module _%modpath166792%_)))
                           (if (and (pair? _%state166780%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state166780%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp167092 (cadr _%state166780%_)))
                                   (declare (not safe))
                                   (raise __tmp167092)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state166780%_)))))))
                 _%$e166777%_)
                (let ((_%$e166807%_ (__find-library-module _%modpath166742%_)))
                  (if _%$e166807%_
                      ((lambda (_%path166810%_)
                         (let* ((_%h166812%_ __modules)
                                (_%key166815%_ _%modpath166742%_)
                                (_%value166818%_ 'loading)
                                (_%h166825%_
                                 (let ((_%$obj166822%_ _%h166812%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj166822%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj166822%_)))
                                            '#t)
                                       _%$obj166822%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj166822%_)))))
                                (_%h166827%_ _%h166825%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h166827%_
                            _%key166815%_
                            _%value166818%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp167094
                                (lambda (_%exn166841%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h166843%_ __modules)
                                         (_%key166846%_ _%modpath166742%_)
                                         (_%value166849%_
                                          (cons 'error
                                                (cons _%exn166841%_ '())))
                                         (_%h166856%_
                                          (let ((_%$obj166853%_ _%h166843%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj166853%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj166853%_)))
                                                     '#t)
                                                _%$obj166853%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj166853%_)))))
                                         (_%h166858%_ _%h166856%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h166858%_
                                     _%key166846%_
                                     _%value166849%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn166841%_))))
                               (__tmp167093
                                (lambda ()
                                  (let ((_%loaded-path166872%_
                                         (load _%path166810%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h166874%_ __modules)
                                           (_%key166877%_ _%modpath166742%_)
                                           (_%value166880%_
                                            _%loaded-path166872%_)
                                           (_%h166887%_
                                            (let ((_%$obj166884%_ _%h166874%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj166884%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj166884%_)))
                                                       '#t)
                                                  _%$obj166884%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj166884%_)))))
                                           (_%h166889%_ _%h166887%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h166889%_
                                       _%key166877%_
                                       _%value166880%_))
                                    (if (let* ((_%h166903%_ __load-order)
                                               (_%key166906%_
                                                _%modpath166742%_)
                                               (_%h166913%_
                                                (let ((_%$obj166910%_
                                                       _%h166903%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj166910%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj166910%_)))
                   '#t)
              _%$obj166910%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj166910%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h166915%_ _%h166913%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h166915%_
                                           _%key166906%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h166926%_ __load-order)
                                                 (_%key166929%_
                                                  _%modpath166742%_)
                                                 (_%value166932%_
                                                  __load-order-next)
                                                 (_%h166939%_
                                                  (let ((_%$obj166936%_
                                                         _%h166926%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj166936%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj166936%_)))
                     '#t)
                _%$obj166936%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj166936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h166941%_ _%h166939%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h166941%_
                                             _%key166929%_
                                             _%value166932%_))
                                          (set! __load-order-next
                                                (let* ((_%x166953%_
                                                        __load-order-next)
                                                       (_%x166958%_
                                                        _%x166953%_))
                                                  (declare (not safe))
                                                  (__1+ _%x166958%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path166872%_))))
                           (declare (not safe))
                           (__with-catch __tmp167094 __tmp167093)))
                       _%$e166807%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath166742%_))))))))))
    (define load-module
      (lambda (_%modpath166147%_)
        (if (string? _%modpath166147%_)
            (let ((_%modpath166151%_ _%modpath166147%_))
              (__load-module _%modpath166151%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath166147%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath166588%_)
        (let ((_%modpath166591%_ _%modpath166588%_))
          (mutex-lock! __load-mx)
          (let ((_%$e166626%_
                 (let* ((_%h166600%_ __modules)
                        (_%key166603%_ _%modpath166591%_)
                        (_%h166610%_
                         (let ((_%$obj166607%_ _%h166600%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj166607%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj166607%_)))
                                    '#t)
                               _%$obj166607%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj166607%_)))))
                        (_%h166612%_ _%h166610%_))
                   (declare (not safe))
                   (__hash-get _%h166612%_ _%key166603%_))))
            (if _%$e166626%_
                ((lambda (_%state166629%_)
                   (if (eq? _%state166629%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath166591%_)))
                       (if (eq? 'loading _%state166629%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state166629%_)
                               (let ((_%latest-path166634%_
                                      (__find-library-module
                                       _%modpath166591%_)))
                                 (if (or (equal? (path-extension
                                                  _%state166629%_)
                                                 '".scm")
                                         (not (equal? _%state166629%_
                                                      _%latest-path166634%_)))
                                     (begin
                                       (let* ((_%h166639%_ __modules)
                                              (_%key166642%_ _%modpath166591%_)
                                              (_%h166649%_
                                               (let ((_%$obj166646%_
                                                      _%h166639%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj166646%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj166646%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj166646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj166646%_)))))
                                              (_%h166651%_ _%h166649%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h166651%_
                                          _%key166642%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath166666%_
                                               _%modpath166591%_)
                                              (_%modpath166671%_
                                               _%modpath166666%_))
                                         (__load-module _%modpath166671%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state166629%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state166629%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h166682%_ __modules)
                                            (_%key166685%_ _%modpath166591%_)
                                            (_%h166692%_
                                             (let ((_%$obj166689%_
                                                    _%h166682%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj166689%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj166689%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj166689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj166689%_)))))
                                            (_%h166694%_ _%h166692%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h166694%_
                                        _%key166685%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath166706%_
                                             _%modpath166591%_)
                                            (_%modpath166711%_
                                             _%modpath166706%_))
                                       (__load-module _%modpath166711%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state166629%_))))))))
                 _%$e166626%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath166723%_ _%modpath166591%_)
                         (_%modpath166728%_ _%modpath166723%_))
                    (__load-module _%modpath166728%_))))))))
    (define reload-module!
      (lambda (_%modpath166281%_)
        (if (string? _%modpath166281%_)
            (let ((_%modpath166285%_ _%modpath166281%_))
              (__reload-module! _%modpath166285%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath166281%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath166522%_)
        (letrec ((_%find-compiled-file166524%_
                  (lambda (_%npath166577%_)
                    (let ((_%basepath166579%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath166577%_ '".o"))))
                      (let _%lp166581%_ ((_%current166583%_ '#f)
                                         (_%n166584%_ '1))
                        (let ((_%next166586%_
                               (let ((__tmp167095
                                      (number->string _%n166584%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath166579%_
                                  __tmp167095))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next166586%_))
                              (_%lp166581%_
                               _%next166586%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n166584%_ '1)))
                              _%current166583%_))))))
                 (_%find-source-file166525%_
                  (lambda (_%npath166573%_)
                    (let ((_%spath166575%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath166573%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath166575%_))
                          _%spath166575%_
                          '#f)))))
          (let _%lp166527%_ ((_%rest166529%_ (load-path)))
            (let* ((_%rest166530166538%_ _%rest166529%_)
                   (_%else166532166546%_ (lambda () '#f))
                   (_%K166534166561%_
                    (lambda (_%rest166549%_ _%dir166550%_)
                      (let* ((_%npath166552%_
                              (path-expand
                               _%modpath166522%_
                               (path-expand _%dir166550%_)))
                             (_%$e166554%_
                              (_%find-compiled-file166524%_ _%npath166552%_)))
                        (if _%$e166554%_
                            (path-normalize _%$e166554%_)
                            (let ((_%$e166557%_
                                   (_%find-source-file166525%_
                                    _%npath166552%_)))
                              (if _%$e166557%_
                                  (path-normalize _%$e166557%_)
                                  (_%lp166527%_ _%rest166549%_))))))))
              (if (pair? _%rest166530166538%_)
                  (let ((_%hd166535166564%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest166530166538%_)))
                        (_%tl166536166566%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest166530166538%_))))
                    (let* ((_%dir166569%_ _%hd166535166564%_)
                           (_%rest166571%_ _%tl166536166566%_))
                      (_%K166534166561%_ _%rest166571%_ _%dir166569%_)))
                  (_%else166532166546%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result166520%_
                 (let* ((_%h166499%_ __modules)
                        (_%h166506%_
                         (let ((_%$obj166503%_ _%h166499%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj166503%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj166503%_)))
                                    '#t)
                               _%$obj166503%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj166503%_)))))
                        (_%h166508%_ _%h166506%_))
                   (declare (not safe))
                   (__hash->list _%h166508%_))))
            (mutex-unlock! __load-mx)
            _%result166520%_))))
    (define __module-load-order
      (lambda (_%modpath166429%_)
        (let ((_%modpath166432%_ _%modpath166429%_))
          (mutex-lock! __load-mx)
          (let ((_%ord166495%_
                 (if (eq? (let* ((_%h166441%_ __modules)
                                 (_%key166444%_ _%modpath166432%_)
                                 (_%h166451%_
                                  (let ((_%$obj166448%_ _%h166441%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj166448%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj166448%_)))
                                             '#t)
                                        _%$obj166448%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj166448%_)))))
                                 (_%h166453%_ _%h166451%_))
                            (declare (not safe))
                            (__hash-get _%h166453%_ _%key166444%_))
                          'builtin)
                     '0
                     (let ((_%$e166491%_
                            (let* ((_%h166468%_ __load-order)
                                   (_%key166471%_ _%modpath166432%_)
                                   (_%h166478%_
                                    (let ((_%$obj166475%_ _%h166468%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj166475%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj166475%_)))
                                               '#t)
                                          _%$obj166475%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj166475%_)))))
                                   (_%h166480%_ _%h166478%_))
                              (declare (not safe))
                              (__hash-get _%h166480%_ _%key166471%_))))
                       (if _%$e166491%_ _%$e166491%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord166495%_)
                _%ord166495%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath166432%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath166415%_)
        (if (string? _%modpath166415%_)
            (let ((_%modpath166419%_ _%modpath166415%_))
              (__module-load-order _%modpath166419%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath166415%_)
              '#!void))))))
