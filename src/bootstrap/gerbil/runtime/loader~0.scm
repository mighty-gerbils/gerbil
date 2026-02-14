(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1771037608)
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
      (lambda _%paths179044%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths179044%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths179044%_)))
        (let ((__tmp179154
               (lambda (_%p179046%_)
                 (set! __load-path (cons _%p179046%_ __load-path))))
              (__tmp179153 (reverse! _%paths179044%_)))
          (declare (not safe))
          (##for-each __tmp179154 __tmp179153))))
    (define __set-load-path!
      (lambda (_%paths179032%_)
        (let ((_%paths179035%_ _%paths179032%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths179035%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths179035%_)))
          (set! __load-path _%paths179035%_))))
    (define set-load-path!
      (lambda (_%paths178076%_)
        (if (list? _%paths178076%_)
            (let ((_%paths178080%_ _%paths178076%_))
              (__set-load-path! _%paths178080%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths178076%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath178802%_)
        (let ((_%modpath178805%_ _%modpath178802%_))
          (mutex-lock! __load-mx)
          (let ((_%$e178840%_
                 (let* ((_%h178814%_ __modules)
                        (_%key178817%_ _%modpath178805%_)
                        (_%h178824%_
                         (let ((_%$obj178821%_ _%h178814%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj178821%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj178821%_)))
                                    '#t)
                               _%$obj178821%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj178821%_)))))
                        (_%h178826%_ _%h178824%_))
                   (declare (not safe))
                   (__hash-get _%h178826%_ _%key178817%_))))
            (if _%$e178840%_
                ((lambda (_%state178843%_)
                   (if (or (eq? 'builtin _%state178843%_)
                           (string? _%state178843%_))
                       (let () (mutex-unlock! __load-mx) _%state178843%_)
                       (if (eq? 'loading _%state178843%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let* ((_%modpath178850%_ _%modpath178805%_)
                                    (_%modpath178855%_ _%modpath178850%_))
                               (__load-module _%modpath178855%_)))
                           (if (and (pair? _%state178843%_)
                                    (eq? (let ()
                                           (declare (not safe))
                                           (##car _%state178843%_))
                                         'error))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ((__tmp179155 (cadr _%state178843%_)))
                                   (declare (not safe))
                                   (raise __tmp179155)))
                               (let ()
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (error '"inernal error; unexpected loading state"
                                          _%state178843%_)))))))
                 _%$e178840%_)
                (let ((_%$e178870%_ (__find-library-module _%modpath178805%_)))
                  (if _%$e178870%_
                      ((lambda (_%path178873%_)
                         (let* ((_%h178875%_ __modules)
                                (_%key178878%_ _%modpath178805%_)
                                (_%value178881%_ 'loading)
                                (_%h178888%_
                                 (let ((_%$obj178885%_ _%h178875%_))
                                   (if (and (let ()
                                              (declare (not safe))
                                              (##structure? _%$obj178885%_))
                                            (eq? HashTable::t
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-type
                                                    _%$obj178885%_)))
                                            '#t)
                                       _%$obj178885%_
                                       (let ()
                                         (declare (not safe))
                                         (cast HashTable::interface
                                               _%$obj178885%_)))))
                                (_%h178890%_ _%h178888%_))
                           (declare (not safe))
                           (__hash-put!
                            _%h178890%_
                            _%key178878%_
                            _%value178881%_))
                         (mutex-unlock! __load-mx)
                         (let ((__tmp179157
                                (lambda (_%exn178904%_)
                                  (mutex-lock! __load-mx)
                                  (let* ((_%h178906%_ __modules)
                                         (_%key178909%_ _%modpath178805%_)
                                         (_%value178912%_
                                          (cons 'error
                                                (cons _%exn178904%_ '())))
                                         (_%h178919%_
                                          (let ((_%$obj178916%_ _%h178906%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj178916%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj178916%_)))
                                                     '#t)
                                                _%$obj178916%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj178916%_)))))
                                         (_%h178921%_ _%h178919%_))
                                    (declare (not safe))
                                    (__hash-put!
                                     _%h178921%_
                                     _%key178909%_
                                     _%value178912%_))
                                  (condition-variable-broadcast! __load-cv)
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (raise _%exn178904%_))))
                               (__tmp179156
                                (lambda ()
                                  (let ((_%loaded-path178935%_
                                         (load _%path178873%_)))
                                    (mutex-lock! __load-mx)
                                    (let* ((_%h178937%_ __modules)
                                           (_%key178940%_ _%modpath178805%_)
                                           (_%value178943%_
                                            _%loaded-path178935%_)
                                           (_%h178950%_
                                            (let ((_%$obj178947%_ _%h178937%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj178947%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj178947%_)))
                                                       '#t)
                                                  _%$obj178947%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj178947%_)))))
                                           (_%h178952%_ _%h178950%_))
                                      (declare (not safe))
                                      (__hash-put!
                                       _%h178952%_
                                       _%key178940%_
                                       _%value178943%_))
                                    (if (let* ((_%h178966%_ __load-order)
                                               (_%key178969%_
                                                _%modpath178805%_)
                                               (_%h178976%_
                                                (let ((_%$obj178973%_
                                                       _%h178966%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj178973%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj178973%_)))
                   '#t)
              _%$obj178973%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj178973%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h178978%_ _%h178976%_))
                                          (declare (not safe))
                                          (__hash-get
                                           _%h178978%_
                                           _%key178969%_))
                                        '#!void
                                        (begin
                                          (let* ((_%h178989%_ __load-order)
                                                 (_%key178992%_
                                                  _%modpath178805%_)
                                                 (_%value178995%_
                                                  __load-order-next)
                                                 (_%h179002%_
                                                  (let ((_%$obj178999%_
                                                         _%h178989%_))
                                                    (if (and (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure? _%$obj178999%_))
                     (eq? HashTable::t
                          (let ()
                            (declare (not safe))
                            (##structure-type _%$obj178999%_)))
                     '#t)
                _%$obj178999%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%$obj178999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%h179004%_ _%h179002%_))
                                            (declare (not safe))
                                            (__hash-put!
                                             _%h179004%_
                                             _%key178992%_
                                             _%value178995%_))
                                          (set! __load-order-next
                                                (let* ((_%x179016%_
                                                        __load-order-next)
                                                       (_%x179021%_
                                                        _%x179016%_))
                                                  (declare (not safe))
                                                  (__1+ _%x179021%_)))))
                                    (condition-variable-broadcast! __load-cv)
                                    (mutex-unlock! __load-mx)
                                    _%loaded-path178935%_))))
                           (declare (not safe))
                           (__with-catch __tmp179157 __tmp179156)))
                       _%$e178870%_)
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath178805%_))))))))))
    (define load-module
      (lambda (_%modpath178210%_)
        (if (string? _%modpath178210%_)
            (let ((_%modpath178214%_ _%modpath178210%_))
              (__load-module _%modpath178214%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath178210%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath178651%_)
        (let ((_%modpath178654%_ _%modpath178651%_))
          (mutex-lock! __load-mx)
          (let ((_%$e178689%_
                 (let* ((_%h178663%_ __modules)
                        (_%key178666%_ _%modpath178654%_)
                        (_%h178673%_
                         (let ((_%$obj178670%_ _%h178663%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj178670%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj178670%_)))
                                    '#t)
                               _%$obj178670%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj178670%_)))))
                        (_%h178675%_ _%h178673%_))
                   (declare (not safe))
                   (__hash-get _%h178675%_ _%key178666%_))))
            (if _%$e178689%_
                ((lambda (_%state178692%_)
                   (if (eq? _%state178692%_ 'builtin)
                       (let ()
                         (mutex-unlock! __load-mx)
                         (let ()
                           (declare (not safe))
                           (error '"cannot reload builtin module"
                                  _%modpath178654%_)))
                       (if (eq? 'loading _%state178692%_)
                           (let ()
                             (mutex-unlock! __load-mx __load-cv)
                             (let ()
                               (declare (not safe))
                               (error '"module is still loading")))
                           (if (string? _%state178692%_)
                               (let ((_%latest-path178697%_
                                      (__find-library-module
                                       _%modpath178654%_)))
                                 (if (or (equal? (path-extension
                                                  _%state178692%_)
                                                 '".scm")
                                         (not (equal? _%state178692%_
                                                      _%latest-path178697%_)))
                                     (begin
                                       (let* ((_%h178702%_ __modules)
                                              (_%key178705%_ _%modpath178654%_)
                                              (_%h178712%_
                                               (let ((_%$obj178709%_
                                                      _%h178702%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj178709%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj178709%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj178709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj178709%_)))))
                                              (_%h178714%_ _%h178712%_))
                                         (declare (not safe))
                                         (__hash-remove!
                                          _%h178714%_
                                          _%key178705%_))
                                       (mutex-unlock! __load-mx)
                                       (let* ((_%modpath178729%_
                                               _%modpath178654%_)
                                              (_%modpath178734%_
                                               _%modpath178729%_))
                                         (__load-module _%modpath178734%_)))
                                     (mutex-unlock! __load-mx)))
                               (if (and (pair? _%state178692%_)
                                        (eq? (let ()
                                               (declare (not safe))
                                               (##car _%state178692%_))
                                             'error))
                                   (let ()
                                     (let* ((_%h178745%_ __modules)
                                            (_%key178748%_ _%modpath178654%_)
                                            (_%h178755%_
                                             (let ((_%$obj178752%_
                                                    _%h178745%_))
                                               (if (and (let ()
                                                          (declare (not safe))
                                                          (##structure?
                                                           _%$obj178752%_))
                                                        (eq? HashTable::t
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-type _%$obj178752%_)))
                '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$obj178752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (cast HashTable::interface
                                                           _%$obj178752%_)))))
                                            (_%h178757%_ _%h178755%_))
                                       (declare (not safe))
                                       (__hash-remove!
                                        _%h178757%_
                                        _%key178748%_))
                                     (mutex-unlock! __load-mx)
                                     (let* ((_%modpath178769%_
                                             _%modpath178654%_)
                                            (_%modpath178774%_
                                             _%modpath178769%_))
                                       (__load-module _%modpath178774%_)))
                                   (let ()
                                     (mutex-unlock! __load-mx)
                                     (let ()
                                       (declare (not safe))
                                       (error '"inernal error; unexpected loading state"
                                              _%state178692%_))))))))
                 _%$e178689%_)
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath178786%_ _%modpath178654%_)
                         (_%modpath178791%_ _%modpath178786%_))
                    (__load-module _%modpath178791%_))))))))
    (define reload-module!
      (lambda (_%modpath178344%_)
        (if (string? _%modpath178344%_)
            (let ((_%modpath178348%_ _%modpath178344%_))
              (__reload-module! _%modpath178348%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath178344%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath178585%_)
        (letrec ((_%find-compiled-file178587%_
                  (lambda (_%npath178640%_)
                    (let ((_%basepath178642%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath178640%_ '".o"))))
                      (let _%lp178644%_ ((_%current178646%_ '#f)
                                         (_%n178647%_ '1))
                        (let ((_%next178649%_
                               (let ((__tmp179158
                                      (number->string _%n178647%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath178642%_
                                  __tmp179158))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next178649%_))
                              (_%lp178644%_
                               _%next178649%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n178647%_ '1)))
                              _%current178646%_))))))
                 (_%find-source-file178588%_
                  (lambda (_%npath178636%_)
                    (let ((_%spath178638%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath178636%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath178638%_))
                          _%spath178638%_
                          '#f)))))
          (let _%lp178590%_ ((_%rest178592%_ (load-path)))
            (let* ((_%rest178593178601%_ _%rest178592%_)
                   (_%else178595178609%_ (lambda () '#f))
                   (_%K178597178624%_
                    (lambda (_%rest178612%_ _%dir178613%_)
                      (let* ((_%npath178615%_
                              (path-expand
                               _%modpath178585%_
                               (path-expand _%dir178613%_)))
                             (_%$e178617%_
                              (_%find-compiled-file178587%_ _%npath178615%_)))
                        (if _%$e178617%_
                            (path-normalize _%$e178617%_)
                            (let ((_%$e178620%_
                                   (_%find-source-file178588%_
                                    _%npath178615%_)))
                              (if _%$e178620%_
                                  (path-normalize _%$e178620%_)
                                  (_%lp178590%_ _%rest178612%_))))))))
              (if (pair? _%rest178593178601%_)
                  (let ((_%hd178598178627%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest178593178601%_)))
                        (_%tl178599178629%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest178593178601%_))))
                    (let* ((_%dir178632%_ _%hd178598178627%_)
                           (_%rest178634%_ _%tl178599178629%_))
                      (_%K178597178624%_ _%rest178634%_ _%dir178632%_)))
                  (_%else178595178609%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result178583%_
                 (let* ((_%h178562%_ __modules)
                        (_%h178569%_
                         (let ((_%$obj178566%_ _%h178562%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj178566%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj178566%_)))
                                    '#t)
                               _%$obj178566%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj178566%_)))))
                        (_%h178571%_ _%h178569%_))
                   (declare (not safe))
                   (__hash->list _%h178571%_))))
            (mutex-unlock! __load-mx)
            _%result178583%_))))
    (define __module-load-order
      (lambda (_%modpath178492%_)
        (let ((_%modpath178495%_ _%modpath178492%_))
          (mutex-lock! __load-mx)
          (let ((_%ord178558%_
                 (if (eq? (let* ((_%h178504%_ __modules)
                                 (_%key178507%_ _%modpath178495%_)
                                 (_%h178514%_
                                  (let ((_%$obj178511%_ _%h178504%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj178511%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj178511%_)))
                                             '#t)
                                        _%$obj178511%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj178511%_)))))
                                 (_%h178516%_ _%h178514%_))
                            (declare (not safe))
                            (__hash-get _%h178516%_ _%key178507%_))
                          'builtin)
                     '0
                     (let ((_%$e178554%_
                            (let* ((_%h178531%_ __load-order)
                                   (_%key178534%_ _%modpath178495%_)
                                   (_%h178541%_
                                    (let ((_%$obj178538%_ _%h178531%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj178538%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj178538%_)))
                                               '#t)
                                          _%$obj178538%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj178538%_)))))
                                   (_%h178543%_ _%h178541%_))
                              (declare (not safe))
                              (__hash-get _%h178543%_ _%key178534%_))))
                       (if _%$e178554%_ _%$e178554%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord178558%_)
                _%ord178558%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath178495%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath178478%_)
        (if (string? _%modpath178478%_)
            (let ((_%modpath178482%_ _%modpath178478%_))
              (__module-load-order _%modpath178482%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath178478%_)
              '#!void))))))
