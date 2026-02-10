(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1770752336)
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
      (lambda _%paths168143%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths168143%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths168143%_)))
        (let ((__tmp168253
               (lambda (_%p168145%_)
                 (set! __load-path (cons _%p168145%_ __load-path))))
              (__tmp168252 (reverse! _%paths168143%_)))
          (declare (not safe))
          (##for-each __tmp168253 __tmp168252))))
    (define __set-load-path!
      (lambda (_%paths168131%_)
        (let ((_%paths168134%_ _%paths168131%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths168134%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths168134%_)))
          (set! __load-path _%paths168134%_))))
    (define set-load-path!
      (lambda (_%paths167175%_)
        (if (list? _%paths167175%_)
            (let ((_%paths167179%_ _%paths167175%_))
              (__set-load-path! _%paths167179%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths167175%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath167901%_)
        (let ((_%modpath167904%_ _%modpath167901%_))
          (mutex-lock! __load-mx)
          (let ((_%$e167939%_
                 (let* ((_%h167913%_ __modules)
                        (_%key167916%_ _%modpath167904%_)
                        (_%h167923%_
                         (let ((_%$obj167920%_ _%h167913%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj167920%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj167920%_)))
                                    '#t)
                               _%$obj167920%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj167920%_)))))
                        (_%h167925%_ _%h167923%_))
                   (declare (not safe))
                   (__hash-get _%h167925%_ _%key167916%_))))
            (if _%$e167939%_
                ((lambda (_%state167942%_)
                   (if (or (eq? 'builtin _%state167942%_)
                           (string? _%state167942%_))
                       (let () (mutex-unlock! __load-mx) _%state167942%_)
                       (if (eq? 'loading _%state167942%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath167949%_ _%modpath167904%_)
                                    (_%modpath167954%_ _%modpath167949%_))
                               (__load-module _%modpath167954%_)))
                           (if (and (pair? _%state167942%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state167942%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp168254 (cadr _%state167942%_)))
                                   (declare (not safe))
                                   (raise __tmp168254)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state167942%_)))))))
                 _%$e167939%_)
                (let ((_%$e167969%_ (__find-library-module _%modpath167904%_)))
                  (if _%$e167969%_
                      ((lambda (_%path167972%_)
                         (let* ((_%h167974%_ __modules)
                                (_%key167977%_ _%modpath167904%_)
                                (_%value167980%_ 'loading)
                                (_%h167987%_
                                 (let ((_%$obj167984%_ _%h167974%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj167984%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj167984%_)))
                                            '#t)
                                       _%$obj167984%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj167984%_)))))
                                (_%h167989%_ _%h167987%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h167989%_
                            _%key167977%_
                            _%value167980%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp168256
                                (lambda (_%exn168003%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h168005%_ __modules)
                                         (_%key168008%_ _%modpath167904%_)
                                         (_%value168011%_
                                          (cons 'error
                                                (cons _%exn168003%_ '())))
                                         (_%h168018%_
                                          (let ((_%$obj168015%_ _%h168005%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj168015%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj168015%_)))
                                                     '#t)
                                                _%$obj168015%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj168015%_)))))
                                         (_%h168020%_ _%h168018%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h168020%_
                                     _%key168008%_
                                     _%value168011%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn168003%_))))
                               (__tmp168255
                                (lambda ()
                                  (let ((_%loaded-path168034%_
                                         (load _%path167972%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h168036%_ __modules)
                                           (_%key168039%_ _%modpath167904%_)
                                           (_%value168042%_
                                            _%loaded-path168034%_)
                                           (_%h168049%_
                                            (let ((_%$obj168046%_ _%h168036%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj168046%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj168046%_)))
                                                       '#t)
                                                  _%$obj168046%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj168046%_)))))
                                           (_%h168051%_ _%h168049%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h168051%_
                                       _%key168039%_
                                       _%value168042%_))
                                    (if (let* ((_%h168065%_ __load-order)
                                               (_%key168068%_
                                                _%modpath167904%_)
                                               (_%h168075%_
                                                (let ((_%$obj168072%_
                                                       _%h168065%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj168072%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj168072%_)))
                   '#t)
              _%$obj168072%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj168072%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h168077%_ _%h168075%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h168077%_
                                           _%key168068%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h168088%_ __load-order)
                                                 (_%key168091%_
                                                  _%modpath167904%_)
                                                 (_%value168094%_
                                                  __load-order-next)
                                                 (_%h168101%_
                                                  (let ((_%$obj168098%_
                                                         _%h168088%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj168098%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj168098%_)))
                     '#t)
                _%$obj168098%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj168098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h168103%_ _%h168101%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h168103%_
                                             _%key168091%_
                                             _%value168094%_))
                                          (set! __load-order-next
                                                (let* ((_%x168115%_
                                                        __load-order-next)
                                                       (_%x168120%_
                                                        _%x168115%_))
                                                  (declare (not safe))
                                                  (__1+ _%x168120%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path168034%_))))
                           (declare (not safe))
                           (__with-catch __tmp168256 __tmp168255)))
                       _%$e167969%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath167904%_))))))))))
    (define load-module
      (lambda (_%modpath167309%_)
        (if (string? _%modpath167309%_)
            (let ((_%modpath167313%_ _%modpath167309%_))
              (__load-module _%modpath167313%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath167309%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath167750%_)
        (let ((_%modpath167753%_ _%modpath167750%_))
          (mutex-lock! __load-mx)
          (let ((_%$e167788%_
                 (let* ((_%h167762%_ __modules)
                        (_%key167765%_ _%modpath167753%_)
                        (_%h167772%_
                         (let ((_%$obj167769%_ _%h167762%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj167769%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj167769%_)))
                                    '#t)
                               _%$obj167769%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj167769%_)))))
                        (_%h167774%_ _%h167772%_))
                   (declare (not safe))
                   (__hash-get _%h167774%_ _%key167765%_))))
            (if _%$e167788%_
                ((lambda (_%state167791%_)
                   (if (eq? _%state167791%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath167753%_)))
                       (if (eq? 'loading _%state167791%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state167791%_)
                               (let ((_%latest-path167796%_
                                      (__find-library-module
                                       _%modpath167753%_)))
                                 (if (or (equal? (path-extension
                                                  _%state167791%_)
                                                 '".scm")
                                         (not (equal? _%state167791%_
                                                      _%latest-path167796%_)))
                                     (begin
                                       (let* ((_%h167801%_ __modules)
                                              (_%key167804%_ _%modpath167753%_)
                                              (_%h167811%_
                                               (let ((_%$obj167808%_
                                                      _%h167801%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj167808%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj167808%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj167808%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj167808%_)))))
                                              (_%h167813%_ _%h167811%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h167813%_
                                          _%key167804%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath167828%_
                                               _%modpath167753%_)
                                              (_%modpath167833%_
                                               _%modpath167828%_))
                                         (__load-module _%modpath167833%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state167791%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state167791%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h167844%_ __modules)
                                            (_%key167847%_ _%modpath167753%_)
                                            (_%h167854%_
                                             (let ((_%$obj167851%_
                                                    _%h167844%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj167851%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj167851%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj167851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj167851%_)))))
                                            (_%h167856%_ _%h167854%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h167856%_
                                        _%key167847%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath167868%_
                                             _%modpath167753%_)
                                            (_%modpath167873%_
                                             _%modpath167868%_))
                                       (__load-module _%modpath167873%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state167791%_))))))))
                 _%$e167788%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath167885%_ _%modpath167753%_)
                         (_%modpath167890%_ _%modpath167885%_))
                    (__load-module _%modpath167890%_))))))))
    (define reload-module!
      (lambda (_%modpath167443%_)
        (if (string? _%modpath167443%_)
            (let ((_%modpath167447%_ _%modpath167443%_))
              (__reload-module! _%modpath167447%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath167443%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath167684%_)
        (letrec ((_%find-compiled-file167686%_
                  (lambda (_%npath167739%_)
                    (let ((_%basepath167741%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath167739%_ '".o"))))
                      (let _%lp167743%_ ((_%current167745%_ '#f)
                                         (_%n167746%_ '1))
                        (let ((_%next167748%_
                               (let ((__tmp168257
                                      (number->string _%n167746%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath167741%_
                                  __tmp168257))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next167748%_))
                              (_%lp167743%_
                               _%next167748%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n167746%_ '1)))
                              _%current167745%_))))))
                 (_%find-source-file167687%_
                  (lambda (_%npath167735%_)
                    (let ((_%spath167737%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath167735%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath167737%_))
                          _%spath167737%_
                          '#f)))))
          (let _%lp167689%_ ((_%rest167691%_ (load-path)))
            (let* ((_%rest167692167700%_ _%rest167691%_)
                   (_%else167694167708%_ (lambda () '#f))
                   (_%K167696167723%_
                    (lambda (_%rest167711%_ _%dir167712%_)
                      (let* ((_%npath167714%_
                              (path-expand
                               _%modpath167684%_
                               (path-expand _%dir167712%_)))
                             (_%$e167716%_
                              (_%find-compiled-file167686%_ _%npath167714%_)))
                        (if _%$e167716%_
                            (path-normalize _%$e167716%_)
                            (let ((_%$e167719%_
                                   (_%find-source-file167687%_
                                    _%npath167714%_)))
                              (if _%$e167719%_
                                  (path-normalize _%$e167719%_)
                                  (_%lp167689%_ _%rest167711%_))))))))
              (if (pair? _%rest167692167700%_)
                  (let ((_%hd167697167726%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest167692167700%_)))
                        (_%tl167698167728%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest167692167700%_))))
                    (let* ((_%dir167731%_ _%hd167697167726%_)
                           (_%rest167733%_ _%tl167698167728%_))
                      (_%K167696167723%_ _%rest167733%_ _%dir167731%_)))
                  (_%else167694167708%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result167682%_
                 (let* ((_%h167661%_ __modules)
                        (_%h167668%_
                         (let ((_%$obj167665%_ _%h167661%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj167665%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj167665%_)))
                                    '#t)
                               _%$obj167665%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj167665%_)))))
                        (_%h167670%_ _%h167668%_))
                   (declare (not safe))
                   (__hash->list _%h167670%_))))
            (mutex-unlock! __load-mx)
            _%result167682%_))))
    (define __module-load-order
      (lambda (_%modpath167591%_)
        (let ((_%modpath167594%_ _%modpath167591%_))
          (mutex-lock! __load-mx)
          (let ((_%ord167657%_
                 (if (eq? (let* ((_%h167603%_ __modules)
                                 (_%key167606%_ _%modpath167594%_)
                                 (_%h167613%_
                                  (let ((_%$obj167610%_ _%h167603%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj167610%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj167610%_)))
                                             '#t)
                                        _%$obj167610%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj167610%_)))))
                                 (_%h167615%_ _%h167613%_))
                            (declare (not safe))
                            (__hash-get _%h167615%_ _%key167606%_))
                          'builtin)
                     '0
                     (let ((_%$e167653%_
                            (let* ((_%h167630%_ __load-order)
                                   (_%key167633%_ _%modpath167594%_)
                                   (_%h167640%_
                                    (let ((_%$obj167637%_ _%h167630%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj167637%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj167637%_)))
                                               '#t)
                                          _%$obj167637%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj167637%_)))))
                                   (_%h167642%_ _%h167640%_))
                              (declare (not safe))
                              (__hash-get _%h167642%_ _%key167633%_))))
                       (if _%$e167653%_ _%$e167653%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord167657%_)
                _%ord167657%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath167594%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath167577%_)
        (if (string? _%modpath167577%_)
            (let ((_%modpath167581%_ _%modpath167577%_))
              (__module-load-order _%modpath167581%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath167577%_)
              '#!void))))))
