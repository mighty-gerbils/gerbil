(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1784471381)
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
      (lambda _%paths179146%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths179146%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths179146%_)))
        (let ((__tmp179256
               (lambda (_%p179148%_)
                 (set! __load-path (cons _%p179148%_ __load-path))))
              (__tmp179255 (reverse! _%paths179146%_)))
          (declare (not safe))
          (##for-each __tmp179256 __tmp179255))))
    (define __set-load-path!
      (lambda (_%paths179134%_)
        (let ((_%paths179137%_ _%paths179134%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths179137%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths179137%_)))
          (set! __load-path _%paths179137%_))))
    (define set-load-path!
      (lambda (_%paths179120%_)
        (if (list? _%paths179120%_)
            (let ((_%paths179124%_ _%paths179120%_))
              (__set-load-path! _%paths179124%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths179120%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath178890%_)
        (let ((_%modpath178893%_ _%modpath178890%_))
          (mutex-lock! __load-mx)
          (let ((_%$e178928%_
                 (let* ((_%h178902%_ __modules)
                        (_%key178905%_ _%modpath178893%_)
                        (_%h178912%_
                         (let ((_%$obj178909%_ _%h178902%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj178909%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj178909%_)))
                                    '#t)
                               _%$obj178909%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj178909%_)))))
                        (_%h178914%_ _%h178912%_))
                   (declare (not safe))
                   (__hash-get _%h178914%_ _%key178905%_))))
            (if _%$e178928%_
                (if (or (eq? 'builtin _%$e178928%_) (string? _%$e178928%_))
                    (let () (mutex-unlock! __load-mx) _%$e178928%_)
                    (if (eq? 'loading _%$e178928%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath178938%_ _%modpath178893%_)
                                 (_%modpath178943%_ _%modpath178938%_))
                            (__load-module _%modpath178943%_)))
                        (if (and (pair? _%$e178928%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e178928%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp179257 (cadr _%$e178928%_)))
                                (declare (not safe))
                                (raise __tmp179257)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e178928%_))))))
                (let ((_%$e178958%_ (__find-library-module _%modpath178893%_)))
                  (if _%$e178958%_
                      (let ()
                        (let* ((_%h178963%_ __modules)
                               (_%key178966%_ _%modpath178893%_)
                               (_%value178969%_ 'loading)
                               (_%h178976%_
                                (let ((_%$obj178973%_ _%h178963%_))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (##structure? _%$obj178973%_))
                                           (eq? HashTable::t
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-type
                                                   _%$obj178973%_)))
                                           '#t)
                                      _%$obj178973%_
                                      (let ()
                                        (declare (not safe))
                                        (cast HashTable::interface
                                              _%$obj178973%_)))))
                               (_%h178978%_ _%h178976%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h178978%_
                           _%key178966%_
                           _%value178969%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp179259
                               (lambda (_%exn178992%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h178994%_ __modules)
                                        (_%key178997%_ _%modpath178893%_)
                                        (_%value179000%_
                                         (list 'error _%exn178992%_))
                                        (_%h179007%_
                                         (let ((_%$obj179004%_ _%h178994%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj179004%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj179004%_)))
                                                    '#t)
                                               _%$obj179004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj179004%_)))))
                                        (_%h179009%_ _%h179007%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h179009%_
                                    _%key178997%_
                                    _%value179000%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn178992%_))))
                              (__tmp179258
                               (lambda ()
                                 (let ((_%loaded-path179023%_
                                        (load _%$e178958%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h179025%_ __modules)
                                          (_%key179028%_ _%modpath178893%_)
                                          (_%value179031%_
                                           _%loaded-path179023%_)
                                          (_%h179038%_
                                           (let ((_%$obj179035%_ _%h179025%_))
                                             (if (and (let ()
                                                        (declare (not safe))
                                                        (##structure?
                                                         _%$obj179035%_))
                                                      (eq? HashTable::t
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-type
                                                              _%$obj179035%_)))
                                                      '#t)
                                                 _%$obj179035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (cast HashTable::interface
                                                         _%$obj179035%_)))))
                                          (_%h179040%_ _%h179038%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h179040%_
                                      _%key179028%_
                                      _%value179031%_))
                                   (if (let* ((_%h179054%_ __load-order)
                                              (_%key179057%_ _%modpath178893%_)
                                              (_%h179064%_
                                               (let ((_%$obj179061%_
                                                      _%h179054%_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure?
                                                             _%$obj179061%_))
                                                          (eq? HashTable::t
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-type _%$obj179061%_)))
                  '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$obj179061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cast HashTable::interface
                                                             _%$obj179061%_)))))
                                              (_%h179066%_ _%h179064%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h179066%_
                                          _%key179057%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h179077%_ __load-order)
                                                (_%key179080%_
                                                 _%modpath178893%_)
                                                (_%value179083%_
                                                 __load-order-next)
                                                (_%h179090%_
                                                 (let ((_%$obj179087%_
                                                        _%h179077%_))
                                                   (if (and (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure?
                                                               _%$obj179087%_))
                                                            (eq? HashTable::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##structure-type _%$obj179087%_)))
                    '#t)
               _%$obj179087%_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _%$obj179087%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%h179092%_ _%h179090%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h179092%_
                                            _%key179080%_
                                            _%value179083%_))
                                         (set! __load-order-next
                                               (let* ((_%x179104%_
                                                       __load-order-next)
                                                      (_%x179109%_
                                                       _%x179104%_))
                                                 (declare (not safe))
                                                 (__1+ _%x179109%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path179023%_))))
                          (declare (not safe))
                          (__with-catch __tmp179259 __tmp179258)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath178893%_))))))))))
    (define load-module
      (lambda (_%modpath178876%_)
        (if (string? _%modpath178876%_)
            (let ((_%modpath178880%_ _%modpath178876%_))
              (__load-module _%modpath178880%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath178876%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath178725%_)
        (let ((_%modpath178728%_ _%modpath178725%_))
          (mutex-lock! __load-mx)
          (let ((_%$e178763%_
                 (let* ((_%h178737%_ __modules)
                        (_%key178740%_ _%modpath178728%_)
                        (_%h178747%_
                         (let ((_%$obj178744%_ _%h178737%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj178744%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj178744%_)))
                                    '#t)
                               _%$obj178744%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj178744%_)))))
                        (_%h178749%_ _%h178747%_))
                   (declare (not safe))
                   (__hash-get _%h178749%_ _%key178740%_))))
            (if _%$e178763%_
                (if (eq? _%$e178763%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath178728%_)))
                    (if (eq? 'loading _%$e178763%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e178763%_)
                            (let ((_%latest-path178771%_
                                   (__find-library-module _%modpath178728%_)))
                              (if (or (equal? (path-extension _%$e178763%_)
                                              '".scm")
                                      (not (equal? _%$e178763%_
                                                   _%latest-path178771%_)))
                                  (begin
                                    (let* ((_%h178776%_ __modules)
                                           (_%key178779%_ _%modpath178728%_)
                                           (_%h178786%_
                                            (let ((_%$obj178783%_ _%h178776%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (##structure?
                                                          _%$obj178783%_))
                                                       (eq? HashTable::t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-type
                                                               _%$obj178783%_)))
                                                       '#t)
                                                  _%$obj178783%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (cast HashTable::interface
                                                          _%$obj178783%_)))))
                                           (_%h178788%_ _%h178786%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h178788%_
                                       _%key178779%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath178803%_
                                            _%modpath178728%_)
                                           (_%modpath178808%_
                                            _%modpath178803%_))
                                      (__load-module _%modpath178808%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e178763%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e178763%_))
                                          'error))
                                (let ()
                                  (let* ((_%h178819%_ __modules)
                                         (_%key178822%_ _%modpath178728%_)
                                         (_%h178829%_
                                          (let ((_%$obj178826%_ _%h178819%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj178826%_))
                                                     (eq? HashTable::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj178826%_)))
                                                     '#t)
                                                _%$obj178826%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast HashTable::interface
                                                        _%$obj178826%_)))))
                                         (_%h178831%_ _%h178829%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h178831%_ _%key178822%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath178843%_ _%modpath178728%_)
                                         (_%modpath178848%_ _%modpath178843%_))
                                    (__load-module _%modpath178848%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e178763%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath178860%_ _%modpath178728%_)
                         (_%modpath178865%_ _%modpath178860%_))
                    (__load-module _%modpath178865%_))))))))
    (define reload-module!
      (lambda (_%modpath178711%_)
        (if (string? _%modpath178711%_)
            (let ((_%modpath178715%_ _%modpath178711%_))
              (__reload-module! _%modpath178715%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath178711%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath178645%_)
        (letrec ((_%find-compiled-file178647%_
                  (lambda (_%npath178700%_)
                    (let ((_%basepath178702%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath178700%_ '".o"))))
                      (let _%lp178704%_ ((_%current178706%_ '#f)
                                         (_%n178707%_ '1))
                        (let ((_%next178709%_
                               (let ((__tmp179260
                                      (number->string _%n178707%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath178702%_
                                  __tmp179260))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next178709%_))
                              (_%lp178704%_
                               _%next178709%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n178707%_ '1)))
                              _%current178706%_))))))
                 (_%find-source-file178648%_
                  (lambda (_%npath178696%_)
                    (let ((_%spath178698%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath178696%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath178698%_))
                          _%spath178698%_
                          '#f)))))
          (let _%lp178650%_ ((_%rest178652%_ (load-path)))
            (let* ((_%$%rest178653178661%_ _%rest178652%_)
                   (_%$%else178655178669%_ (lambda () '#f))
                   (_%$%K178657178684%_
                    (lambda (_%rest178672%_ _%dir178673%_)
                      (let* ((_%npath178675%_
                              (path-expand
                               _%modpath178645%_
                               (path-expand _%dir178673%_)))
                             (_%$e178677%_
                              (_%find-compiled-file178647%_ _%npath178675%_)))
                        (if _%$e178677%_
                            (path-normalize _%$e178677%_)
                            (let ((_%$e178680%_
                                   (_%find-source-file178648%_
                                    _%npath178675%_)))
                              (if _%$e178680%_
                                  (path-normalize _%$e178680%_)
                                  (_%lp178650%_ _%rest178672%_))))))))
              (if (pair? _%$%rest178653178661%_)
                  (let ((_%$%hd178658178687%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest178653178661%_)))
                        (_%$%tl178659178689%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest178653178661%_))))
                    (let* ((_%dir178692%_ _%$%hd178658178687%_)
                           (_%rest178694%_ _%$%tl178659178689%_))
                      (_%$%K178657178684%_ _%rest178694%_ _%dir178692%_)))
                  (_%$%else178655178669%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result178643%_
                 (let* ((_%h178622%_ __modules)
                        (_%h178629%_
                         (let ((_%$obj178626%_ _%h178622%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj178626%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj178626%_)))
                                    '#t)
                               _%$obj178626%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj178626%_)))))
                        (_%h178631%_ _%h178629%_))
                   (declare (not safe))
                   (__hash->list _%h178631%_))))
            (mutex-unlock! __load-mx)
            _%result178643%_))))
    (define __module-load-order
      (lambda (_%modpath178552%_)
        (let ((_%modpath178555%_ _%modpath178552%_))
          (mutex-lock! __load-mx)
          (let ((_%ord178618%_
                 (if (eq? (let* ((_%h178564%_ __modules)
                                 (_%key178567%_ _%modpath178555%_)
                                 (_%h178574%_
                                  (let ((_%$obj178571%_ _%h178564%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##structure? _%$obj178571%_))
                                             (eq? HashTable::t
                                                  (let ()
                                                    (declare (not safe))
                                                    (##structure-type
                                                     _%$obj178571%_)))
                                             '#t)
                                        _%$obj178571%_
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTable::interface
                                                _%$obj178571%_)))))
                                 (_%h178576%_ _%h178574%_))
                            (declare (not safe))
                            (__hash-get _%h178576%_ _%key178567%_))
                          'builtin)
                     '0
                     (let ((_%$e178614%_
                            (let* ((_%h178591%_ __load-order)
                                   (_%key178594%_ _%modpath178555%_)
                                   (_%h178601%_
                                    (let ((_%$obj178598%_ _%h178591%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj178598%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj178598%_)))
                                               '#t)
                                          _%$obj178598%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj178598%_)))))
                                   (_%h178603%_ _%h178601%_))
                              (declare (not safe))
                              (__hash-get _%h178603%_ _%key178594%_))))
                       (if _%$e178614%_ _%$e178614%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord178618%_)
                _%ord178618%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath178555%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath178538%_)
        (if (string? _%modpath178538%_)
            (let ((_%modpath178542%_ _%modpath178538%_))
              (__module-load-order _%modpath178542%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath178538%_)
              '#!void))))))
