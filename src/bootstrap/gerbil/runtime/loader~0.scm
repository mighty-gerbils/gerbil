(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1781119045)
  (begin
    (define __modules (make-hash-table))
    (define __load-mx (make-mutex 'loader))
    (define __load-cv (make-condition-variable 'loader))
    (define __load-path '())
    (define __load-order (make-hash-table))
    (define __load-order-next '1)
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths150249%_
        (if (andmap string? _%paths150249%_)
            '#!void
            (error '"bad load path; expected list of paths" _%paths150249%_))
        (for-each
         (lambda (_%p150251%_)
           (set! __load-path (cons _%p150251%_ __load-path)))
         (reverse! _%paths150249%_))))
    (define __set-load-path!
      (lambda (_%paths150237%_)
        (let ((_%paths150240%_ _%paths150237%_))
          (if (andmap string? _%paths150240%_)
              '#!void
              (error '"bad load path; expected list of paths" _%paths150240%_))
          (set! __load-path _%paths150240%_))))
    (define set-load-path!
      (lambda (_%paths150223%_)
        (if (list? _%paths150223%_)
            (let ((_%paths150227%_ _%paths150223%_))
              (__set-load-path! _%paths150227%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths150223%_)
              (void)))))
    (define __load-module
      (lambda (_%modpath149993%_)
        (let ((_%modpath149996%_ _%modpath149993%_))
          (mutex-lock! __load-mx)
          (let ((_%$e150031%_
                 (let* ((_%h150005%_ __modules)
                        (_%key150008%_ _%modpath149996%_)
                        (_%h150015%_
                         (let ((_%$obj150012%_ _%h150005%_))
                           (if (immediate-instance-of?
                                HashTable::t
                                _%$obj150012%_)
                               _%$obj150012%_
                               (cast HashTable::interface _%$obj150012%_))))
                        (_%h150017%_ _%h150015%_))
                   (__hash-get _%h150017%_ _%key150008%_))))
            (if _%$e150031%_
                ((lambda (_%state150034%_)
                   (if (or (eq? 'builtin _%state150034%_)
                           (string? _%state150034%_))
                       (let () (mutex-unlock! __load-mx) _%state150034%_)
                       (if (eq? 'loading _%state150034%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ((_%modpath150041%_ _%modpath149996%_))
                               (if (string? _%modpath150041%_)
                                   (let ((_%modpath150046%_ _%modpath150041%_))
                                     (__load-module _%modpath150046%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/loader
                                      'contract:
                                      'string?
                                      'value:
                                      _%modpath150041%_)
                                     (void)))))
                           (if (and (pair? _%state150034%_)
                                    (eq? (car _%state150034%_) 'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (raise (cadr _%state150034%_)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (error '"inernal error; unexpected loading state"
                                        _%state150034%_))))))
                 _%$e150031%_)
                (let ((_%$e150061%_ (__find-library-module _%modpath149996%_)))
                  (if _%$e150061%_
                      ((lambda (_%path150064%_)
                         (let* ((_%h150066%_ __modules)
                                (_%key150069%_ _%modpath149996%_)
                                (_%value150072%_ 'loading)
                                (_%h150079%_
                                 (let ((_%$obj150076%_ _%h150066%_))
                                   (if (immediate-instance-of?
                                        HashTable::t
                                        _%$obj150076%_)
                                       _%$obj150076%_
                                       (cast HashTable::interface
                                             _%$obj150076%_))))
                                (_%h150081%_ _%h150079%_))
                           (__hash-put!
                            _%h150081%_
                            _%key150069%_
                            _%value150072%_))
                         (mutex-unlock! __load-mx)
                         (with-catch
                          (lambda (_%exn150095%_)
                            (mutex-lock! __load-mx)
                            (let* ((_%h150097%_ __modules)
                                   (_%key150100%_ _%modpath149996%_)
                                   (_%value150103%_
                                    (cons 'error (cons _%exn150095%_ '())))
                                   (_%h150110%_
                                    (let ((_%$obj150107%_ _%h150097%_))
                                      (if (immediate-instance-of?
                                           HashTable::t
                                           _%$obj150107%_)
                                          _%$obj150107%_
                                          (cast HashTable::interface
                                                _%$obj150107%_))))
                                   (_%h150112%_ _%h150110%_))
                              (__hash-put!
                               _%h150112%_
                               _%key150100%_
                               _%value150103%_))
                            (condition-variable-broadcast! __load-cv)
                            (mutex-unlock! __load-mx)
                            (raise _%exn150095%_))
                          (lambda ()
                            (let ((_%loaded-path150126%_
                                   (load _%path150064%_)))
                              (mutex-lock! __load-mx)
                              (let* ((_%h150128%_ __modules)
                                     (_%key150131%_ _%modpath149996%_)
                                     (_%value150134%_ _%loaded-path150126%_)
                                     (_%h150141%_
                                      (let ((_%$obj150138%_ _%h150128%_))
                                        (if (immediate-instance-of?
                                             HashTable::t
                                             _%$obj150138%_)
                                            _%$obj150138%_
                                            (cast HashTable::interface
                                                  _%$obj150138%_))))
                                     (_%h150143%_ _%h150141%_))
                                (__hash-put!
                                 _%h150143%_
                                 _%key150131%_
                                 _%value150134%_))
                              (if (let* ((_%h150157%_ __load-order)
                                         (_%key150160%_ _%modpath149996%_)
                                         (_%h150167%_
                                          (let ((_%$obj150164%_ _%h150157%_))
                                            (if (immediate-instance-of?
                                                 HashTable::t
                                                 _%$obj150164%_)
                                                _%$obj150164%_
                                                (cast HashTable::interface
                                                      _%$obj150164%_))))
                                         (_%h150169%_ _%h150167%_))
                                    (__hash-get _%h150169%_ _%key150160%_))
                                  '#!void
                                  (begin
                                    (let* ((_%h150180%_ __load-order)
                                           (_%key150183%_ _%modpath149996%_)
                                           (_%value150186%_ __load-order-next)
                                           (_%h150193%_
                                            (let ((_%$obj150190%_ _%h150180%_))
                                              (if (immediate-instance-of?
                                                   HashTable::t
                                                   _%$obj150190%_)
                                                  _%$obj150190%_
                                                  (cast HashTable::interface
                                                        _%$obj150190%_))))
                                           (_%h150195%_ _%h150193%_))
                                      (__hash-put!
                                       _%h150195%_
                                       _%key150183%_
                                       _%value150186%_))
                                    (set! __load-order-next
                                          (let ((_%x150207%_
                                                 __load-order-next))
                                            (if (number? _%x150207%_)
                                                (let ((_%x150212%_
                                                       _%x150207%_))
                                                  (__1+ _%x150212%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/loader
                                                   'contract:
                                                   'number?
                                                   'value:
                                                   _%x150207%_)
                                                  (void)))))))
                              (condition-variable-broadcast! __load-cv)
                              (mutex-unlock! __load-mx)
                              _%loaded-path150126%_))))
                       _%$e150061%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (error '"module not found" _%modpath149996%_)))))))))
    (define load-module
      (lambda (_%modpath149979%_)
        (if (string? _%modpath149979%_)
            (let ((_%modpath149983%_ _%modpath149979%_))
              (__load-module _%modpath149983%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath149979%_)
              (void)))))
    (define __reload-module!
      (lambda (_%modpath149828%_)
        (let ((_%modpath149831%_ _%modpath149828%_))
          (mutex-lock! __load-mx)
          (let ((_%$e149866%_
                 (let* ((_%h149840%_ __modules)
                        (_%key149843%_ _%modpath149831%_)
                        (_%h149850%_
                         (let ((_%$obj149847%_ _%h149840%_))
                           (if (immediate-instance-of?
                                HashTable::t
                                _%$obj149847%_)
                               _%$obj149847%_
                               (cast HashTable::interface _%$obj149847%_))))
                        (_%h149852%_ _%h149850%_))
                   (__hash-get _%h149852%_ _%key149843%_))))
            (if _%$e149866%_
                ((lambda (_%state149869%_)
                   (if (eq? _%state149869%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (error '"cannot reload builtin module"
                                _%modpath149831%_))
                       (if (eq? 'loading _%state149869%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (error '"module is still loading"))
                           (if (string? _%state149869%_)
                               (let ((_%latest-path149874%_
                                      (__find-library-module
                                       _%modpath149831%_)))
                                 (if (or (equal? (path-extension
                                                  _%state149869%_)
                                                 '".scm")
                                         (not (equal? _%state149869%_
                                                      _%latest-path149874%_)))
                                     (begin
                                       (let* ((_%h149879%_ __modules)
                                              (_%key149882%_ _%modpath149831%_)
                                              (_%h149889%_
                                               (let ((_%$obj149886%_
                                                      _%h149879%_))
                                                 (if (immediate-instance-of?
                                                      HashTable::t
                                                      _%$obj149886%_)
                                                     _%$obj149886%_
                                                     (cast HashTable::interface
                                                           _%$obj149886%_))))
                                              (_%h149891%_ _%h149889%_))
                                         (__hash-remove!
                                          _%h149891%_
                                          _%key149882%_))
                                       (mutex-unlock! __load-mx)
                                       (let ((_%modpath149906%_
                                              _%modpath149831%_))
                                         (if (string? _%modpath149906%_)
                                             (let ((_%modpath149911%_
                                                    _%modpath149906%_))
                                               (__load-module
                                                _%modpath149911%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/loader
                                                'contract:
                                                'string?
                                                'value:
                                                _%modpath149906%_)
                                               (void)))))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state149869%_)
                                        (eq? (car _%state149869%_) 'error))
                                   (let ()
                                     (let* ((_%h149922%_ __modules)
                                            (_%key149925%_ _%modpath149831%_)
                                            (_%h149932%_
                                             (let ((_%$obj149929%_
                                                    _%h149922%_))
                                               (if (immediate-instance-of?
                                                    HashTable::t
                                                    _%$obj149929%_)
                                                   _%$obj149929%_
                                                   (cast HashTable::interface
                                                         _%$obj149929%_))))
                                            (_%h149934%_ _%h149932%_))
                                       (__hash-remove!
                                        _%h149934%_
                                        _%key149925%_))
                                     (mutex-unlock! __load-mx)
                                     (let ((_%modpath149946%_
                                            _%modpath149831%_))
                                       (if (string? _%modpath149946%_)
                                           (let ((_%modpath149951%_
                                                  _%modpath149946%_))
                                             (__load-module _%modpath149951%_))
                                           (begin
                                             (raise-contract-violation-error
                                              '"contract violation"
                                              'context:
                                              'gerbil/runtime/loader
                                              'contract:
                                              'string?
                                              'value:
                                              _%modpath149946%_)
                                             (void)))))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (error '"inernal error; unexpected loading state"
                                            _%state149869%_)))))))
                 _%$e149866%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let ((_%modpath149963%_ _%modpath149831%_))
                    (if (string? _%modpath149963%_)
                        (let ((_%modpath149968%_ _%modpath149963%_))
                          (__load-module _%modpath149968%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/loader
                           'contract:
                           'string?
                           'value:
                           _%modpath149963%_)
                          (void))))))))))
    (define reload-module!
      (lambda (_%modpath149814%_)
        (if (string? _%modpath149814%_)
            (let ((_%modpath149818%_ _%modpath149814%_))
              (__reload-module! _%modpath149818%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath149814%_)
              (void)))))
    (define __find-library-module
      (lambda (_%modpath149748%_)
        (letrec ((_%find-compiled-file149750%_
                  (lambda (_%npath149803%_)
                    (let ((_%basepath149805%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath149803%_ '".o"))))
                      (let _%lp149807%_ ((_%current149809%_ '#f)
                                         (_%n149810%_ '1))
                        (let ((_%next149812%_
                               (let ((__tmp150254
                                      (number->string _%n149810%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath149805%_
                                  __tmp150254))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next149812%_))
                              (_%lp149807%_
                               _%next149812%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n149810%_ '1)))
                              _%current149809%_))))))
                 (_%find-source-file149751%_
                  (lambda (_%npath149799%_)
                    (let ((_%spath149801%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath149799%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath149801%_))
                          _%spath149801%_
                          '#f)))))
          (let _%lp149753%_ ((_%rest149755%_ (load-path)))
            (let* ((_%$%rest149756149764%_ _%rest149755%_)
                   (_%$%E149759149768%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest149756149764%_
                             '([dir . rest])
                             'else)
                      (void)))
                   (_%$%else149758149772%_ (lambda () '#f))
                   (_%$%K149760149787%_
                    (lambda (_%rest149775%_ _%dir149776%_)
                      (let* ((_%npath149778%_
                              (path-expand
                               _%modpath149748%_
                               (path-expand _%dir149776%_)))
                             (_%$e149780%_
                              (_%find-compiled-file149750%_ _%npath149778%_)))
                        (if _%$e149780%_
                            (path-normalize _%$e149780%_)
                            (let ((_%$e149783%_
                                   (_%find-source-file149751%_
                                    _%npath149778%_)))
                              (if _%$e149783%_
                                  (path-normalize _%$e149783%_)
                                  (_%lp149753%_ _%rest149775%_))))))))
              (if (pair? _%$%rest149756149764%_)
                  (let ((_%$%hd149761149790%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest149756149764%_)))
                        (_%$%tl149762149792%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest149756149764%_))))
                    (let* ((_%dir149795%_ _%$%hd149761149790%_)
                           (_%rest149797%_ _%$%tl149762149792%_))
                      (_%$%K149760149787%_ _%rest149797%_ _%dir149795%_)))
                  (_%$%else149758149772%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result149746%_
                 (let* ((_%h149725%_ __modules)
                        (_%h149732%_
                         (let ((_%$obj149729%_ _%h149725%_))
                           (if (immediate-instance-of?
                                HashTable::t
                                _%$obj149729%_)
                               _%$obj149729%_
                               (cast HashTable::interface _%$obj149729%_))))
                        (_%h149734%_ _%h149732%_))
                   (__hash->list _%h149734%_))))
            (mutex-unlock! __load-mx)
            _%result149746%_))))
    (define __module-load-order
      (lambda (_%modpath149655%_)
        (let ((_%modpath149658%_ _%modpath149655%_))
          (mutex-lock! __load-mx)
          (let ((_%ord149721%_
                 (if (eq? (let* ((_%h149667%_ __modules)
                                 (_%key149670%_ _%modpath149658%_)
                                 (_%h149677%_
                                  (let ((_%$obj149674%_ _%h149667%_))
                                    (if (immediate-instance-of?
                                         HashTable::t
                                         _%$obj149674%_)
                                        _%$obj149674%_
                                        (cast HashTable::interface
                                              _%$obj149674%_))))
                                 (_%h149679%_ _%h149677%_))
                            (__hash-get _%h149679%_ _%key149670%_))
                          'builtin)
                     '0
                     (let ((_%$e149717%_
                            (let* ((_%h149694%_ __load-order)
                                   (_%key149697%_ _%modpath149658%_)
                                   (_%h149704%_
                                    (let ((_%$obj149701%_ _%h149694%_))
                                      (if (immediate-instance-of?
                                           HashTable::t
                                           _%$obj149701%_)
                                          _%$obj149701%_
                                          (cast HashTable::interface
                                                _%$obj149701%_))))
                                   (_%h149706%_ _%h149704%_))
                              (__hash-get _%h149706%_ _%key149697%_))))
                       (if _%$e149717%_ _%$e149717%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord149721%_)
                _%ord149721%_
                (begin
                  (error '"unknown module load order"
                         'module:
                         _%modpath149658%_)
                  (void)))))))
    (define module-load-order
      (lambda (_%modpath149641%_)
        (if (string? _%modpath149641%_)
            (let ((_%modpath149645%_ _%modpath149641%_))
              (__module-load-order _%modpath149645%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath149641%_)
              (void)))))))
