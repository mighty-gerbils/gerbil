(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1771025399)
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
      (lambda _%paths169447%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths169447%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths169447%_)))
        (let ((__tmp169557
               (lambda (_%p169449%_)
                 (set! __load-path (cons _%p169449%_ __load-path))))
              (__tmp169556 (reverse! _%paths169447%_)))
          (declare (not safe))
          (##for-each __tmp169557 __tmp169556))))
    (define __set-load-path!
      (lambda (_%paths169435%_)
        (let ((_%paths169438%_ _%paths169435%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths169438%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths169438%_)))
          (set! __load-path _%paths169438%_))))
    (define set-load-path!
      (lambda (_%paths168479%_)
        (if (list? _%paths168479%_)
            (let ((_%paths168483%_ _%paths168479%_))
              (__set-load-path! _%paths168483%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths168479%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath169205%_)
        (let ((_%modpath169208%_ _%modpath169205%_))
          (mutex-lock! __load-mx)
          (let ((_%$e169243%_
                 (let* ((_%h169217%_ __modules)
                        (_%key169220%_ _%modpath169208%_)
                        (_%h169227%_
                         (let ((_%$obj169224%_ _%h169217%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169224%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169224%_)))
                                    '#t)
                               _%$obj169224%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169224%_)))))
                        (_%h169229%_ _%h169227%_))
                   (declare (not safe))
                   (__hash-get _%h169229%_ _%key169220%_))))
            (if _%$e169243%_
                ((lambda (_%state169246%_)
                   (if (or (eq? 'builtin _%state169246%_)
                           (string? _%state169246%_))
                       (let () (mutex-unlock! __load-mx) _%state169246%_)
                       (if (eq? 'loading _%state169246%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath169253%_ _%modpath169208%_)
                                    (_%modpath169258%_ _%modpath169253%_))
                               (__load-module _%modpath169258%_)))
                           (if (and (pair? _%state169246%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state169246%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp169558 (cadr _%state169246%_)))
                                   (declare (not safe))
                                   (raise __tmp169558)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state169246%_)))))))
                 _%$e169243%_)
                (let ((_%$e169273%_ (__find-library-module _%modpath169208%_)))
                  (if _%$e169273%_
                      ((lambda (_%path169276%_)
                         (let* ((_%h169278%_ __modules)
                                (_%key169281%_ _%modpath169208%_)
                                (_%value169284%_ 'loading)
                                (_%h169291%_
                                 (let ((_%$obj169288%_ _%h169278%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj169288%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj169288%_)))
                                            '#t)
                                       _%$obj169288%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj169288%_)))))
                                (_%h169293%_ _%h169291%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h169293%_
                            _%key169281%_
                            _%value169284%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp169560
                                (lambda (_%exn169307%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h169309%_ __modules)
                                         (_%key169312%_ _%modpath169208%_)
                                         (_%value169315%_
                                          (cons 'error
                                                (cons _%exn169307%_ '())))
                                         (_%h169322%_
                                          (let ((_%$obj169319%_ _%h169309%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj169319%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj169319%_)))
                                                     '#t)
                                                _%$obj169319%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj169319%_)))))
                                         (_%h169324%_ _%h169322%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h169324%_
                                     _%key169312%_
                                     _%value169315%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn169307%_))))
                               (__tmp169559
                                (lambda ()
                                  (let ((_%loaded-path169338%_
                                         (load _%path169276%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h169340%_ __modules)
                                           (_%key169343%_ _%modpath169208%_)
                                           (_%value169346%_
                                            _%loaded-path169338%_)
                                           (_%h169353%_
                                            (let ((_%$obj169350%_ _%h169340%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj169350%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj169350%_)))
                                                       '#t)
                                                  _%$obj169350%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj169350%_)))))
                                           (_%h169355%_ _%h169353%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h169355%_
                                       _%key169343%_
                                       _%value169346%_))
                                    (if (let* ((_%h169369%_ __load-order)
                                               (_%key169372%_
                                                _%modpath169208%_)
                                               (_%h169379%_
                                                (let ((_%$obj169376%_
                                                       _%h169369%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj169376%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj169376%_)))
                   '#t)
              _%$obj169376%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj169376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h169381%_ _%h169379%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h169381%_
                                           _%key169372%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h169392%_ __load-order)
                                                 (_%key169395%_
                                                  _%modpath169208%_)
                                                 (_%value169398%_
                                                  __load-order-next)
                                                 (_%h169405%_
                                                  (let ((_%$obj169402%_
                                                         _%h169392%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj169402%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj169402%_)))
                     '#t)
                _%$obj169402%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj169402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h169407%_ _%h169405%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h169407%_
                                             _%key169395%_
                                             _%value169398%_))
                                          (set! __load-order-next
                                                (let* ((_%x169419%_
                                                        __load-order-next)
                                                       (_%x169424%_
                                                        _%x169419%_))
                                                  (declare (not safe))
                                                  (__1+ _%x169424%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path169338%_))))
                           (declare (not safe))
                           (__with-catch __tmp169560 __tmp169559)))
                       _%$e169273%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath169208%_))))))))))
    (define load-module
      (lambda (_%modpath168613%_)
        (if (string? _%modpath168613%_)
            (let ((_%modpath168617%_ _%modpath168613%_))
              (__load-module _%modpath168617%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath168613%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath169054%_)
        (let ((_%modpath169057%_ _%modpath169054%_))
          (mutex-lock! __load-mx)
          (let ((_%$e169092%_
                 (let* ((_%h169066%_ __modules)
                        (_%key169069%_ _%modpath169057%_)
                        (_%h169076%_
                         (let ((_%$obj169073%_ _%h169066%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169073%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169073%_)))
                                    '#t)
                               _%$obj169073%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169073%_)))))
                        (_%h169078%_ _%h169076%_))
                   (declare (not safe))
                   (__hash-get _%h169078%_ _%key169069%_))))
            (if _%$e169092%_
                ((lambda (_%state169095%_)
                   (if (eq? _%state169095%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath169057%_)))
                       (if (eq? 'loading _%state169095%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state169095%_)
                               (let ((_%latest-path169100%_
                                      (__find-library-module
                                       _%modpath169057%_)))
                                 (if (or (equal? (path-extension
                                                  _%state169095%_)
                                                 '".scm")
                                         (not (equal? _%state169095%_
                                                      _%latest-path169100%_)))
                                     (begin
                                       (let* ((_%h169105%_ __modules)
                                              (_%key169108%_ _%modpath169057%_)
                                              (_%h169115%_
                                               (let ((_%$obj169112%_
                                                      _%h169105%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj169112%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj169112%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj169112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj169112%_)))))
                                              (_%h169117%_ _%h169115%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h169117%_
                                          _%key169108%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath169132%_
                                               _%modpath169057%_)
                                              (_%modpath169137%_
                                               _%modpath169132%_))
                                         (__load-module _%modpath169137%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state169095%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state169095%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h169148%_ __modules)
                                            (_%key169151%_ _%modpath169057%_)
                                            (_%h169158%_
                                             (let ((_%$obj169155%_
                                                    _%h169148%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj169155%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj169155%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj169155%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj169155%_)))))
                                            (_%h169160%_ _%h169158%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h169160%_
                                        _%key169151%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath169172%_
                                             _%modpath169057%_)
                                            (_%modpath169177%_
                                             _%modpath169172%_))
                                       (__load-module _%modpath169177%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state169095%_))))))))
                 _%$e169092%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath169189%_ _%modpath169057%_)
                         (_%modpath169194%_ _%modpath169189%_))
                    (__load-module _%modpath169194%_))))))))
    (define reload-module!
      (lambda (_%modpath168747%_)
        (if (string? _%modpath168747%_)
            (let ((_%modpath168751%_ _%modpath168747%_))
              (__reload-module! _%modpath168751%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath168747%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath168988%_)
        (letrec ((_%find-compiled-file168990%_
                  (lambda (_%npath169043%_)
                    (let ((_%basepath169045%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath169043%_ '".o"))))
                      (let _%lp169047%_ ((_%current169049%_ '#f)
                                         (_%n169050%_ '1))
                        (let ((_%next169052%_
                               (let ((__tmp169561
                                      (number->string _%n169050%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath169045%_
                                  __tmp169561))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next169052%_))
                              (_%lp169047%_
                               _%next169052%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n169050%_ '1)))
                              _%current169049%_))))))
                 (_%find-source-file168991%_
                  (lambda (_%npath169039%_)
                    (let ((_%spath169041%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath169039%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath169041%_))
                          _%spath169041%_
                          '#f)))))
          (let _%lp168993%_ ((_%rest168995%_ (load-path)))
            (let* ((_%rest168996169004%_ _%rest168995%_)
                   (_%else168998169012%_ (lambda () '#f))
                   (_%K169000169027%_
                    (lambda (_%rest169015%_ _%dir169016%_)
                      (let* ((_%npath169018%_
                              (path-expand
                               _%modpath168988%_
                               (path-expand _%dir169016%_)))
                             (_%$e169020%_
                              (_%find-compiled-file168990%_ _%npath169018%_)))
                        (if _%$e169020%_
                            (path-normalize _%$e169020%_)
                            (let ((_%$e169023%_
                                   (_%find-source-file168991%_
                                    _%npath169018%_)))
                              (if _%$e169023%_
                                  (path-normalize _%$e169023%_)
                                  (_%lp168993%_ _%rest169015%_))))))))
              (if (pair? _%rest168996169004%_)
                  (let ((_%hd169001169030%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest168996169004%_)))
                        (_%tl169002169032%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest168996169004%_))))
                    (let* ((_%dir169035%_ _%hd169001169030%_)
                           (_%rest169037%_ _%tl169002169032%_))
                      (_%K169000169027%_ _%rest169037%_ _%dir169035%_)))
                  (_%else168998169012%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result168986%_
                 (let* ((_%h168965%_ __modules)
                        (_%h168972%_
                         (let ((_%$obj168969%_ _%h168965%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj168969%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj168969%_)))
                                    '#t)
                               _%$obj168969%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj168969%_)))))
                        (_%h168974%_ _%h168972%_))
                   (declare (not safe))
                   (__hash->list _%h168974%_))))
            (mutex-unlock! __load-mx)
            _%result168986%_))))
    (define __module-load-order
      (lambda (_%modpath168895%_)
        (let ((_%modpath168898%_ _%modpath168895%_))
          (mutex-lock! __load-mx)
          (let ((_%ord168961%_
                 (if (eq? (let* ((_%h168907%_ __modules)
                                 (_%key168910%_ _%modpath168898%_)
                                 (_%h168917%_
                                  (let ((_%$obj168914%_ _%h168907%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj168914%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj168914%_)))
                                             '#t)
                                        _%$obj168914%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj168914%_)))))
                                 (_%h168919%_ _%h168917%_))
                            (declare (not safe))
                            (__hash-get _%h168919%_ _%key168910%_))
                          'builtin)
                     '0
                     (let ((_%$e168957%_
                            (let* ((_%h168934%_ __load-order)
                                   (_%key168937%_ _%modpath168898%_)
                                   (_%h168944%_
                                    (let ((_%$obj168941%_ _%h168934%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj168941%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj168941%_)))
                                               '#t)
                                          _%$obj168941%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj168941%_)))))
                                   (_%h168946%_ _%h168944%_))
                              (declare (not safe))
                              (__hash-get _%h168946%_ _%key168937%_))))
                       (if _%$e168957%_ _%$e168957%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord168961%_)
                _%ord168961%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath168898%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath168881%_)
        (if (string? _%modpath168881%_)
            (let ((_%modpath168885%_ _%modpath168881%_))
              (__module-load-order _%modpath168885%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath168881%_)
              '#!void))))))
