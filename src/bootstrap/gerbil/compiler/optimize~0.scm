(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712251118)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp194518
                   (let ((__obj194512
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj194512)
                     __obj194512)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp194518)))))
    (define gxc#optimize!
      (lambda (_%ctx194121%_)
        (let ((__tmp194521
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx194121%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx194121%_))
                 (let ((__tmp194523
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp194522
                        (##structure-ref
                         _%ctx194121%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp194523 __tmp194522 '#t))
                 (let ((_%code194124%_
                        (let ((__tmp194524
                               (##structure-ref
                                _%ctx194121%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp194524))))
                   (##structure-set!
                    _%ctx194121%_
                    _%code194124%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp194520 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194519 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194521
           gxc#current-compile-mutators
           __tmp194520
           gxc#current-compile-local-type
           __tmp194519))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx194107%_)
        (letrec ((_%load-it!194109%_
                  (lambda (_%id194119%_)
                    (if (let ((__tmp194525
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp194525 _%id194119%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id194119%_))
                          (let ((__tmp194526
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp194526 _%id194119%_ '#t)))))))
          (let* ((_%modid194111%_
                  (##structure-ref
                   _%ctx194107%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str194113%_ (symbol->string _%modid194111%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str194113%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str194113%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194109%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194109%_
                   '(gerbil/builtin
                     gerbil/builtin-inline-rules
                     gerbil/runtime/gambit
                     gerbil/runtime/util
                     gerbil/runtime/table
                     gerbil/runtime/control
                     gerbil/runtime/system
                     gerbil/runtime/c3
                     gerbil/runtime/mop
                     gerbil/runtime/mop-system-classes
                     gerbil/runtime/error
                     gerbil/runtime/interface
                     gerbil/runtime/hash
                     gerbil/runtime/thread
                     gerbil/runtime/syntax
                     gerbil/runtime/eval
                     gerbil/runtime/repl
                     gerbil/runtime/loader
                     gerbil/runtime/init
                     gerbil/runtime))))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_%ctx194044%_)
        (letrec* ((_%deps194046%_
                   (let* ((_%imports194097%_
                           (##structure-ref
                            _%ctx194044%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e194099%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx194044%_))))
                     (if _%$e194099%_
                         ((lambda (_%g194101194103%_)
                            (cons _%g194101194103%_ _%imports194097%_))
                          _%$e194099%_)
                         (let () _%imports194097%_)))))
          (let _%lp194048%_ ((_%rest194050%_ _%deps194046%_))
            (let* ((_%rest194051194059%_ _%rest194050%_)
                   (_%else194053194067%_ (lambda () '#!void))
                   (_%K194055194085%_
                    (lambda (_%rest194070%_ _%hd194071%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd194071%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp194528
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp194527
                                       (##structure-ref
                                        _%hd194071%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp194528 __tmp194527))
                                '#!void
                                (begin
                                  (let ((_%$e194074%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd194071%_))))
                                    (if _%$e194074%_
                                        ((lambda (_%pre194077%_)
                                           (let ((__tmp194529
                                                  (cons _%pre194077%_
                                                        (##structure-ref
                                                         _%hd194071%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp194048%_ __tmp194529)))
                                         _%$e194074%_)
                                        (let ((__tmp194530
                                               (##structure-ref
                                                _%hd194071%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_%lp194048%_ __tmp194530))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd194071%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp194048%_ _%rest194070%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd194071%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp194532
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp194531
                                           (##structure-ref
                                            _%hd194071%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp194532 __tmp194531))
                                    '#!void
                                    (begin
                                      (let ((__tmp194533
                                             (##structure-ref
                                              _%hd194071%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp194048%_ __tmp194533))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd194071%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp194048%_ _%rest194070%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd194071%_
                                     'gx#module-import::t))
                                  (let ((__tmp194534
                                         (cons (##direct-structure-ref
                                                _%hd194071%_
                                                '1
                                                gx#module-import::t
                                                '#f)
                                               _%rest194070%_)))
                                    (declare (not safe))
                                    (_%lp194048%_ __tmp194534))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd194071%_
                                         'gx#module-export::t))
                                      (let ((__tmp194535
                                             (cons (##direct-structure-ref
                                                    _%hd194071%_
                                                    '1
                                                    gx#module-export::t
                                                    '#f)
                                                   _%rest194070%_)))
                                        (declare (not safe))
                                        (_%lp194048%_ __tmp194535))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd194071%_
                                             'gx#import-set::t))
                                          (let ((__tmp194536
                                                 (cons (##direct-structure-ref
                                                        _%hd194071%_
                                                        '1
                                                        gx#import-set::t
                                                        '#f)
                                                       _%rest194070%_)))
                                            (declare (not safe))
                                            (_%lp194048%_ __tmp194536))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd194071%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest194051194059%_))
                  (let ((_%hd194056194088%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194051194059%_)))
                        (_%tl194057194090%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194051194059%_))))
                    (let* ((_%hd194093%_ _%hd194056194088%_)
                           (_%rest194095%_ _%tl194057194090%_))
                      (declare (not safe))
                      (_%K194055194085%_ _%rest194095%_ _%hd194093%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx194024%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx194024%_
                    'gx#module-context::t))
                 (let ((__tmp194537
                        (##structure-ref
                         _%ctx194024%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp194537)))
            '#!void
            (let* ((_%ht194026%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id194028%_
                    (##structure-ref
                     _%ctx194024%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod194030%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht194026%_ _%id194028%_)))
                   (_%$e194033%_ _%mod194030%_))
              (if _%$e194033%_
                  _%$e194033%_
                  (let* ((_%mod194036%_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi _%ctx194024%_)))
                         (_%val194041%_
                          (let ((_%$e194038%_ _%mod194036%_))
                            (if _%$e194038%_ _%$e194038%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht194026%_ _%id194028%_ _%val194041%_))
                    _%val194041%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx194022%_)
        (if (##structure-ref _%ctx194022%_ '1 gx#expander-context::t '#f)
            (let ((__tmp194538
                   (##structure-ref
                    _%ctx194022%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp194538))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id193999%_)
        (letrec ((_%catch-e194001%_
                  (lambda (_%exn194020%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn194020%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn194020%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id193999%_))))
                    '#f))
                 (_%import-e194002%_
                  (lambda ()
                    (let* ((_%str-id194005%_
                            (let ((__tmp194539
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id193999%_))))
                              (declare (not safe))
                              (##string-append __tmp194539 '".ssxi")))
                           (_%artefact-path194013%_
                            (let ((_%odir194006194008%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir194006194008%_
                                  (let ((_%odir194011%_ _%odir194006194008%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id194005%_
                                        '".ss"))
                                     _%odir194011%_))
                                  '#f)))
                           (_%library-path194015%_
                            (let ((__tmp194540
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id194005%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp194540)))
                           (_%ssxi-path194017%_
                            (if (and _%artefact-path194013%_
                                     (file-exists? _%artefact-path194013%_))
                                _%artefact-path194013%_
                                _%library-path194015%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path194017%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path194017%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e194001%_ _%import-e194002%_)))))
    (define gxc#optimize-source
      (lambda (_%stx193990%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx193990%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx193990%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx193990%_))
        (let* ((_%stx193992%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx193990%_)))
               (_%stx193994%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx193992%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx193994%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx193994%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx193994%_))
          (let ((_%stx193997%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx193994%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx193997%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp194542 (list gxc#::generate-runtime-empty::t))
            (__tmp194541 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp194542
         '()
         __tmp194541
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args193987%_
        (apply make-instance gxc#::generate-ssxi::t _%$args193987%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp194543
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-syntax
                  gxc#generate-ssxi-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-annotation
                  gxc#generate-ssxi-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#module
                  gxc#generate-ssxi-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#define-values
                  gxc#generate-ssxi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#call
                  gxc#generate-ssxi-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-ssxi::t)))))
        (declare (not safe))
        (__make-promise __tmp194543)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx193979%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self193982%_
                (let ((__obj194514
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj194514))
               (__tmp194544
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193982%_ _%stx193979%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194544
           gxc#current-compile-method
           _%self193982%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self193939%_ _%stx193940%_)
        (let* ((_%g193942193952%_
                (lambda (_%g193943193949%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193943193949%_))))
               (_%g193941193976%_
                (lambda (_%g193943193955%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193943193955%_))
                      (let ((_%e193947193957%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193943193955%_))))
                        (let ((_%hd193946193960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193947193957%_)))
                              (_%tl193945193962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193947193957%_))))
                          ((lambda (_%L193965%_)
                             (let ((__tmp194547
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self193939%_
                                         _%stx193940%_))))
                                   (__tmp194545
                                    (let ((__tmp194546
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194546 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp194547
                                gx#current-expander-phi
                                __tmp194545)))
                           _%tl193945193962%_)))
                      (let ()
                        (declare (not safe))
                        (_%g193942193952%_ _%g193943193955%_))))))
          (declare (not safe))
          (_%g193941193976%_ _%stx193940%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self193878%_ _%stx193879%_)
        (let* ((_%g193881193895%_
                (lambda (_%g193882193892%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193882193892%_))))
               (_%g193880193936%_
                (lambda (_%g193882193898%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193882193898%_))
                      (let ((_%e193887193900%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193882193898%_))))
                        (let ((_%hd193886193903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193887193900%_)))
                              (_%tl193885193905%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193887193900%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193885193905%_))
                              (let ((_%e193890193908%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193885193905%_))))
                                (let ((_%hd193889193911%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193890193908%_)))
                                      (_%tl193888193913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193890193908%_))))
                                  ((lambda (_%L193916%_ _%L193917%_)
                                     (let* ((_%ctx193930%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L193917%_)))
                                            (_%code193932%_
                                             (##structure-ref
                                              _%ctx193930%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194548
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self193878%_
                                                  _%code193932%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp194548
                                        gx#current-expander-context
                                        _%ctx193930%_)))
                                   _%tl193888193913%_
                                   _%hd193889193911%_)))
                              (let ()
                                (declare (not safe))
                                (_%g193881193895%_ _%g193882193898%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g193881193895%_ _%g193882193898%_))))))
          (declare (not safe))
          (_%g193880193936%_ _%stx193879%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self193683%_ _%stx193684%_)
        (letrec ((_%generate-e193686%_
                  (lambda (_%id193863%_)
                    (let* ((_%sym193865%_
                            (if (let ((__tmp194549
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp194549))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id193863%_))
                                '#f))
                           (_%$e193867%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym193865%_))))
                      (if _%$e193867%_
                          ((lambda (_%klass193870%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym193865%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym193865%_
                                                     (cons (let ((__method194515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass193870%_ 'typedecl))))
                     (if __method194515
                         (__method194515 _%klass193870%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass193870%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym193865%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym193865%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e193867%_)
                          (let ((_%$e193872%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym193865%_))))
                            (if _%$e193872%_
                                ((lambda (_%type193875%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym193865%_
                                      '" "
                                      _%type193875%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type193875%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym193865%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym193865%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type193875%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym193865%_
                                                   (cons (let ((__method194516
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type193875%_ 'typedecl))))
                   (if __method194516
                       (__method194516 _%type193875%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type193875%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e193872%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx194127194128%_ _%stx193684%_)
                 (_%g193689193727%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194127194128%_)))))
            (let ((_%__kont194129194130%_
                   (lambda (_%L193845%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e193686%_ _%L193845%_))))
                  (_%__kont194131194132%_
                   (lambda (_%L193780%_)
                     (let ((_%types193806%_
                            (map _%generate-e193686%_
                                 (let ((__tmp194550
                                        (lambda (_%g193798193801%_
                                                 _%g193799193803%_)
                                          (cons _%g193798193801%_
                                                _%g193799193803%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp194550 '() _%L193780%_)))))
                       (cons 'begin _%types193806%_)))))
              (let ((_%__match194182194183%_
                     (lambda (_%e193707193732%_
                              _%hd193706193735%_
                              _%tl193705193737%_
                              _%e193710193740%_
                              _%hd193709193743%_
                              _%tl193708193745%_
                              _%__splice194133194134%_
                              _%target193711193748%_
                              _%tl193713193750%_)
                       (letrec ((_%loop193714193753%_
                                 (lambda (_%hd193712193756%_
                                          _%id193718193758%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd193712193756%_))
                                       (let ((_%e193715193761%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd193712193756%_))))
                                         (let ((_%lp-tl193717193766%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e193715193761%_)))
                                               (_%lp-hd193716193764%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e193715193761%_))))
                                           (let ((__tmp194551
                                                  (cons _%lp-hd193716193764%_
                                                        _%id193718193758%_)))
                                             (declare (not safe))
                                             (_%loop193714193753%_
                                              _%lp-tl193717193766%_
                                              __tmp194551))))
                                       (let ((_%id193719193769%_
                                              (reverse _%id193718193758%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl193708193745%_))
                                             (let ((_%e193722193772%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl193708193745%_))))
                                               (let ((_%tl193720193777%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e193722193772%_)))
                                                     (_%hd193721193775%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e193722193772%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193720193777%_))
                                                     (_%__kont194131194132%_
                                                      _%id193719193769%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g193689193727%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g193689193727%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop193714193753%_
                            _%target193711193748%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194127194128%_))
                    (let ((_%e193694193813%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194127194128%_))))
                      (let ((_%tl193692193818%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193694193813%_)))
                            (_%hd193693193816%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193694193813%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193692193818%_))
                            (let ((_%e193697193821%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193692193818%_))))
                              (let ((_%tl193695193826%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193697193821%_)))
                                    (_%hd193696193824%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193697193821%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd193696193824%_))
                                    (let ((_%e193700193829%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd193696193824%_))))
                                      (let ((_%tl193698193834%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193700193829%_)))
                                            (_%hd193699193832%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193700193829%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193698193834%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193695193826%_))
                                                (let ((_%e193703193837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193695193826%_))))
                                                  (let ((_%tl193701193842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193703193837%_)))
                                                        (_%hd193702193840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193703193837%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193701193842%_))
                                                        (_%__kont194129194130%_
                                                         _%hd193699193832%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd193696193824%_))
                                                            (let ((_%__splice194133194134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd193696193824%_ '0))))
                      (let ((_%tl193713193750%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194133194134%_ '1)))
                            (_%target193711193748%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194133194134%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193713193750%_))
                            (_%__match194182194183%_
                             _%e193694193813%_
                             _%hd193693193816%_
                             _%tl193692193818%_
                             _%e193697193821%_
                             _%hd193696193824%_
                             _%tl193695193826%_
                             _%__splice194133194134%_
                             _%target193711193748%_
                             _%tl193713193750%_)
                            (let ()
                              (declare (not safe))
                              (_%g193689193727%_)))))
                    (let () (declare (not safe)) (_%g193689193727%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd193696193824%_))
                                                    (let ((_%__splice194133194134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd193696193824%_
                                                              '0))))
                                                      (let ((_%tl193713193750%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice194133194134%_ '1)))
                    (_%target193711193748%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice194133194134%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193713193750%_))
                    (_%__match194182194183%_
                     _%e193694193813%_
                     _%hd193693193816%_
                     _%tl193692193818%_
                     _%e193697193821%_
                     _%hd193696193824%_
                     _%tl193695193826%_
                     _%__splice194133194134%_
                     _%target193711193748%_
                     _%tl193713193750%_)
                    (let () (declare (not safe)) (_%g193689193727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193689193727%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd193696193824%_))
                                                (let ((_%__splice194133194134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd193696193824%_
                                                          '0))))
                                                  (let ((_%tl193713193750%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194133194134%_
                                                            '1)))
                                                        (_%target193711193748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194133194134%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193713193750%_))
                                                        (_%__match194182194183%_
                                                         _%e193694193813%_
                                                         _%hd193693193816%_
                                                         _%tl193692193818%_
                                                         _%e193697193821%_
                                                         _%hd193696193824%_
                                                         _%tl193695193826%_
                                                         _%__splice194133194134%_
                                                         _%target193711193748%_
                                                         _%tl193713193750%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193689193727%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193689193727%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd193696193824%_))
                                        (let ((_%__splice194133194134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd193696193824%_
                                                  '0))))
                                          (let ((_%tl193713193750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194133194134%_
                                                    '1)))
                                                (_%target193711193748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194133194134%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193713193750%_))
                                                (_%__match194182194183%_
                                                 _%e193694193813%_
                                                 _%hd193693193816%_
                                                 _%tl193692193818%_
                                                 _%e193697193821%_
                                                 _%hd193696193824%_
                                                 _%tl193695193826%_
                                                 _%__splice194133194134%_
                                                 _%target193711193748%_
                                                 _%tl193713193750%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193689193727%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g193689193727%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g193689193727%_)))))
                    (let () (declare (not safe)) (_%g193689193727%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self193236%_ _%stx193237%_)
        (let* ((_%__stx194185194186%_ _%stx193237%_)
               (_%g193241193343%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194185194186%_)))))
          (let ((_%__kont194187194188%_
                 (lambda (_%L193633%_
                          _%L193634%_
                          _%L193635%_
                          _%L193636%_
                          _%L193637%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193636%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193635%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193634%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L193633%_))
                                                 '())))))))
                (_%__kont194189194190%_
                 (lambda (_%L193459%_ _%L193460%_ _%L193461%_ _%L193462%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193461%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193460%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193459%_))
                                           (cons '#f '())))))))
                (_%__kont194191194192%_ (lambda () '(begin))))
            (let ((_%__match194320194321%_
                   (lambda (_%e193250193505%_
                            _%hd193249193508%_
                            _%tl193248193510%_
                            _%e193253193513%_
                            _%hd193252193516%_
                            _%tl193251193518%_
                            _%e193256193521%_
                            _%hd193255193524%_
                            _%tl193254193526%_
                            _%e193259193529%_
                            _%hd193258193532%_
                            _%tl193257193534%_
                            _%e193262193537%_
                            _%hd193261193540%_
                            _%tl193260193542%_
                            _%e193265193545%_
                            _%hd193264193548%_
                            _%tl193263193550%_
                            _%e193268193553%_
                            _%hd193267193556%_
                            _%tl193266193558%_
                            _%e193271193561%_
                            _%hd193270193564%_
                            _%tl193269193566%_
                            _%e193274193569%_
                            _%hd193273193572%_
                            _%tl193272193574%_
                            _%e193277193577%_
                            _%hd193276193580%_
                            _%tl193275193582%_
                            _%e193280193585%_
                            _%hd193279193588%_
                            _%tl193278193590%_
                            _%e193283193593%_
                            _%hd193282193596%_
                            _%tl193281193598%_
                            _%e193286193601%_
                            _%hd193285193604%_
                            _%tl193284193606%_
                            _%e193289193609%_
                            _%hd193288193612%_
                            _%tl193287193614%_
                            _%e193292193617%_
                            _%hd193291193620%_
                            _%tl193290193622%_
                            _%e193295193625%_
                            _%hd193294193628%_
                            _%tl193293193630%_)
                     (let ((_%L193633%_ _%hd193294193628%_)
                           (_%L193634%_ _%hd193285193604%_)
                           (_%L193635%_ _%hd193276193580%_)
                           (_%L193636%_ _%hd193267193556%_)
                           (_%L193637%_ _%hd193258193532%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L193637%_
                              'bind-method!))
                           (_%__kont194187194188%_
                            _%L193633%_
                            _%L193634%_
                            _%L193635%_
                            _%L193636%_
                            _%L193637%_)
                           (_%__kont194191194192%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194185194186%_))
                  (let ((_%e193250193505%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194185194186%_))))
                    (let ((_%tl193248193510%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193250193505%_)))
                          (_%hd193249193508%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193250193505%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193248193510%_))
                          (let ((_%e193253193513%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193248193510%_))))
                            (let ((_%tl193251193518%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193253193513%_)))
                                  (_%hd193252193516%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193253193513%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193252193516%_))
                                  (let ((_%e193256193521%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193252193516%_))))
                                    (let ((_%tl193254193526%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193256193521%_)))
                                          (_%hd193255193524%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193256193521%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193255193524%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193255193524%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193254193526%_))
                                                  (let ((_%e193259193529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193254193526%_))))
                                                    (let ((_%tl193257193534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193259193529%_)))
                                                          (_%hd193258193532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193259193529%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193257193534%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193251193518%_))
                      (let ((_%e193262193537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193251193518%_))))
                        (let ((_%tl193260193542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193262193537%_)))
                              (_%hd193261193540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193262193537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd193261193540%_))
                              (let ((_%e193265193545%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd193261193540%_))))
                                (let ((_%tl193263193550%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193265193545%_)))
                                      (_%hd193264193548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193265193545%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd193264193548%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd193264193548%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193263193550%_))
                                              (let ((_%e193268193553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193263193550%_))))
                                                (let ((_%tl193266193558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193268193553%_)))
                                                      (_%hd193267193556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193268193553%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193266193558%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193260193542%_))
                                                          (let ((_%e193271193561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193260193542%_))))
                    (let ((_%tl193269193566%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193271193561%_)))
                          (_%hd193270193564%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193271193561%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd193270193564%_))
                          (let ((_%e193274193569%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd193270193564%_))))
                            (let ((_%tl193272193574%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193274193569%_)))
                                  (_%hd193273193572%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193274193569%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd193273193572%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd193273193572%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193272193574%_))
                                          (let ((_%e193277193577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193272193574%_))))
                                            (let ((_%tl193275193582%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193277193577%_)))
                                                  (_%hd193276193580%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193277193577%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193275193582%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193269193566%_))
                                                      (let ((_%e193280193585%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193269193566%_))))
                (let ((_%tl193278193590%_
                       (let () (declare (not safe)) (##cdr _%e193280193585%_)))
                      (_%hd193279193588%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193280193585%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193279193588%_))
                      (let ((_%e193283193593%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193279193588%_))))
                        (let ((_%tl193281193598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193283193593%_)))
                              (_%hd193282193596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193283193593%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193282193596%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193282193596%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193281193598%_))
                                      (let ((_%e193286193601%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193281193598%_))))
                                        (let ((_%tl193284193606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193286193601%_)))
                                              (_%hd193285193604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193286193601%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193284193606%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193278193590%_))
                                                  (let ((_%e193289193609%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193278193590%_))))
                                                    (let ((_%tl193287193614%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193289193609%_)))
                                                          (_%hd193288193612%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193289193609%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193288193612%_))
                                                          (let ((_%e193292193617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193288193612%_))))
                    (let ((_%tl193290193622%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193292193617%_)))
                          (_%hd193291193620%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193292193617%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193291193620%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193291193620%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193290193622%_))
                                  (let ((_%e193295193625%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193290193622%_))))
                                    (let ((_%tl193293193630%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193295193625%_)))
                                          (_%hd193294193628%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193295193625%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193293193630%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193287193614%_))
                                              (_%__match194320194321%_
                                               _%e193250193505%_
                                               _%hd193249193508%_
                                               _%tl193248193510%_
                                               _%e193253193513%_
                                               _%hd193252193516%_
                                               _%tl193251193518%_
                                               _%e193256193521%_
                                               _%hd193255193524%_
                                               _%tl193254193526%_
                                               _%e193259193529%_
                                               _%hd193258193532%_
                                               _%tl193257193534%_
                                               _%e193262193537%_
                                               _%hd193261193540%_
                                               _%tl193260193542%_
                                               _%e193265193545%_
                                               _%hd193264193548%_
                                               _%tl193263193550%_
                                               _%e193268193553%_
                                               _%hd193267193556%_
                                               _%tl193266193558%_
                                               _%e193271193561%_
                                               _%hd193270193564%_
                                               _%tl193269193566%_
                                               _%e193274193569%_
                                               _%hd193273193572%_
                                               _%tl193272193574%_
                                               _%e193277193577%_
                                               _%hd193276193580%_
                                               _%tl193275193582%_
                                               _%e193280193585%_
                                               _%hd193279193588%_
                                               _%tl193278193590%_
                                               _%e193283193593%_
                                               _%hd193282193596%_
                                               _%tl193281193598%_
                                               _%e193286193601%_
                                               _%hd193285193604%_
                                               _%tl193284193606%_
                                               _%e193289193609%_
                                               _%hd193288193612%_
                                               _%tl193287193614%_
                                               _%e193292193617%_
                                               _%hd193291193620%_
                                               _%tl193290193622%_
                                               _%e193295193625%_
                                               _%hd193294193628%_
                                               _%tl193293193630%_)
                                              (_%__kont194191194192%_))
                                          (_%__kont194191194192%_))))
                                  (_%__kont194191194192%_))
                              (_%__kont194191194192%_))
                          (_%__kont194191194192%_))))
                  (_%__kont194191194192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193278193590%_))
                                                      (if (let ((__tmp194552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp194552 'bind-method!))
                  (let ((_%L193459%_ _%hd193285193604%_)
                        (_%L193460%_ _%hd193276193580%_)
                        (_%L193461%_ _%hd193267193556%_)
                        (_%L193462%_ _%hd193258193532%_))
                    (_%__kont194189194190%_
                     _%L193459%_
                     _%L193460%_
                     _%L193461%_
                     _%L193462%_))
                  (_%__kont194191194192%_))
              (_%__kont194191194192%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194191194192%_))))
                                      (_%__kont194191194192%_))
                                  (_%__kont194191194192%_))
                              (_%__kont194191194192%_))))
                      (_%__kont194191194192%_))))
              (_%__kont194191194192%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194191194192%_))))
                                          (_%__kont194191194192%_))
                                      (_%__kont194191194192%_))
                                  (_%__kont194191194192%_))))
                          (_%__kont194191194192%_))))
                  (_%__kont194191194192%_))
              (_%__kont194191194192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194191194192%_))
                                          (_%__kont194191194192%_))
                                      (_%__kont194191194192%_))))
                              (_%__kont194191194192%_))))
                      (_%__kont194191194192%_))
                  (_%__kont194191194192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194191194192%_))
                                              (_%__kont194191194192%_))
                                          (_%__kont194191194192%_))))
                                  (_%__kont194191194192%_))))
                          (_%__kont194191194192%_))))
                  (_%__kont194191194192%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self193060%_ _%stx193061%_)
        (let* ((_%__stx194429194430%_ _%stx193061%_)
               (_%g193064193104%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194429194430%_)))))
          (let ((_%__kont194431194432%_
                 (lambda (_%L193210%_ _%L193211%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193211%_))
                               (cons _%L193210%_ '())))))
                (_%__kont194433194434%_
                 (lambda (_%L193133%_ _%L193134%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx194429194430%_))
                (let ((_%e193070193154%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx194429194430%_))))
                  (let ((_%tl193068193159%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193070193154%_)))
                        (_%hd193069193157%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193070193154%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl193068193159%_))
                        (let ((_%e193073193162%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl193068193159%_))))
                          (let ((_%tl193071193167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193073193162%_)))
                                (_%hd193072193165%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193073193162%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd193072193165%_))
                                (let ((_%e193076193170%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd193072193165%_))))
                                  (let ((_%tl193074193175%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193076193170%_)))
                                        (_%hd193075193173%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193076193170%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd193075193173%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd193075193173%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193074193175%_))
                                                (let ((_%e193079193178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193074193175%_))))
                                                  (let ((_%tl193077193183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193079193178%_)))
                                                        (_%hd193078193181%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193079193178%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193077193183%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193071193167%_))
                                                            (let ((_%e193082193186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193071193167%_))))
                      (let ((_%tl193080193191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193082193186%_)))
                            (_%hd193081193189%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193082193186%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193081193189%_))
                            (let ((_%e193085193194%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193081193189%_))))
                              (let ((_%tl193083193199%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193085193194%_)))
                                    (_%hd193084193197%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193085193194%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193084193197%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193084193197%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193083193199%_))
                                            (let ((_%e193088193202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193083193199%_))))
                                              (let ((_%tl193086193207%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193088193202%_)))
                                                    (_%hd193087193205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193088193202%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193086193207%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193080193191%_))
                                                        (_%__kont194431194432%_
                                                         _%hd193087193205%_
                                                         _%hd193078193181%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193064193104%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193080193191%_))
                                                        (_%__kont194433194434%_
                                                         _%hd193081193189%_
                                                         _%hd193072193165%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193064193104%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193080193191%_))
                                                (_%__kont194433194434%_
                                                 _%hd193081193189%_
                                                 _%hd193072193165%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193064193104%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193080193191%_))
                                            (_%__kont194433194434%_
                                             _%hd193081193189%_
                                             _%hd193072193165%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193064193104%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193080193191%_))
                                        (_%__kont194433194434%_
                                         _%hd193081193189%_
                                         _%hd193072193165%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g193064193104%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl193080193191%_))
                                (_%__kont194433194434%_
                                 _%hd193081193189%_
                                 _%hd193072193165%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g193064193104%_))))))
                    (let () (declare (not safe)) (_%g193064193104%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl193071193167%_))
                    (let ((_%e193099193125%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193071193167%_))))
                      (let ((_%tl193097193130%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193099193125%_)))
                            (_%hd193098193128%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193099193125%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193097193130%_))
                            (_%__kont194433194434%_
                             _%hd193098193128%_
                             _%hd193072193165%_)
                            (let ()
                              (declare (not safe))
                              (_%g193064193104%_)))))
                    (let () (declare (not safe)) (_%g193064193104%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl193071193167%_))
                                                    (let ((_%e193099193125%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl193071193167%_))))
                                                      (let ((_%tl193097193130%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e193099193125%_)))
                    (_%hd193098193128%_
                     (let () (declare (not safe)) (##car _%e193099193125%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193097193130%_))
                    (_%__kont194433194434%_
                     _%hd193098193128%_
                     _%hd193072193165%_)
                    (let () (declare (not safe)) (_%g193064193104%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193064193104%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193071193167%_))
                                                (let ((_%e193099193125%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193071193167%_))))
                                                  (let ((_%tl193097193130%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193099193125%_)))
                                                        (_%hd193098193128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193099193125%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193097193130%_))
                                                        (_%__kont194433194434%_
                                                         _%hd193098193128%_
                                                         _%hd193072193165%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193064193104%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193064193104%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193071193167%_))
                                            (let ((_%e193099193125%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193071193167%_))))
                                              (let ((_%tl193097193130%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193099193125%_)))
                                                    (_%hd193098193128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193099193125%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193097193130%_))
                                                    (_%__kont194433194434%_
                                                     _%hd193098193128%_
                                                     _%hd193072193165%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193064193104%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g193064193104%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl193071193167%_))
                                    (let ((_%e193099193125%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl193071193167%_))))
                                      (let ((_%tl193097193130%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193099193125%_)))
                                            (_%hd193098193128%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193099193125%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193097193130%_))
                                            (_%__kont194433194434%_
                                             _%hd193098193128%_
                                             _%hd193072193165%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193064193104%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g193064193104%_))))))
                        (let () (declare (not safe)) (_%g193064193104%_)))))
                (let () (declare (not safe)) (_%g193064193104%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self193047%_)
        (let ((_%self193050%_ _%self193047%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193050%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self192820%_)
        (let ((_%self192823%_ _%self192820%_))
          (let* ((_%self192832192848%_ _%self192823%_)
                 (_%E192834192852%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self192832192848%_
                             '((!class id
                                       super
                                       precendence-list
                                       slots
                                       fields
                                       constructor
                                       struct?
                                       final?
                                       system?
                                       metaclass
                                       methods))))
                    '#!void))
                 (_%K192835192867%_
                  (lambda (_%methods192855%_
                           _%metaclass192856%_
                           _%system?192857%_
                           _%final?192858%_
                           _%struct?192859%_
                           _%constructor192860%_
                           _%fields192861%_
                           _%slots192862%_
                           _%precendence-list192863%_
                           _%super192864%_
                           _%id192865%_)
                    (cons '@class
                          (cons _%id192865%_
                                (cons _%super192864%_
                                      (cons _%precendence-list192863%_
                                            (cons _%slots192862%_
                                                  (cons _%fields192861%_
                                                        (cons _%constructor192860%_
                                                              (cons _%struct?192859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%final?192858%_
                                  (cons _%system?192857%_
                                        (cons _%metaclass192856%_
                                              (cons (if _%methods192855%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash->list
                                                           _%methods192855%_))
                                                        '#f)
                                                    '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (if '#t
                (let* ((_%e192836192870%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '1
                           '#f
                           '#f)))
                       (_%id192873%_ _%e192836192870%_)
                       (_%e192837192875%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '2
                           '#f
                           '#f)))
                       (_%super192878%_ _%e192837192875%_)
                       (_%e192838192880%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '3
                           '#f
                           '#f)))
                       (_%precendence-list192883%_ _%e192838192880%_)
                       (_%e192839192885%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '4
                           '#f
                           '#f)))
                       (_%slots192888%_ _%e192839192885%_)
                       (_%e192840192890%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '5
                           '#f
                           '#f)))
                       (_%fields192893%_ _%e192840192890%_)
                       (_%e192841192895%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '6
                           '#f
                           '#f)))
                       (_%constructor192898%_ _%e192841192895%_)
                       (_%e192842192900%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '7
                           '#f
                           '#f)))
                       (_%struct?192903%_ _%e192842192900%_)
                       (_%e192843192905%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '8
                           '#f
                           '#f)))
                       (_%final?192908%_ _%e192843192905%_)
                       (_%e192844192910%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '9
                           '#f
                           '#f)))
                       (_%system?192913%_ _%e192844192910%_)
                       (_%e192845192915%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '10
                           '#f
                           '#f)))
                       (_%metaclass192918%_ _%e192845192915%_)
                       (_%e192846192920%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192832192848%_
                           '11
                           '#f
                           '#f)))
                       (_%methods192923%_ _%e192846192920%_))
                  (declare (not safe))
                  (_%K192835192867%_
                   _%methods192923%_
                   _%metaclass192918%_
                   _%system?192913%_
                   _%final?192908%_
                   _%struct?192903%_
                   _%constructor192898%_
                   _%fields192893%_
                   _%slots192888%_
                   _%precendence-list192883%_
                   _%super192878%_
                   _%id192873%_))
                (let () (declare (not safe)) (_%E192834192852%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self192685%_)
        (let ((_%self192688%_ _%self192685%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192688%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self192550%_)
        (let ((_%self192553%_ _%self192550%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192553%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self192415%_)
        (let ((_%self192418%_ _%self192415%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192418%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192418%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192418%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self192280%_)
        (let ((_%self192283%_ _%self192280%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192283%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192283%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192283%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self192145%_)
        (let ((_%self192148%_ _%self192145%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192148%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192148%_
                               '2
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self191958%_)
        (let ((_%self191961%_ _%self191958%_))
          (let* ((_%self191970191979%_ _%self191961%_)
                 (_%E191972191983%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self191970191979%_
                             '((!lambda _ signature arity dispatch))))
                    '#!void))
                 (_%K191973192002%_
                  (lambda (_%dispatch191986%_
                           _%arity191987%_
                           _%signature191988%_)
                    (if _%signature191988%_
                        (let ((_%signature191990%_ _%signature191988%_))
                          (cons '@lambda
                                (cons _%arity191987%_
                                      (cons _%dispatch191986%_
                                            (cons 'signature:
                                                  (cons (cons 'return:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature191990%_
                               '1
                               '#f
                               '#f))
                            (cons 'effect:
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%signature191990%_
                                           '2
                                           '#f
                                           '#f))
                                        (cons 'arguments:
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%signature191990%_
                                                       '3
                                                       '#f
                                                       '#f))
                                                    (cons 'unchecked:
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%signature191990%_
                           '4
                           '#f
                           '#f))
                        '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (cons '@lambda
                              (cons _%arity191987%_
                                    (cons _%dispatch191986%_ '())))))))
            (if '#t
                (let* ((_%e191974192005%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191970191979%_
                           '1
                           '#f
                           '#f)))
                       (_%e191975192008%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191970191979%_
                           '2
                           '#f
                           '#f)))
                       (_%signature192011%_ _%e191975192008%_)
                       (_%e191976192013%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191970191979%_
                           '3
                           '#f
                           '#f)))
                       (_%arity192016%_ _%e191976192013%_)
                       (_%e191977192018%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191970191979%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch192021%_ _%e191977192018%_))
                  (declare (not safe))
                  (_%K191973192002%_
                   _%dispatch192021%_
                   _%arity192016%_
                   _%signature192011%_))
                (let () (declare (not safe)) (_%E191972191983%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self191819%_)
        (let ((_%self191822%_ _%self191819%_))
          (letrec ((_%clause-e191832%_
                    (lambda (_%clause191834%_)
                      (cdr (let ((__method194517
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause191834%_
                                     'typedecl))))
                             (if __method194517
                                 (__method194517 _%clause191834%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause191834%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e191832%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191822%_
                          '3
                          '#f
                          '#f))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self191684%_)
        (let ((_%self191687%_ _%self191684%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191687%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191687%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self191549%_)
        (let ((_%self191552%_ _%self191549%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191552%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191552%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self191414%_)
        (let ((_%self191417%_ _%self191414%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191417%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
