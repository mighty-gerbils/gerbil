(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1770513296)
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
      (lambda _%paths167073%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths167073%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths167073%_)))
        (let ((__tmp167183
               (lambda (_%p167075%_)
                 (set! __load-path (cons _%p167075%_ __load-path))))
              (__tmp167182 (reverse! _%paths167073%_)))
          (declare (not safe))
          (##for-each __tmp167183 __tmp167182))))
    (define __set-load-path!
      (lambda (_%paths167061%_)
        (let ((_%paths167064%_ _%paths167061%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths167064%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths167064%_)))
          (set! __load-path _%paths167064%_))))
    (define set-load-path!
      (lambda (_%paths166105%_)
        (if (list? _%paths166105%_)
            (let ((_%paths166109%_ _%paths166105%_))
              (__set-load-path! _%paths166109%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths166105%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath166831%_)
        (let ((_%modpath166834%_ _%modpath166831%_))
          (mutex-lock! __load-mx)
          (let ((_%$e166869%_
                 (let* ((_%h166843%_ __modules)
                        (_%key166846%_ _%modpath166834%_)
                        (_%h166853%_
                         (let ((_%$obj166850%_ _%h166843%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj166850%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj166850%_)))
                                    '#t)
                               _%$obj166850%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj166850%_)))))
                        (_%h166855%_ _%h166853%_))
                   (declare (not safe))
                   (__hash-get _%h166855%_ _%key166846%_))))
            (if _%$e166869%_
                ((lambda (_%state166872%_)
                   (if (or (eq? 'builtin _%state166872%_)
                           (string? _%state166872%_))
                       (let () (mutex-unlock! __load-mx) _%state166872%_)
                       (if (eq? 'loading _%state166872%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath166879%_ _%modpath166834%_)
                                    (_%modpath166884%_ _%modpath166879%_))
                               (__load-module _%modpath166884%_)))
                           (if (and (pair? _%state166872%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state166872%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp167184 (cadr _%state166872%_)))
                                   (declare (not safe))
                                   (raise __tmp167184)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state166872%_)))))))
                 _%$e166869%_)
                (let ((_%$e166899%_ (__find-library-module _%modpath166834%_)))
                  (if _%$e166899%_
                      ((lambda (_%path166902%_)
                         (let* ((_%h166904%_ __modules)
                                (_%key166907%_ _%modpath166834%_)
                                (_%value166910%_ 'loading)
                                (_%h166917%_
                                 (let ((_%$obj166914%_ _%h166904%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj166914%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj166914%_)))
                                            '#t)
                                       _%$obj166914%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj166914%_)))))
                                (_%h166919%_ _%h166917%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h166919%_
                            _%key166907%_
                            _%value166910%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp167186
                                (lambda (_%exn166933%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h166935%_ __modules)
                                         (_%key166938%_ _%modpath166834%_)
                                         (_%value166941%_
                                          (cons 'error
                                                (cons _%exn166933%_ '())))
                                         (_%h166948%_
                                          (let ((_%$obj166945%_ _%h166935%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj166945%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj166945%_)))
                                                     '#t)
                                                _%$obj166945%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj166945%_)))))
                                         (_%h166950%_ _%h166948%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h166950%_
                                     _%key166938%_
                                     _%value166941%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn166933%_))))
                               (__tmp167185
                                (lambda ()
                                  (let ((_%loaded-path166964%_
                                         (load _%path166902%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h166966%_ __modules)
                                           (_%key166969%_ _%modpath166834%_)
                                           (_%value166972%_
                                            _%loaded-path166964%_)
                                           (_%h166979%_
                                            (let ((_%$obj166976%_ _%h166966%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj166976%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj166976%_)))
                                                       '#t)
                                                  _%$obj166976%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj166976%_)))))
                                           (_%h166981%_ _%h166979%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h166981%_
                                       _%key166969%_
                                       _%value166972%_))
                                    (if (let* ((_%h166995%_ __load-order)
                                               (_%key166998%_
                                                _%modpath166834%_)
                                               (_%h167005%_
                                                (let ((_%$obj167002%_
                                                       _%h166995%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj167002%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj167002%_)))
                   '#t)
              _%$obj167002%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj167002%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h167007%_ _%h167005%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h167007%_
                                           _%key166998%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h167018%_ __load-order)
                                                 (_%key167021%_
                                                  _%modpath166834%_)
                                                 (_%value167024%_
                                                  __load-order-next)
                                                 (_%h167031%_
                                                  (let ((_%$obj167028%_
                                                         _%h167018%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj167028%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj167028%_)))
                     '#t)
                _%$obj167028%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj167028%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h167033%_ _%h167031%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h167033%_
                                             _%key167021%_
                                             _%value167024%_))
                                          (set! __load-order-next
                                                (let* ((_%x167045%_
                                                        __load-order-next)
                                                       (_%x167050%_
                                                        _%x167045%_))
                                                  (declare (not safe))
                                                  (__1+ _%x167050%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path166964%_))))
                           (declare (not safe))
                           (__with-catch __tmp167186 __tmp167185)))
                       _%$e166899%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath166834%_))))))))))
    (define load-module
      (lambda (_%modpath166239%_)
        (if (string? _%modpath166239%_)
            (let ((_%modpath166243%_ _%modpath166239%_))
              (__load-module _%modpath166243%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath166239%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath166680%_)
        (let ((_%modpath166683%_ _%modpath166680%_))
          (mutex-lock! __load-mx)
          (let ((_%$e166718%_
                 (let* ((_%h166692%_ __modules)
                        (_%key166695%_ _%modpath166683%_)
                        (_%h166702%_
                         (let ((_%$obj166699%_ _%h166692%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj166699%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj166699%_)))
                                    '#t)
                               _%$obj166699%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj166699%_)))))
                        (_%h166704%_ _%h166702%_))
                   (declare (not safe))
                   (__hash-get _%h166704%_ _%key166695%_))))
            (if _%$e166718%_
                ((lambda (_%state166721%_)
                   (if (eq? _%state166721%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath166683%_)))
                       (if (eq? 'loading _%state166721%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state166721%_)
                               (let ((_%latest-path166726%_
                                      (__find-library-module
                                       _%modpath166683%_)))
                                 (if (or (equal? (path-extension
                                                  _%state166721%_)
                                                 '".scm")
                                         (not (equal? _%state166721%_
                                                      _%latest-path166726%_)))
                                     (begin
                                       (let* ((_%h166731%_ __modules)
                                              (_%key166734%_ _%modpath166683%_)
                                              (_%h166741%_
                                               (let ((_%$obj166738%_
                                                      _%h166731%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj166738%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj166738%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj166738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj166738%_)))))
                                              (_%h166743%_ _%h166741%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h166743%_
                                          _%key166734%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath166758%_
                                               _%modpath166683%_)
                                              (_%modpath166763%_
                                               _%modpath166758%_))
                                         (__load-module _%modpath166763%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state166721%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state166721%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h166774%_ __modules)
                                            (_%key166777%_ _%modpath166683%_)
                                            (_%h166784%_
                                             (let ((_%$obj166781%_
                                                    _%h166774%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj166781%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj166781%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj166781%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj166781%_)))))
                                            (_%h166786%_ _%h166784%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h166786%_
                                        _%key166777%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath166798%_
                                             _%modpath166683%_)
                                            (_%modpath166803%_
                                             _%modpath166798%_))
                                       (__load-module _%modpath166803%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state166721%_))))))))
                 _%$e166718%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath166815%_ _%modpath166683%_)
                         (_%modpath166820%_ _%modpath166815%_))
                    (__load-module _%modpath166820%_))))))))
    (define reload-module!
      (lambda (_%modpath166373%_)
        (if (string? _%modpath166373%_)
            (let ((_%modpath166377%_ _%modpath166373%_))
              (__reload-module! _%modpath166377%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath166373%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath166614%_)
        (letrec ((_%find-compiled-file166616%_
                  (lambda (_%npath166669%_)
                    (let ((_%basepath166671%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath166669%_ '".o"))))
                      (let _%lp166673%_ ((_%current166675%_ '#f)
                                         (_%n166676%_ '1))
                        (let ((_%next166678%_
                               (let ((__tmp167187
                                      (number->string _%n166676%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath166671%_
                                  __tmp167187))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next166678%_))
                              (_%lp166673%_
                               _%next166678%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n166676%_ '1)))
                              _%current166675%_))))))
                 (_%find-source-file166617%_
                  (lambda (_%npath166665%_)
                    (let ((_%spath166667%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath166665%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath166667%_))
                          _%spath166667%_
                          '#f)))))
          (let _%lp166619%_ ((_%rest166621%_ (load-path)))
            (let* ((_%rest166622166630%_ _%rest166621%_)
                   (_%else166624166638%_ (lambda () '#f))
                   (_%K166626166653%_
                    (lambda (_%rest166641%_ _%dir166642%_)
                      (let* ((_%npath166644%_
                              (path-expand
                               _%modpath166614%_
                               (path-expand _%dir166642%_)))
                             (_%$e166646%_
                              (_%find-compiled-file166616%_ _%npath166644%_)))
                        (if _%$e166646%_
                            (path-normalize _%$e166646%_)
                            (let ((_%$e166649%_
                                   (_%find-source-file166617%_
                                    _%npath166644%_)))
                              (if _%$e166649%_
                                  (path-normalize _%$e166649%_)
                                  (_%lp166619%_ _%rest166641%_))))))))
              (if (pair? _%rest166622166630%_)
                  (let ((_%hd166627166656%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest166622166630%_)))
                        (_%tl166628166658%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest166622166630%_))))
                    (let* ((_%dir166661%_ _%hd166627166656%_)
                           (_%rest166663%_ _%tl166628166658%_))
                      (_%K166626166653%_ _%rest166663%_ _%dir166661%_)))
                  (_%else166624166638%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result166612%_
                 (let* ((_%h166591%_ __modules)
                        (_%h166598%_
                         (let ((_%$obj166595%_ _%h166591%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj166595%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj166595%_)))
                                    '#t)
                               _%$obj166595%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj166595%_)))))
                        (_%h166600%_ _%h166598%_))
                   (declare (not safe))
                   (__hash->list _%h166600%_))))
            (mutex-unlock! __load-mx)
            _%result166612%_))))
    (define __module-load-order
      (lambda (_%modpath166521%_)
        (let ((_%modpath166524%_ _%modpath166521%_))
          (mutex-lock! __load-mx)
          (let ((_%ord166587%_
                 (if (eq? (let* ((_%h166533%_ __modules)
                                 (_%key166536%_ _%modpath166524%_)
                                 (_%h166543%_
                                  (let ((_%$obj166540%_ _%h166533%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj166540%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj166540%_)))
                                             '#t)
                                        _%$obj166540%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj166540%_)))))
                                 (_%h166545%_ _%h166543%_))
                            (declare (not safe))
                            (__hash-get _%h166545%_ _%key166536%_))
                          'builtin)
                     '0
                     (let ((_%$e166583%_
                            (let* ((_%h166560%_ __load-order)
                                   (_%key166563%_ _%modpath166524%_)
                                   (_%h166570%_
                                    (let ((_%$obj166567%_ _%h166560%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj166567%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj166567%_)))
                                               '#t)
                                          _%$obj166567%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj166567%_)))))
                                   (_%h166572%_ _%h166570%_))
                              (declare (not safe))
                              (__hash-get _%h166572%_ _%key166563%_))))
                       (if _%$e166583%_ _%$e166583%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord166587%_)
                _%ord166587%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath166524%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath166507%_)
        (if (string? _%modpath166507%_)
            (let ((_%modpath166511%_ _%modpath166507%_))
              (__module-load-order _%modpath166511%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath166507%_)
              '#!void))))))
