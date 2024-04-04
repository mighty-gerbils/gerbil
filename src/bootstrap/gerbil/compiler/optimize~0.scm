(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712262520)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp194526
                   (let ((__obj194520
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj194520)
                     __obj194520)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp194526)))))
    (define gxc#optimize!
      (lambda (_%ctx194129%_)
        (let ((__tmp194529
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx194129%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx194129%_))
                 (let ((__tmp194531
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp194530
                        (##structure-ref
                         _%ctx194129%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp194531 __tmp194530 '#t))
                 (let ((_%code194132%_
                        (let ((__tmp194532
                               (##structure-ref
                                _%ctx194129%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp194532))))
                   (##structure-set!
                    _%ctx194129%_
                    _%code194132%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp194528 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194527 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194529
           gxc#current-compile-mutators
           __tmp194528
           gxc#current-compile-local-type
           __tmp194527))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx194115%_)
        (letrec ((_%load-it!194117%_
                  (lambda (_%id194127%_)
                    (if (let ((__tmp194533
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp194533 _%id194127%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id194127%_))
                          (let ((__tmp194534
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp194534 _%id194127%_ '#t)))))))
          (let* ((_%modid194119%_
                  (##structure-ref
                   _%ctx194115%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str194121%_ (symbol->string _%modid194119%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str194121%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str194121%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194117%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194117%_
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
      (lambda (_%ctx194052%_)
        (letrec* ((_%deps194054%_
                   (let* ((_%imports194105%_
                           (##structure-ref
                            _%ctx194052%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e194107%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx194052%_))))
                     (if _%$e194107%_
                         ((lambda (_%g194109194111%_)
                            (cons _%g194109194111%_ _%imports194105%_))
                          _%$e194107%_)
                         (let () _%imports194105%_)))))
          (let _%lp194056%_ ((_%rest194058%_ _%deps194054%_))
            (let* ((_%rest194059194067%_ _%rest194058%_)
                   (_%else194061194075%_ (lambda () '#!void))
                   (_%K194063194093%_
                    (lambda (_%rest194078%_ _%hd194079%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd194079%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp194536
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp194535
                                       (##structure-ref
                                        _%hd194079%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp194536 __tmp194535))
                                '#!void
                                (begin
                                  (let ((_%$e194082%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd194079%_))))
                                    (if _%$e194082%_
                                        ((lambda (_%pre194085%_)
                                           (let ((__tmp194537
                                                  (cons _%pre194085%_
                                                        (##structure-ref
                                                         _%hd194079%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp194056%_ __tmp194537)))
                                         _%$e194082%_)
                                        (let ((__tmp194538
                                               (##structure-ref
                                                _%hd194079%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_%lp194056%_ __tmp194538))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd194079%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp194056%_ _%rest194078%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd194079%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp194540
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp194539
                                           (##structure-ref
                                            _%hd194079%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp194540 __tmp194539))
                                    '#!void
                                    (begin
                                      (let ((__tmp194541
                                             (##structure-ref
                                              _%hd194079%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp194056%_ __tmp194541))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd194079%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp194056%_ _%rest194078%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd194079%_
                                     'gx#module-import::t))
                                  (let ((__tmp194542
                                         (cons (##direct-structure-ref
                                                _%hd194079%_
                                                '1
                                                gx#module-import::t
                                                '#f)
                                               _%rest194078%_)))
                                    (declare (not safe))
                                    (_%lp194056%_ __tmp194542))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd194079%_
                                         'gx#module-export::t))
                                      (let ((__tmp194543
                                             (cons (##direct-structure-ref
                                                    _%hd194079%_
                                                    '1
                                                    gx#module-export::t
                                                    '#f)
                                                   _%rest194078%_)))
                                        (declare (not safe))
                                        (_%lp194056%_ __tmp194543))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd194079%_
                                             'gx#import-set::t))
                                          (let ((__tmp194544
                                                 (cons (##direct-structure-ref
                                                        _%hd194079%_
                                                        '1
                                                        gx#import-set::t
                                                        '#f)
                                                       _%rest194078%_)))
                                            (declare (not safe))
                                            (_%lp194056%_ __tmp194544))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd194079%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest194059194067%_))
                  (let ((_%hd194064194096%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194059194067%_)))
                        (_%tl194065194098%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194059194067%_))))
                    (let* ((_%hd194101%_ _%hd194064194096%_)
                           (_%rest194103%_ _%tl194065194098%_))
                      (declare (not safe))
                      (_%K194063194093%_ _%rest194103%_ _%hd194101%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx194032%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx194032%_
                    'gx#module-context::t))
                 (let ((__tmp194545
                        (##structure-ref
                         _%ctx194032%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp194545)))
            '#!void
            (let* ((_%ht194034%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id194036%_
                    (##structure-ref
                     _%ctx194032%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod194038%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht194034%_ _%id194036%_)))
                   (_%$e194041%_ _%mod194038%_))
              (if _%$e194041%_
                  _%$e194041%_
                  (let* ((_%mod194044%_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi _%ctx194032%_)))
                         (_%val194049%_
                          (let ((_%$e194046%_ _%mod194044%_))
                            (if _%$e194046%_ _%$e194046%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht194034%_ _%id194036%_ _%val194049%_))
                    _%val194049%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx194030%_)
        (if (##structure-ref _%ctx194030%_ '1 gx#expander-context::t '#f)
            (let ((__tmp194546
                   (##structure-ref
                    _%ctx194030%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp194546))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id194007%_)
        (letrec ((_%catch-e194009%_
                  (lambda (_%exn194028%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn194028%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn194028%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id194007%_))))
                    '#f))
                 (_%import-e194010%_
                  (lambda ()
                    (let* ((_%str-id194013%_
                            (let ((__tmp194547
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id194007%_))))
                              (declare (not safe))
                              (##string-append __tmp194547 '".ssxi")))
                           (_%artefact-path194021%_
                            (let ((_%odir194014194016%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir194014194016%_
                                  (let ((_%odir194019%_ _%odir194014194016%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id194013%_
                                        '".ss"))
                                     _%odir194019%_))
                                  '#f)))
                           (_%library-path194023%_
                            (let ((__tmp194548
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id194013%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp194548)))
                           (_%ssxi-path194025%_
                            (if (and _%artefact-path194021%_
                                     (file-exists? _%artefact-path194021%_))
                                _%artefact-path194021%_
                                _%library-path194023%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path194025%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path194025%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e194009%_ _%import-e194010%_)))))
    (define gxc#optimize-source
      (lambda (_%stx193998%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx193998%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx193998%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx193998%_))
        (let* ((_%stx194000%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx193998%_)))
               (_%stx194002%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx194000%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx194002%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx194002%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx194002%_))
          (let ((_%stx194005%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx194002%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx194005%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp194550 (list gxc#::generate-runtime-empty::t))
            (__tmp194549 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp194550
         '()
         __tmp194549
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args193995%_
        (apply make-instance gxc#::generate-ssxi::t _%$args193995%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp194551
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
        (__make-promise __tmp194551)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx193987%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self193990%_
                (let ((__obj194522
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj194522))
               (__tmp194552
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193990%_ _%stx193987%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194552
           gxc#current-compile-method
           _%self193990%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self193947%_ _%stx193948%_)
        (let* ((_%g193950193960%_
                (lambda (_%g193951193957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193951193957%_))))
               (_%g193949193984%_
                (lambda (_%g193951193963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193951193963%_))
                      (let ((_%e193955193965%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193951193963%_))))
                        (let ((_%hd193954193968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193955193965%_)))
                              (_%tl193953193970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193955193965%_))))
                          ((lambda (_%L193973%_)
                             (let ((__tmp194555
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self193947%_
                                         _%stx193948%_))))
                                   (__tmp194553
                                    (let ((__tmp194554
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194554 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp194555
                                gx#current-expander-phi
                                __tmp194553)))
                           _%tl193953193970%_)))
                      (let ()
                        (declare (not safe))
                        (_%g193950193960%_ _%g193951193963%_))))))
          (declare (not safe))
          (_%g193949193984%_ _%stx193948%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self193886%_ _%stx193887%_)
        (let* ((_%g193889193903%_
                (lambda (_%g193890193900%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193890193900%_))))
               (_%g193888193944%_
                (lambda (_%g193890193906%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193890193906%_))
                      (let ((_%e193895193908%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193890193906%_))))
                        (let ((_%hd193894193911%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193895193908%_)))
                              (_%tl193893193913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193895193908%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193893193913%_))
                              (let ((_%e193898193916%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193893193913%_))))
                                (let ((_%hd193897193919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193898193916%_)))
                                      (_%tl193896193921%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193898193916%_))))
                                  ((lambda (_%L193924%_ _%L193925%_)
                                     (let* ((_%ctx193938%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L193925%_)))
                                            (_%code193940%_
                                             (##structure-ref
                                              _%ctx193938%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194556
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self193886%_
                                                  _%code193940%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp194556
                                        gx#current-expander-context
                                        _%ctx193938%_)))
                                   _%tl193896193921%_
                                   _%hd193897193919%_)))
                              (let ()
                                (declare (not safe))
                                (_%g193889193903%_ _%g193890193906%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g193889193903%_ _%g193890193906%_))))))
          (declare (not safe))
          (_%g193888193944%_ _%stx193887%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self193691%_ _%stx193692%_)
        (letrec ((_%generate-e193694%_
                  (lambda (_%id193871%_)
                    (let* ((_%sym193873%_
                            (if (let ((__tmp194557
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp194557))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id193871%_))
                                '#f))
                           (_%$e193875%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym193873%_))))
                      (if _%$e193875%_
                          ((lambda (_%klass193878%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym193873%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym193873%_
                                                     (cons (let ((__method194523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass193878%_ 'typedecl))))
                     (if __method194523
                         (__method194523 _%klass193878%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass193878%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym193873%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym193873%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e193875%_)
                          (let ((_%$e193880%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym193873%_))))
                            (if _%$e193880%_
                                ((lambda (_%type193883%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym193873%_
                                      '" "
                                      _%type193883%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type193883%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym193873%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym193873%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type193883%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym193873%_
                                                   (cons (let ((__method194524
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type193883%_ 'typedecl))))
                   (if __method194524
                       (__method194524 _%type193883%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type193883%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e193880%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx194135194136%_ _%stx193692%_)
                 (_%g193697193735%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194135194136%_)))))
            (let ((_%__kont194137194138%_
                   (lambda (_%L193853%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e193694%_ _%L193853%_))))
                  (_%__kont194139194140%_
                   (lambda (_%L193788%_)
                     (let ((_%types193814%_
                            (map _%generate-e193694%_
                                 (let ((__tmp194558
                                        (lambda (_%g193806193809%_
                                                 _%g193807193811%_)
                                          (cons _%g193806193809%_
                                                _%g193807193811%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp194558 '() _%L193788%_)))))
                       (cons 'begin _%types193814%_)))))
              (let ((_%__match194190194191%_
                     (lambda (_%e193715193740%_
                              _%hd193714193743%_
                              _%tl193713193745%_
                              _%e193718193748%_
                              _%hd193717193751%_
                              _%tl193716193753%_
                              _%__splice194141194142%_
                              _%target193719193756%_
                              _%tl193721193758%_)
                       (letrec ((_%loop193722193761%_
                                 (lambda (_%hd193720193764%_
                                          _%id193726193766%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd193720193764%_))
                                       (let ((_%e193723193769%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd193720193764%_))))
                                         (let ((_%lp-tl193725193774%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e193723193769%_)))
                                               (_%lp-hd193724193772%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e193723193769%_))))
                                           (let ((__tmp194559
                                                  (cons _%lp-hd193724193772%_
                                                        _%id193726193766%_)))
                                             (declare (not safe))
                                             (_%loop193722193761%_
                                              _%lp-tl193725193774%_
                                              __tmp194559))))
                                       (let ((_%id193727193777%_
                                              (reverse _%id193726193766%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl193716193753%_))
                                             (let ((_%e193730193780%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl193716193753%_))))
                                               (let ((_%tl193728193785%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e193730193780%_)))
                                                     (_%hd193729193783%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e193730193780%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193728193785%_))
                                                     (_%__kont194139194140%_
                                                      _%id193727193777%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g193697193735%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g193697193735%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop193722193761%_
                            _%target193719193756%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194135194136%_))
                    (let ((_%e193702193821%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194135194136%_))))
                      (let ((_%tl193700193826%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193702193821%_)))
                            (_%hd193701193824%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193702193821%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193700193826%_))
                            (let ((_%e193705193829%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193700193826%_))))
                              (let ((_%tl193703193834%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193705193829%_)))
                                    (_%hd193704193832%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193705193829%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd193704193832%_))
                                    (let ((_%e193708193837%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd193704193832%_))))
                                      (let ((_%tl193706193842%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193708193837%_)))
                                            (_%hd193707193840%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193708193837%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193706193842%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193703193834%_))
                                                (let ((_%e193711193845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193703193834%_))))
                                                  (let ((_%tl193709193850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193711193845%_)))
                                                        (_%hd193710193848%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193711193845%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193709193850%_))
                                                        (_%__kont194137194138%_
                                                         _%hd193707193840%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd193704193832%_))
                                                            (let ((_%__splice194141194142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd193704193832%_ '0))))
                      (let ((_%tl193721193758%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194141194142%_ '1)))
                            (_%target193719193756%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194141194142%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193721193758%_))
                            (_%__match194190194191%_
                             _%e193702193821%_
                             _%hd193701193824%_
                             _%tl193700193826%_
                             _%e193705193829%_
                             _%hd193704193832%_
                             _%tl193703193834%_
                             _%__splice194141194142%_
                             _%target193719193756%_
                             _%tl193721193758%_)
                            (let ()
                              (declare (not safe))
                              (_%g193697193735%_)))))
                    (let () (declare (not safe)) (_%g193697193735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd193704193832%_))
                                                    (let ((_%__splice194141194142%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd193704193832%_
                                                              '0))))
                                                      (let ((_%tl193721193758%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice194141194142%_ '1)))
                    (_%target193719193756%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice194141194142%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193721193758%_))
                    (_%__match194190194191%_
                     _%e193702193821%_
                     _%hd193701193824%_
                     _%tl193700193826%_
                     _%e193705193829%_
                     _%hd193704193832%_
                     _%tl193703193834%_
                     _%__splice194141194142%_
                     _%target193719193756%_
                     _%tl193721193758%_)
                    (let () (declare (not safe)) (_%g193697193735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193697193735%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd193704193832%_))
                                                (let ((_%__splice194141194142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd193704193832%_
                                                          '0))))
                                                  (let ((_%tl193721193758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194141194142%_
                                                            '1)))
                                                        (_%target193719193756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194141194142%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193721193758%_))
                                                        (_%__match194190194191%_
                                                         _%e193702193821%_
                                                         _%hd193701193824%_
                                                         _%tl193700193826%_
                                                         _%e193705193829%_
                                                         _%hd193704193832%_
                                                         _%tl193703193834%_
                                                         _%__splice194141194142%_
                                                         _%target193719193756%_
                                                         _%tl193721193758%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193697193735%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193697193735%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd193704193832%_))
                                        (let ((_%__splice194141194142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd193704193832%_
                                                  '0))))
                                          (let ((_%tl193721193758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194141194142%_
                                                    '1)))
                                                (_%target193719193756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194141194142%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193721193758%_))
                                                (_%__match194190194191%_
                                                 _%e193702193821%_
                                                 _%hd193701193824%_
                                                 _%tl193700193826%_
                                                 _%e193705193829%_
                                                 _%hd193704193832%_
                                                 _%tl193703193834%_
                                                 _%__splice194141194142%_
                                                 _%target193719193756%_
                                                 _%tl193721193758%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193697193735%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g193697193735%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g193697193735%_)))))
                    (let () (declare (not safe)) (_%g193697193735%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self193244%_ _%stx193245%_)
        (let* ((_%__stx194193194194%_ _%stx193245%_)
               (_%g193249193351%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194193194194%_)))))
          (let ((_%__kont194195194196%_
                 (lambda (_%L193641%_
                          _%L193642%_
                          _%L193643%_
                          _%L193644%_
                          _%L193645%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193644%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193643%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193642%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L193641%_))
                                                 '())))))))
                (_%__kont194197194198%_
                 (lambda (_%L193467%_ _%L193468%_ _%L193469%_ _%L193470%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193469%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193468%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193467%_))
                                           (cons '#f '())))))))
                (_%__kont194199194200%_ (lambda () '(begin))))
            (let ((_%__match194328194329%_
                   (lambda (_%e193258193513%_
                            _%hd193257193516%_
                            _%tl193256193518%_
                            _%e193261193521%_
                            _%hd193260193524%_
                            _%tl193259193526%_
                            _%e193264193529%_
                            _%hd193263193532%_
                            _%tl193262193534%_
                            _%e193267193537%_
                            _%hd193266193540%_
                            _%tl193265193542%_
                            _%e193270193545%_
                            _%hd193269193548%_
                            _%tl193268193550%_
                            _%e193273193553%_
                            _%hd193272193556%_
                            _%tl193271193558%_
                            _%e193276193561%_
                            _%hd193275193564%_
                            _%tl193274193566%_
                            _%e193279193569%_
                            _%hd193278193572%_
                            _%tl193277193574%_
                            _%e193282193577%_
                            _%hd193281193580%_
                            _%tl193280193582%_
                            _%e193285193585%_
                            _%hd193284193588%_
                            _%tl193283193590%_
                            _%e193288193593%_
                            _%hd193287193596%_
                            _%tl193286193598%_
                            _%e193291193601%_
                            _%hd193290193604%_
                            _%tl193289193606%_
                            _%e193294193609%_
                            _%hd193293193612%_
                            _%tl193292193614%_
                            _%e193297193617%_
                            _%hd193296193620%_
                            _%tl193295193622%_
                            _%e193300193625%_
                            _%hd193299193628%_
                            _%tl193298193630%_
                            _%e193303193633%_
                            _%hd193302193636%_
                            _%tl193301193638%_)
                     (let ((_%L193641%_ _%hd193302193636%_)
                           (_%L193642%_ _%hd193293193612%_)
                           (_%L193643%_ _%hd193284193588%_)
                           (_%L193644%_ _%hd193275193564%_)
                           (_%L193645%_ _%hd193266193540%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L193645%_
                              'bind-method!))
                           (_%__kont194195194196%_
                            _%L193641%_
                            _%L193642%_
                            _%L193643%_
                            _%L193644%_
                            _%L193645%_)
                           (_%__kont194199194200%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194193194194%_))
                  (let ((_%e193258193513%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194193194194%_))))
                    (let ((_%tl193256193518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193258193513%_)))
                          (_%hd193257193516%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193258193513%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193256193518%_))
                          (let ((_%e193261193521%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193256193518%_))))
                            (let ((_%tl193259193526%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193261193521%_)))
                                  (_%hd193260193524%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193261193521%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193260193524%_))
                                  (let ((_%e193264193529%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193260193524%_))))
                                    (let ((_%tl193262193534%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193264193529%_)))
                                          (_%hd193263193532%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193264193529%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193263193532%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193263193532%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193262193534%_))
                                                  (let ((_%e193267193537%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193262193534%_))))
                                                    (let ((_%tl193265193542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193267193537%_)))
                                                          (_%hd193266193540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193267193537%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193265193542%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193259193526%_))
                      (let ((_%e193270193545%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193259193526%_))))
                        (let ((_%tl193268193550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193270193545%_)))
                              (_%hd193269193548%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193270193545%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd193269193548%_))
                              (let ((_%e193273193553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd193269193548%_))))
                                (let ((_%tl193271193558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193273193553%_)))
                                      (_%hd193272193556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193273193553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd193272193556%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd193272193556%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193271193558%_))
                                              (let ((_%e193276193561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193271193558%_))))
                                                (let ((_%tl193274193566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193276193561%_)))
                                                      (_%hd193275193564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193276193561%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193274193566%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193268193550%_))
                                                          (let ((_%e193279193569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193268193550%_))))
                    (let ((_%tl193277193574%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193279193569%_)))
                          (_%hd193278193572%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193279193569%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd193278193572%_))
                          (let ((_%e193282193577%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd193278193572%_))))
                            (let ((_%tl193280193582%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193282193577%_)))
                                  (_%hd193281193580%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193282193577%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd193281193580%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd193281193580%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193280193582%_))
                                          (let ((_%e193285193585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193280193582%_))))
                                            (let ((_%tl193283193590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193285193585%_)))
                                                  (_%hd193284193588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193285193585%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193283193590%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193277193574%_))
                                                      (let ((_%e193288193593%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193277193574%_))))
                (let ((_%tl193286193598%_
                       (let () (declare (not safe)) (##cdr _%e193288193593%_)))
                      (_%hd193287193596%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193288193593%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193287193596%_))
                      (let ((_%e193291193601%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193287193596%_))))
                        (let ((_%tl193289193606%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193291193601%_)))
                              (_%hd193290193604%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193291193601%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193290193604%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193290193604%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193289193606%_))
                                      (let ((_%e193294193609%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193289193606%_))))
                                        (let ((_%tl193292193614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193294193609%_)))
                                              (_%hd193293193612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193294193609%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193292193614%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193286193598%_))
                                                  (let ((_%e193297193617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193286193598%_))))
                                                    (let ((_%tl193295193622%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193297193617%_)))
                                                          (_%hd193296193620%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193297193617%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193296193620%_))
                                                          (let ((_%e193300193625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193296193620%_))))
                    (let ((_%tl193298193630%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193300193625%_)))
                          (_%hd193299193628%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193300193625%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193299193628%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193299193628%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193298193630%_))
                                  (let ((_%e193303193633%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193298193630%_))))
                                    (let ((_%tl193301193638%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193303193633%_)))
                                          (_%hd193302193636%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193303193633%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193301193638%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193295193622%_))
                                              (_%__match194328194329%_
                                               _%e193258193513%_
                                               _%hd193257193516%_
                                               _%tl193256193518%_
                                               _%e193261193521%_
                                               _%hd193260193524%_
                                               _%tl193259193526%_
                                               _%e193264193529%_
                                               _%hd193263193532%_
                                               _%tl193262193534%_
                                               _%e193267193537%_
                                               _%hd193266193540%_
                                               _%tl193265193542%_
                                               _%e193270193545%_
                                               _%hd193269193548%_
                                               _%tl193268193550%_
                                               _%e193273193553%_
                                               _%hd193272193556%_
                                               _%tl193271193558%_
                                               _%e193276193561%_
                                               _%hd193275193564%_
                                               _%tl193274193566%_
                                               _%e193279193569%_
                                               _%hd193278193572%_
                                               _%tl193277193574%_
                                               _%e193282193577%_
                                               _%hd193281193580%_
                                               _%tl193280193582%_
                                               _%e193285193585%_
                                               _%hd193284193588%_
                                               _%tl193283193590%_
                                               _%e193288193593%_
                                               _%hd193287193596%_
                                               _%tl193286193598%_
                                               _%e193291193601%_
                                               _%hd193290193604%_
                                               _%tl193289193606%_
                                               _%e193294193609%_
                                               _%hd193293193612%_
                                               _%tl193292193614%_
                                               _%e193297193617%_
                                               _%hd193296193620%_
                                               _%tl193295193622%_
                                               _%e193300193625%_
                                               _%hd193299193628%_
                                               _%tl193298193630%_
                                               _%e193303193633%_
                                               _%hd193302193636%_
                                               _%tl193301193638%_)
                                              (_%__kont194199194200%_))
                                          (_%__kont194199194200%_))))
                                  (_%__kont194199194200%_))
                              (_%__kont194199194200%_))
                          (_%__kont194199194200%_))))
                  (_%__kont194199194200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193286193598%_))
                                                      (if (let ((__tmp194560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp194560 'bind-method!))
                  (let ((_%L193467%_ _%hd193293193612%_)
                        (_%L193468%_ _%hd193284193588%_)
                        (_%L193469%_ _%hd193275193564%_)
                        (_%L193470%_ _%hd193266193540%_))
                    (_%__kont194197194198%_
                     _%L193467%_
                     _%L193468%_
                     _%L193469%_
                     _%L193470%_))
                  (_%__kont194199194200%_))
              (_%__kont194199194200%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194199194200%_))))
                                      (_%__kont194199194200%_))
                                  (_%__kont194199194200%_))
                              (_%__kont194199194200%_))))
                      (_%__kont194199194200%_))))
              (_%__kont194199194200%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194199194200%_))))
                                          (_%__kont194199194200%_))
                                      (_%__kont194199194200%_))
                                  (_%__kont194199194200%_))))
                          (_%__kont194199194200%_))))
                  (_%__kont194199194200%_))
              (_%__kont194199194200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194199194200%_))
                                          (_%__kont194199194200%_))
                                      (_%__kont194199194200%_))))
                              (_%__kont194199194200%_))))
                      (_%__kont194199194200%_))
                  (_%__kont194199194200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194199194200%_))
                                              (_%__kont194199194200%_))
                                          (_%__kont194199194200%_))))
                                  (_%__kont194199194200%_))))
                          (_%__kont194199194200%_))))
                  (_%__kont194199194200%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self193068%_ _%stx193069%_)
        (let* ((_%__stx194437194438%_ _%stx193069%_)
               (_%g193072193112%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194437194438%_)))))
          (let ((_%__kont194439194440%_
                 (lambda (_%L193218%_ _%L193219%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193219%_))
                               (cons _%L193218%_ '())))))
                (_%__kont194441194442%_
                 (lambda (_%L193141%_ _%L193142%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx194437194438%_))
                (let ((_%e193078193162%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx194437194438%_))))
                  (let ((_%tl193076193167%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193078193162%_)))
                        (_%hd193077193165%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193078193162%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl193076193167%_))
                        (let ((_%e193081193170%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl193076193167%_))))
                          (let ((_%tl193079193175%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193081193170%_)))
                                (_%hd193080193173%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193081193170%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd193080193173%_))
                                (let ((_%e193084193178%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd193080193173%_))))
                                  (let ((_%tl193082193183%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193084193178%_)))
                                        (_%hd193083193181%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193084193178%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd193083193181%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd193083193181%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193082193183%_))
                                                (let ((_%e193087193186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193082193183%_))))
                                                  (let ((_%tl193085193191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193087193186%_)))
                                                        (_%hd193086193189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193087193186%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193085193191%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193079193175%_))
                                                            (let ((_%e193090193194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193079193175%_))))
                      (let ((_%tl193088193199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193090193194%_)))
                            (_%hd193089193197%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193090193194%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193089193197%_))
                            (let ((_%e193093193202%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193089193197%_))))
                              (let ((_%tl193091193207%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193093193202%_)))
                                    (_%hd193092193205%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193093193202%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193092193205%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193092193205%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193091193207%_))
                                            (let ((_%e193096193210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193091193207%_))))
                                              (let ((_%tl193094193215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193096193210%_)))
                                                    (_%hd193095193213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193096193210%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193094193215%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193088193199%_))
                                                        (_%__kont194439194440%_
                                                         _%hd193095193213%_
                                                         _%hd193086193189%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193072193112%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193088193199%_))
                                                        (_%__kont194441194442%_
                                                         _%hd193089193197%_
                                                         _%hd193080193173%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193072193112%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193088193199%_))
                                                (_%__kont194441194442%_
                                                 _%hd193089193197%_
                                                 _%hd193080193173%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193072193112%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193088193199%_))
                                            (_%__kont194441194442%_
                                             _%hd193089193197%_
                                             _%hd193080193173%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193072193112%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193088193199%_))
                                        (_%__kont194441194442%_
                                         _%hd193089193197%_
                                         _%hd193080193173%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g193072193112%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl193088193199%_))
                                (_%__kont194441194442%_
                                 _%hd193089193197%_
                                 _%hd193080193173%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g193072193112%_))))))
                    (let () (declare (not safe)) (_%g193072193112%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl193079193175%_))
                    (let ((_%e193107193133%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193079193175%_))))
                      (let ((_%tl193105193138%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193107193133%_)))
                            (_%hd193106193136%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193107193133%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193105193138%_))
                            (_%__kont194441194442%_
                             _%hd193106193136%_
                             _%hd193080193173%_)
                            (let ()
                              (declare (not safe))
                              (_%g193072193112%_)))))
                    (let () (declare (not safe)) (_%g193072193112%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl193079193175%_))
                                                    (let ((_%e193107193133%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl193079193175%_))))
                                                      (let ((_%tl193105193138%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e193107193133%_)))
                    (_%hd193106193136%_
                     (let () (declare (not safe)) (##car _%e193107193133%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193105193138%_))
                    (_%__kont194441194442%_
                     _%hd193106193136%_
                     _%hd193080193173%_)
                    (let () (declare (not safe)) (_%g193072193112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193072193112%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193079193175%_))
                                                (let ((_%e193107193133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193079193175%_))))
                                                  (let ((_%tl193105193138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193107193133%_)))
                                                        (_%hd193106193136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193107193133%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193105193138%_))
                                                        (_%__kont194441194442%_
                                                         _%hd193106193136%_
                                                         _%hd193080193173%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193072193112%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193072193112%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193079193175%_))
                                            (let ((_%e193107193133%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193079193175%_))))
                                              (let ((_%tl193105193138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193107193133%_)))
                                                    (_%hd193106193136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193107193133%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193105193138%_))
                                                    (_%__kont194441194442%_
                                                     _%hd193106193136%_
                                                     _%hd193080193173%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193072193112%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g193072193112%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl193079193175%_))
                                    (let ((_%e193107193133%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl193079193175%_))))
                                      (let ((_%tl193105193138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193107193133%_)))
                                            (_%hd193106193136%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193107193133%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193105193138%_))
                                            (_%__kont194441194442%_
                                             _%hd193106193136%_
                                             _%hd193080193173%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193072193112%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g193072193112%_))))))
                        (let () (declare (not safe)) (_%g193072193112%_)))))
                (let () (declare (not safe)) (_%g193072193112%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self193055%_)
        (let ((_%self193058%_ _%self193055%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193058%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self192828%_)
        (let ((_%self192831%_ _%self192828%_))
          (let* ((_%self192840192856%_ _%self192831%_)
                 (_%E192842192860%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self192840192856%_
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
                 (_%K192843192875%_
                  (lambda (_%methods192863%_
                           _%metaclass192864%_
                           _%system?192865%_
                           _%final?192866%_
                           _%struct?192867%_
                           _%constructor192868%_
                           _%fields192869%_
                           _%slots192870%_
                           _%precendence-list192871%_
                           _%super192872%_
                           _%id192873%_)
                    (cons '@class
                          (cons _%id192873%_
                                (cons _%super192872%_
                                      (cons _%precendence-list192871%_
                                            (cons _%slots192870%_
                                                  (cons _%fields192869%_
                                                        (cons _%constructor192868%_
                                                              (cons _%struct?192867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%final?192866%_
                                  (cons _%system?192865%_
                                        (cons _%metaclass192864%_
                                              (cons (if _%methods192863%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash->list
                                                           _%methods192863%_))
                                                        '#f)
                                                    '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (if '#t
                (let* ((_%e192844192878%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '1
                           '#f
                           '#f)))
                       (_%id192881%_ _%e192844192878%_)
                       (_%e192845192883%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '2
                           '#f
                           '#f)))
                       (_%super192886%_ _%e192845192883%_)
                       (_%e192846192888%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '3
                           '#f
                           '#f)))
                       (_%precendence-list192891%_ _%e192846192888%_)
                       (_%e192847192893%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '4
                           '#f
                           '#f)))
                       (_%slots192896%_ _%e192847192893%_)
                       (_%e192848192898%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '5
                           '#f
                           '#f)))
                       (_%fields192901%_ _%e192848192898%_)
                       (_%e192849192903%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '6
                           '#f
                           '#f)))
                       (_%constructor192906%_ _%e192849192903%_)
                       (_%e192850192908%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '7
                           '#f
                           '#f)))
                       (_%struct?192911%_ _%e192850192908%_)
                       (_%e192851192913%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '8
                           '#f
                           '#f)))
                       (_%final?192916%_ _%e192851192913%_)
                       (_%e192852192918%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '9
                           '#f
                           '#f)))
                       (_%system?192921%_ _%e192852192918%_)
                       (_%e192853192923%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '10
                           '#f
                           '#f)))
                       (_%metaclass192926%_ _%e192853192923%_)
                       (_%e192854192928%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192840192856%_
                           '11
                           '#f
                           '#f)))
                       (_%methods192931%_ _%e192854192928%_))
                  (declare (not safe))
                  (_%K192843192875%_
                   _%methods192931%_
                   _%metaclass192926%_
                   _%system?192921%_
                   _%final?192916%_
                   _%struct?192911%_
                   _%constructor192906%_
                   _%fields192901%_
                   _%slots192896%_
                   _%precendence-list192891%_
                   _%super192886%_
                   _%id192881%_))
                (let () (declare (not safe)) (_%E192842192860%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self192693%_)
        (let ((_%self192696%_ _%self192693%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192696%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self192558%_)
        (let ((_%self192561%_ _%self192558%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192561%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self192423%_)
        (let ((_%self192426%_ _%self192423%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192426%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192426%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192426%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self192288%_)
        (let ((_%self192291%_ _%self192288%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192291%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192291%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192291%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self192153%_)
        (let ((_%self192156%_ _%self192153%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192156%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192156%_
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
      (lambda (_%self191966%_)
        (let ((_%self191969%_ _%self191966%_))
          (let* ((_%self191978191987%_ _%self191969%_)
                 (_%E191980191991%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self191978191987%_
                             '((!lambda _ signature arity dispatch))))
                    '#!void))
                 (_%K191981192010%_
                  (lambda (_%dispatch191994%_
                           _%arity191995%_
                           _%signature191996%_)
                    (if _%signature191996%_
                        (let ((_%signature191998%_ _%signature191996%_))
                          (cons '@lambda
                                (cons _%arity191995%_
                                      (cons _%dispatch191994%_
                                            (cons 'signature:
                                                  (cons (cons 'return:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature191998%_
                               '1
                               '#f
                               '#f))
                            (cons 'effect:
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%signature191998%_
                                           '2
                                           '#f
                                           '#f))
                                        (cons 'arguments:
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%signature191998%_
                                                       '3
                                                       '#f
                                                       '#f))
                                                    (cons 'unchecked:
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%signature191998%_
                           '4
                           '#f
                           '#f))
                        '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (cons '@lambda
                              (cons _%arity191995%_
                                    (cons _%dispatch191994%_ '())))))))
            (if '#t
                (let* ((_%e191982192013%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191978191987%_
                           '1
                           '#f
                           '#f)))
                       (_%e191983192016%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191978191987%_
                           '2
                           '#f
                           '#f)))
                       (_%signature192019%_ _%e191983192016%_)
                       (_%e191984192021%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191978191987%_
                           '3
                           '#f
                           '#f)))
                       (_%arity192024%_ _%e191984192021%_)
                       (_%e191985192026%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191978191987%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch192029%_ _%e191985192026%_))
                  (declare (not safe))
                  (_%K191981192010%_
                   _%dispatch192029%_
                   _%arity192024%_
                   _%signature192019%_))
                (let () (declare (not safe)) (_%E191980191991%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self191827%_)
        (let ((_%self191830%_ _%self191827%_))
          (letrec ((_%clause-e191840%_
                    (lambda (_%clause191842%_)
                      (cdr (let ((__method194525
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause191842%_
                                     'typedecl))))
                             (if __method194525
                                 (__method194525 _%clause191842%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause191842%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e191840%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191830%_
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
      (lambda (_%self191692%_)
        (let ((_%self191695%_ _%self191692%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191695%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191695%_
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
      (lambda (_%self191557%_)
        (let ((_%self191560%_ _%self191557%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191560%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191560%_
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
      (lambda (_%self191422%_)
        (let ((_%self191425%_ _%self191422%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191425%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
