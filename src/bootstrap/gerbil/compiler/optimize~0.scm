(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712246562)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp194543
                   (let ((__obj194537
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj194537)
                     __obj194537)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp194543)))))
    (define gxc#optimize!
      (lambda (_%ctx194146%_)
        (let ((__tmp194546
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx194146%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx194146%_))
                 (let ((__tmp194548
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp194547
                        (##structure-ref
                         _%ctx194146%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp194548 __tmp194547 '#t))
                 (let ((_%code194149%_
                        (let ((__tmp194549
                               (##structure-ref
                                _%ctx194146%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp194549))))
                   (##structure-set!
                    _%ctx194146%_
                    _%code194149%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp194545 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194544 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194546
           gxc#current-compile-mutators
           __tmp194545
           gxc#current-compile-local-type
           __tmp194544))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx194132%_)
        (letrec ((_%load-it!194134%_
                  (lambda (_%id194144%_)
                    (if (let ((__tmp194550
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp194550 _%id194144%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id194144%_))
                          (let ((__tmp194551
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp194551 _%id194144%_ '#t)))))))
          (let* ((_%modid194136%_
                  (##structure-ref
                   _%ctx194132%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str194138%_ (symbol->string _%modid194136%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str194138%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str194138%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194134%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194134%_
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
      (lambda (_%ctx194069%_)
        (letrec* ((_%deps194071%_
                   (let* ((_%imports194122%_
                           (##structure-ref
                            _%ctx194069%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e194124%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx194069%_))))
                     (if _%$e194124%_
                         ((lambda (_%g194126194128%_)
                            (cons _%g194126194128%_ _%imports194122%_))
                          _%$e194124%_)
                         (let () _%imports194122%_)))))
          (let _%lp194073%_ ((_%rest194075%_ _%deps194071%_))
            (let* ((_%rest194076194084%_ _%rest194075%_)
                   (_%else194078194092%_ (lambda () '#!void))
                   (_%K194080194110%_
                    (lambda (_%rest194095%_ _%hd194096%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd194096%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp194553
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp194552
                                       (##structure-ref
                                        _%hd194096%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp194553 __tmp194552))
                                '#!void
                                (begin
                                  (let ((_%$e194099%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd194096%_))))
                                    (if _%$e194099%_
                                        ((lambda (_%pre194102%_)
                                           (let ((__tmp194554
                                                  (cons _%pre194102%_
                                                        (##structure-ref
                                                         _%hd194096%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp194073%_ __tmp194554)))
                                         _%$e194099%_)
                                        (let ((__tmp194555
                                               (##structure-ref
                                                _%hd194096%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_%lp194073%_ __tmp194555))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd194096%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp194073%_ _%rest194095%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd194096%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp194557
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp194556
                                           (##structure-ref
                                            _%hd194096%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp194557 __tmp194556))
                                    '#!void
                                    (begin
                                      (let ((__tmp194558
                                             (##structure-ref
                                              _%hd194096%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp194073%_ __tmp194558))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd194096%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp194073%_ _%rest194095%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd194096%_
                                     'gx#module-import::t))
                                  (let ((__tmp194559
                                         (cons (##direct-structure-ref
                                                _%hd194096%_
                                                '1
                                                gx#module-import::t
                                                '#f)
                                               _%rest194095%_)))
                                    (declare (not safe))
                                    (_%lp194073%_ __tmp194559))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd194096%_
                                         'gx#module-export::t))
                                      (let ((__tmp194560
                                             (cons (##direct-structure-ref
                                                    _%hd194096%_
                                                    '1
                                                    gx#module-export::t
                                                    '#f)
                                                   _%rest194095%_)))
                                        (declare (not safe))
                                        (_%lp194073%_ __tmp194560))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd194096%_
                                             'gx#import-set::t))
                                          (let ((__tmp194561
                                                 (cons (##direct-structure-ref
                                                        _%hd194096%_
                                                        '1
                                                        gx#import-set::t
                                                        '#f)
                                                       _%rest194095%_)))
                                            (declare (not safe))
                                            (_%lp194073%_ __tmp194561))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd194096%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest194076194084%_))
                  (let ((_%hd194081194113%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194076194084%_)))
                        (_%tl194082194115%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194076194084%_))))
                    (let* ((_%hd194118%_ _%hd194081194113%_)
                           (_%rest194120%_ _%tl194082194115%_))
                      (declare (not safe))
                      (_%K194080194110%_ _%rest194120%_ _%hd194118%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx194049%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx194049%_
                    'gx#module-context::t))
                 (let ((__tmp194562
                        (##structure-ref
                         _%ctx194049%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp194562)))
            '#!void
            (let* ((_%ht194051%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id194053%_
                    (##structure-ref
                     _%ctx194049%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod194055%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht194051%_ _%id194053%_)))
                   (_%$e194058%_ _%mod194055%_))
              (if _%$e194058%_
                  _%$e194058%_
                  (let* ((_%mod194061%_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi _%ctx194049%_)))
                         (_%val194066%_
                          (let ((_%$e194063%_ _%mod194061%_))
                            (if _%$e194063%_ _%$e194063%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht194051%_ _%id194053%_ _%val194066%_))
                    _%val194066%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx194047%_)
        (if (##structure-ref _%ctx194047%_ '1 gx#expander-context::t '#f)
            (let ((__tmp194563
                   (##structure-ref
                    _%ctx194047%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp194563))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id194024%_)
        (letrec ((_%catch-e194026%_
                  (lambda (_%exn194045%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn194045%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn194045%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id194024%_))))
                    '#f))
                 (_%import-e194027%_
                  (lambda ()
                    (let* ((_%str-id194030%_
                            (let ((__tmp194564
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id194024%_))))
                              (declare (not safe))
                              (##string-append __tmp194564 '".ssxi")))
                           (_%artefact-path194038%_
                            (let ((_%odir194031194033%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir194031194033%_
                                  (let ((_%odir194036%_ _%odir194031194033%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id194030%_
                                        '".ss"))
                                     _%odir194036%_))
                                  '#f)))
                           (_%library-path194040%_
                            (let ((__tmp194565
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id194030%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp194565)))
                           (_%ssxi-path194042%_
                            (if (and _%artefact-path194038%_
                                     (file-exists? _%artefact-path194038%_))
                                _%artefact-path194038%_
                                _%library-path194040%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path194042%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path194042%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e194026%_ _%import-e194027%_)))))
    (define gxc#optimize-source
      (lambda (_%stx194015%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx194015%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx194015%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx194015%_))
        (let* ((_%stx194017%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx194015%_)))
               (_%stx194019%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx194017%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx194019%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx194019%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx194019%_))
          (let ((_%stx194022%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx194019%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx194022%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp194567 (list gxc#::generate-runtime-empty::t))
            (__tmp194566 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp194567
         '()
         __tmp194566
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args194012%_
        (apply make-instance gxc#::generate-ssxi::t _%$args194012%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp194568
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
        (__make-promise __tmp194568)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx194004%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self194007%_
                (let ((__obj194539
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj194539))
               (__tmp194569
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194007%_ _%stx194004%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194569
           gxc#current-compile-method
           _%self194007%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self193964%_ _%stx193965%_)
        (let* ((_%g193967193977%_
                (lambda (_%g193968193974%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193968193974%_))))
               (_%g193966194001%_
                (lambda (_%g193968193980%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193968193980%_))
                      (let ((_%e193972193982%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193968193980%_))))
                        (let ((_%hd193971193985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193972193982%_)))
                              (_%tl193970193987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193972193982%_))))
                          ((lambda (_%L193990%_)
                             (let ((__tmp194572
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self193964%_
                                         _%stx193965%_))))
                                   (__tmp194570
                                    (let ((__tmp194571
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194571 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp194572
                                gx#current-expander-phi
                                __tmp194570)))
                           _%tl193970193987%_)))
                      (let ()
                        (declare (not safe))
                        (_%g193967193977%_ _%g193968193980%_))))))
          (declare (not safe))
          (_%g193966194001%_ _%stx193965%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self193903%_ _%stx193904%_)
        (let* ((_%g193906193920%_
                (lambda (_%g193907193917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193907193917%_))))
               (_%g193905193961%_
                (lambda (_%g193907193923%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193907193923%_))
                      (let ((_%e193912193925%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193907193923%_))))
                        (let ((_%hd193911193928%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193912193925%_)))
                              (_%tl193910193930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193912193925%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193910193930%_))
                              (let ((_%e193915193933%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193910193930%_))))
                                (let ((_%hd193914193936%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193915193933%_)))
                                      (_%tl193913193938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193915193933%_))))
                                  ((lambda (_%L193941%_ _%L193942%_)
                                     (let* ((_%ctx193955%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L193942%_)))
                                            (_%code193957%_
                                             (##structure-ref
                                              _%ctx193955%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194573
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self193903%_
                                                  _%code193957%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp194573
                                        gx#current-expander-context
                                        _%ctx193955%_)))
                                   _%tl193913193938%_
                                   _%hd193914193936%_)))
                              (let ()
                                (declare (not safe))
                                (_%g193906193920%_ _%g193907193923%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g193906193920%_ _%g193907193923%_))))))
          (declare (not safe))
          (_%g193905193961%_ _%stx193904%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self193708%_ _%stx193709%_)
        (letrec ((_%generate-e193711%_
                  (lambda (_%id193888%_)
                    (let* ((_%sym193890%_
                            (if (let ((__tmp194574
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp194574))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id193888%_))
                                '#f))
                           (_%$e193892%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym193890%_))))
                      (if _%$e193892%_
                          ((lambda (_%klass193895%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym193890%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym193890%_
                                                     (cons (let ((__method194540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass193895%_ 'typedecl))))
                     (if __method194540
                         (__method194540 _%klass193895%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass193895%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym193890%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym193890%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e193892%_)
                          (let ((_%$e193897%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym193890%_))))
                            (if _%$e193897%_
                                ((lambda (_%type193900%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym193890%_
                                      '" "
                                      _%type193900%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type193900%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym193890%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym193890%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type193900%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym193890%_
                                                   (cons (let ((__method194541
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type193900%_ 'typedecl))))
                   (if __method194541
                       (__method194541 _%type193900%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type193900%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e193897%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx194152194153%_ _%stx193709%_)
                 (_%g193714193752%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194152194153%_)))))
            (let ((_%__kont194154194155%_
                   (lambda (_%L193870%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e193711%_ _%L193870%_))))
                  (_%__kont194156194157%_
                   (lambda (_%L193805%_)
                     (let ((_%types193831%_
                            (map _%generate-e193711%_
                                 (let ((__tmp194575
                                        (lambda (_%g193823193826%_
                                                 _%g193824193828%_)
                                          (cons _%g193823193826%_
                                                _%g193824193828%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp194575 '() _%L193805%_)))))
                       (cons 'begin _%types193831%_)))))
              (let ((_%__match194207194208%_
                     (lambda (_%e193732193757%_
                              _%hd193731193760%_
                              _%tl193730193762%_
                              _%e193735193765%_
                              _%hd193734193768%_
                              _%tl193733193770%_
                              _%__splice194158194159%_
                              _%target193736193773%_
                              _%tl193738193775%_)
                       (letrec ((_%loop193739193778%_
                                 (lambda (_%hd193737193781%_
                                          _%id193743193783%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd193737193781%_))
                                       (let ((_%e193740193786%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd193737193781%_))))
                                         (let ((_%lp-tl193742193791%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e193740193786%_)))
                                               (_%lp-hd193741193789%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e193740193786%_))))
                                           (let ((__tmp194576
                                                  (cons _%lp-hd193741193789%_
                                                        _%id193743193783%_)))
                                             (declare (not safe))
                                             (_%loop193739193778%_
                                              _%lp-tl193742193791%_
                                              __tmp194576))))
                                       (let ((_%id193744193794%_
                                              (reverse _%id193743193783%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl193733193770%_))
                                             (let ((_%e193747193797%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl193733193770%_))))
                                               (let ((_%tl193745193802%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e193747193797%_)))
                                                     (_%hd193746193800%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e193747193797%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193745193802%_))
                                                     (_%__kont194156194157%_
                                                      _%id193744193794%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g193714193752%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g193714193752%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop193739193778%_
                            _%target193736193773%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194152194153%_))
                    (let ((_%e193719193838%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194152194153%_))))
                      (let ((_%tl193717193843%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193719193838%_)))
                            (_%hd193718193841%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193719193838%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193717193843%_))
                            (let ((_%e193722193846%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193717193843%_))))
                              (let ((_%tl193720193851%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193722193846%_)))
                                    (_%hd193721193849%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193722193846%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd193721193849%_))
                                    (let ((_%e193725193854%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd193721193849%_))))
                                      (let ((_%tl193723193859%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193725193854%_)))
                                            (_%hd193724193857%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193725193854%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193723193859%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193720193851%_))
                                                (let ((_%e193728193862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193720193851%_))))
                                                  (let ((_%tl193726193867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193728193862%_)))
                                                        (_%hd193727193865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193728193862%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193726193867%_))
                                                        (_%__kont194154194155%_
                                                         _%hd193724193857%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd193721193849%_))
                                                            (let ((_%__splice194158194159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd193721193849%_ '0))))
                      (let ((_%tl193738193775%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194158194159%_ '1)))
                            (_%target193736193773%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194158194159%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193738193775%_))
                            (_%__match194207194208%_
                             _%e193719193838%_
                             _%hd193718193841%_
                             _%tl193717193843%_
                             _%e193722193846%_
                             _%hd193721193849%_
                             _%tl193720193851%_
                             _%__splice194158194159%_
                             _%target193736193773%_
                             _%tl193738193775%_)
                            (let ()
                              (declare (not safe))
                              (_%g193714193752%_)))))
                    (let () (declare (not safe)) (_%g193714193752%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd193721193849%_))
                                                    (let ((_%__splice194158194159%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd193721193849%_
                                                              '0))))
                                                      (let ((_%tl193738193775%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice194158194159%_ '1)))
                    (_%target193736193773%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice194158194159%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193738193775%_))
                    (_%__match194207194208%_
                     _%e193719193838%_
                     _%hd193718193841%_
                     _%tl193717193843%_
                     _%e193722193846%_
                     _%hd193721193849%_
                     _%tl193720193851%_
                     _%__splice194158194159%_
                     _%target193736193773%_
                     _%tl193738193775%_)
                    (let () (declare (not safe)) (_%g193714193752%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193714193752%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd193721193849%_))
                                                (let ((_%__splice194158194159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd193721193849%_
                                                          '0))))
                                                  (let ((_%tl193738193775%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194158194159%_
                                                            '1)))
                                                        (_%target193736193773%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194158194159%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193738193775%_))
                                                        (_%__match194207194208%_
                                                         _%e193719193838%_
                                                         _%hd193718193841%_
                                                         _%tl193717193843%_
                                                         _%e193722193846%_
                                                         _%hd193721193849%_
                                                         _%tl193720193851%_
                                                         _%__splice194158194159%_
                                                         _%target193736193773%_
                                                         _%tl193738193775%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193714193752%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193714193752%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd193721193849%_))
                                        (let ((_%__splice194158194159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd193721193849%_
                                                  '0))))
                                          (let ((_%tl193738193775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194158194159%_
                                                    '1)))
                                                (_%target193736193773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194158194159%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193738193775%_))
                                                (_%__match194207194208%_
                                                 _%e193719193838%_
                                                 _%hd193718193841%_
                                                 _%tl193717193843%_
                                                 _%e193722193846%_
                                                 _%hd193721193849%_
                                                 _%tl193720193851%_
                                                 _%__splice194158194159%_
                                                 _%target193736193773%_
                                                 _%tl193738193775%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193714193752%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g193714193752%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g193714193752%_)))))
                    (let () (declare (not safe)) (_%g193714193752%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self193261%_ _%stx193262%_)
        (let* ((_%__stx194210194211%_ _%stx193262%_)
               (_%g193266193368%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194210194211%_)))))
          (let ((_%__kont194212194213%_
                 (lambda (_%L193658%_
                          _%L193659%_
                          _%L193660%_
                          _%L193661%_
                          _%L193662%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193661%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193660%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193659%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L193658%_))
                                                 '())))))))
                (_%__kont194214194215%_
                 (lambda (_%L193484%_ _%L193485%_ _%L193486%_ _%L193487%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193486%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193485%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193484%_))
                                           (cons '#f '())))))))
                (_%__kont194216194217%_ (lambda () '(begin))))
            (let ((_%__match194345194346%_
                   (lambda (_%e193275193530%_
                            _%hd193274193533%_
                            _%tl193273193535%_
                            _%e193278193538%_
                            _%hd193277193541%_
                            _%tl193276193543%_
                            _%e193281193546%_
                            _%hd193280193549%_
                            _%tl193279193551%_
                            _%e193284193554%_
                            _%hd193283193557%_
                            _%tl193282193559%_
                            _%e193287193562%_
                            _%hd193286193565%_
                            _%tl193285193567%_
                            _%e193290193570%_
                            _%hd193289193573%_
                            _%tl193288193575%_
                            _%e193293193578%_
                            _%hd193292193581%_
                            _%tl193291193583%_
                            _%e193296193586%_
                            _%hd193295193589%_
                            _%tl193294193591%_
                            _%e193299193594%_
                            _%hd193298193597%_
                            _%tl193297193599%_
                            _%e193302193602%_
                            _%hd193301193605%_
                            _%tl193300193607%_
                            _%e193305193610%_
                            _%hd193304193613%_
                            _%tl193303193615%_
                            _%e193308193618%_
                            _%hd193307193621%_
                            _%tl193306193623%_
                            _%e193311193626%_
                            _%hd193310193629%_
                            _%tl193309193631%_
                            _%e193314193634%_
                            _%hd193313193637%_
                            _%tl193312193639%_
                            _%e193317193642%_
                            _%hd193316193645%_
                            _%tl193315193647%_
                            _%e193320193650%_
                            _%hd193319193653%_
                            _%tl193318193655%_)
                     (let ((_%L193658%_ _%hd193319193653%_)
                           (_%L193659%_ _%hd193310193629%_)
                           (_%L193660%_ _%hd193301193605%_)
                           (_%L193661%_ _%hd193292193581%_)
                           (_%L193662%_ _%hd193283193557%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L193662%_
                              'bind-method!))
                           (_%__kont194212194213%_
                            _%L193658%_
                            _%L193659%_
                            _%L193660%_
                            _%L193661%_
                            _%L193662%_)
                           (_%__kont194216194217%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194210194211%_))
                  (let ((_%e193275193530%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194210194211%_))))
                    (let ((_%tl193273193535%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193275193530%_)))
                          (_%hd193274193533%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193275193530%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193273193535%_))
                          (let ((_%e193278193538%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193273193535%_))))
                            (let ((_%tl193276193543%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193278193538%_)))
                                  (_%hd193277193541%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193278193538%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193277193541%_))
                                  (let ((_%e193281193546%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193277193541%_))))
                                    (let ((_%tl193279193551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193281193546%_)))
                                          (_%hd193280193549%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193281193546%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193280193549%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193280193549%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193279193551%_))
                                                  (let ((_%e193284193554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193279193551%_))))
                                                    (let ((_%tl193282193559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193284193554%_)))
                                                          (_%hd193283193557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193284193554%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193282193559%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193276193543%_))
                      (let ((_%e193287193562%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193276193543%_))))
                        (let ((_%tl193285193567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193287193562%_)))
                              (_%hd193286193565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193287193562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd193286193565%_))
                              (let ((_%e193290193570%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd193286193565%_))))
                                (let ((_%tl193288193575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193290193570%_)))
                                      (_%hd193289193573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193290193570%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd193289193573%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd193289193573%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193288193575%_))
                                              (let ((_%e193293193578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193288193575%_))))
                                                (let ((_%tl193291193583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193293193578%_)))
                                                      (_%hd193292193581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193293193578%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193291193583%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193285193567%_))
                                                          (let ((_%e193296193586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193285193567%_))))
                    (let ((_%tl193294193591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193296193586%_)))
                          (_%hd193295193589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193296193586%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd193295193589%_))
                          (let ((_%e193299193594%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd193295193589%_))))
                            (let ((_%tl193297193599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193299193594%_)))
                                  (_%hd193298193597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193299193594%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd193298193597%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd193298193597%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193297193599%_))
                                          (let ((_%e193302193602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193297193599%_))))
                                            (let ((_%tl193300193607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193302193602%_)))
                                                  (_%hd193301193605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193302193602%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193300193607%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193294193591%_))
                                                      (let ((_%e193305193610%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193294193591%_))))
                (let ((_%tl193303193615%_
                       (let () (declare (not safe)) (##cdr _%e193305193610%_)))
                      (_%hd193304193613%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193305193610%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193304193613%_))
                      (let ((_%e193308193618%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193304193613%_))))
                        (let ((_%tl193306193623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193308193618%_)))
                              (_%hd193307193621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193308193618%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193307193621%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193307193621%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193306193623%_))
                                      (let ((_%e193311193626%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193306193623%_))))
                                        (let ((_%tl193309193631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193311193626%_)))
                                              (_%hd193310193629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193311193626%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193309193631%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193303193615%_))
                                                  (let ((_%e193314193634%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193303193615%_))))
                                                    (let ((_%tl193312193639%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193314193634%_)))
                                                          (_%hd193313193637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193314193634%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193313193637%_))
                                                          (let ((_%e193317193642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193313193637%_))))
                    (let ((_%tl193315193647%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193317193642%_)))
                          (_%hd193316193645%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193317193642%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193316193645%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193316193645%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193315193647%_))
                                  (let ((_%e193320193650%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193315193647%_))))
                                    (let ((_%tl193318193655%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193320193650%_)))
                                          (_%hd193319193653%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193320193650%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193318193655%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193312193639%_))
                                              (_%__match194345194346%_
                                               _%e193275193530%_
                                               _%hd193274193533%_
                                               _%tl193273193535%_
                                               _%e193278193538%_
                                               _%hd193277193541%_
                                               _%tl193276193543%_
                                               _%e193281193546%_
                                               _%hd193280193549%_
                                               _%tl193279193551%_
                                               _%e193284193554%_
                                               _%hd193283193557%_
                                               _%tl193282193559%_
                                               _%e193287193562%_
                                               _%hd193286193565%_
                                               _%tl193285193567%_
                                               _%e193290193570%_
                                               _%hd193289193573%_
                                               _%tl193288193575%_
                                               _%e193293193578%_
                                               _%hd193292193581%_
                                               _%tl193291193583%_
                                               _%e193296193586%_
                                               _%hd193295193589%_
                                               _%tl193294193591%_
                                               _%e193299193594%_
                                               _%hd193298193597%_
                                               _%tl193297193599%_
                                               _%e193302193602%_
                                               _%hd193301193605%_
                                               _%tl193300193607%_
                                               _%e193305193610%_
                                               _%hd193304193613%_
                                               _%tl193303193615%_
                                               _%e193308193618%_
                                               _%hd193307193621%_
                                               _%tl193306193623%_
                                               _%e193311193626%_
                                               _%hd193310193629%_
                                               _%tl193309193631%_
                                               _%e193314193634%_
                                               _%hd193313193637%_
                                               _%tl193312193639%_
                                               _%e193317193642%_
                                               _%hd193316193645%_
                                               _%tl193315193647%_
                                               _%e193320193650%_
                                               _%hd193319193653%_
                                               _%tl193318193655%_)
                                              (_%__kont194216194217%_))
                                          (_%__kont194216194217%_))))
                                  (_%__kont194216194217%_))
                              (_%__kont194216194217%_))
                          (_%__kont194216194217%_))))
                  (_%__kont194216194217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193303193615%_))
                                                      (if (let ((__tmp194577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp194577 'bind-method!))
                  (let ((_%L193484%_ _%hd193310193629%_)
                        (_%L193485%_ _%hd193301193605%_)
                        (_%L193486%_ _%hd193292193581%_)
                        (_%L193487%_ _%hd193283193557%_))
                    (_%__kont194214194215%_
                     _%L193484%_
                     _%L193485%_
                     _%L193486%_
                     _%L193487%_))
                  (_%__kont194216194217%_))
              (_%__kont194216194217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194216194217%_))))
                                      (_%__kont194216194217%_))
                                  (_%__kont194216194217%_))
                              (_%__kont194216194217%_))))
                      (_%__kont194216194217%_))))
              (_%__kont194216194217%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194216194217%_))))
                                          (_%__kont194216194217%_))
                                      (_%__kont194216194217%_))
                                  (_%__kont194216194217%_))))
                          (_%__kont194216194217%_))))
                  (_%__kont194216194217%_))
              (_%__kont194216194217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194216194217%_))
                                          (_%__kont194216194217%_))
                                      (_%__kont194216194217%_))))
                              (_%__kont194216194217%_))))
                      (_%__kont194216194217%_))
                  (_%__kont194216194217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194216194217%_))
                                              (_%__kont194216194217%_))
                                          (_%__kont194216194217%_))))
                                  (_%__kont194216194217%_))))
                          (_%__kont194216194217%_))))
                  (_%__kont194216194217%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self193085%_ _%stx193086%_)
        (let* ((_%__stx194454194455%_ _%stx193086%_)
               (_%g193089193129%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194454194455%_)))))
          (let ((_%__kont194456194457%_
                 (lambda (_%L193235%_ _%L193236%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193236%_))
                               (cons _%L193235%_ '())))))
                (_%__kont194458194459%_
                 (lambda (_%L193158%_ _%L193159%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx194454194455%_))
                (let ((_%e193095193179%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx194454194455%_))))
                  (let ((_%tl193093193184%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193095193179%_)))
                        (_%hd193094193182%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193095193179%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl193093193184%_))
                        (let ((_%e193098193187%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl193093193184%_))))
                          (let ((_%tl193096193192%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193098193187%_)))
                                (_%hd193097193190%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193098193187%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd193097193190%_))
                                (let ((_%e193101193195%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd193097193190%_))))
                                  (let ((_%tl193099193200%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193101193195%_)))
                                        (_%hd193100193198%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193101193195%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd193100193198%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd193100193198%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193099193200%_))
                                                (let ((_%e193104193203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193099193200%_))))
                                                  (let ((_%tl193102193208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193104193203%_)))
                                                        (_%hd193103193206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193104193203%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193102193208%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193096193192%_))
                                                            (let ((_%e193107193211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193096193192%_))))
                      (let ((_%tl193105193216%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193107193211%_)))
                            (_%hd193106193214%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193107193211%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193106193214%_))
                            (let ((_%e193110193219%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193106193214%_))))
                              (let ((_%tl193108193224%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193110193219%_)))
                                    (_%hd193109193222%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193110193219%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193109193222%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193109193222%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193108193224%_))
                                            (let ((_%e193113193227%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193108193224%_))))
                                              (let ((_%tl193111193232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193113193227%_)))
                                                    (_%hd193112193230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193113193227%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193111193232%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193105193216%_))
                                                        (_%__kont194456194457%_
                                                         _%hd193112193230%_
                                                         _%hd193103193206%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193089193129%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193105193216%_))
                                                        (_%__kont194458194459%_
                                                         _%hd193106193214%_
                                                         _%hd193097193190%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193089193129%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193105193216%_))
                                                (_%__kont194458194459%_
                                                 _%hd193106193214%_
                                                 _%hd193097193190%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193089193129%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193105193216%_))
                                            (_%__kont194458194459%_
                                             _%hd193106193214%_
                                             _%hd193097193190%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193089193129%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193105193216%_))
                                        (_%__kont194458194459%_
                                         _%hd193106193214%_
                                         _%hd193097193190%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g193089193129%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl193105193216%_))
                                (_%__kont194458194459%_
                                 _%hd193106193214%_
                                 _%hd193097193190%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g193089193129%_))))))
                    (let () (declare (not safe)) (_%g193089193129%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl193096193192%_))
                    (let ((_%e193124193150%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193096193192%_))))
                      (let ((_%tl193122193155%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193124193150%_)))
                            (_%hd193123193153%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193124193150%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193122193155%_))
                            (_%__kont194458194459%_
                             _%hd193123193153%_
                             _%hd193097193190%_)
                            (let ()
                              (declare (not safe))
                              (_%g193089193129%_)))))
                    (let () (declare (not safe)) (_%g193089193129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl193096193192%_))
                                                    (let ((_%e193124193150%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl193096193192%_))))
                                                      (let ((_%tl193122193155%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e193124193150%_)))
                    (_%hd193123193153%_
                     (let () (declare (not safe)) (##car _%e193124193150%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193122193155%_))
                    (_%__kont194458194459%_
                     _%hd193123193153%_
                     _%hd193097193190%_)
                    (let () (declare (not safe)) (_%g193089193129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193089193129%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193096193192%_))
                                                (let ((_%e193124193150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193096193192%_))))
                                                  (let ((_%tl193122193155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193124193150%_)))
                                                        (_%hd193123193153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193124193150%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193122193155%_))
                                                        (_%__kont194458194459%_
                                                         _%hd193123193153%_
                                                         _%hd193097193190%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193089193129%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193089193129%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193096193192%_))
                                            (let ((_%e193124193150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193096193192%_))))
                                              (let ((_%tl193122193155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193124193150%_)))
                                                    (_%hd193123193153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193124193150%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193122193155%_))
                                                    (_%__kont194458194459%_
                                                     _%hd193123193153%_
                                                     _%hd193097193190%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193089193129%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g193089193129%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl193096193192%_))
                                    (let ((_%e193124193150%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl193096193192%_))))
                                      (let ((_%tl193122193155%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193124193150%_)))
                                            (_%hd193123193153%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193124193150%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193122193155%_))
                                            (_%__kont194458194459%_
                                             _%hd193123193153%_
                                             _%hd193097193190%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193089193129%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g193089193129%_))))))
                        (let () (declare (not safe)) (_%g193089193129%_)))))
                (let () (declare (not safe)) (_%g193089193129%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self193072%_)
        (let ((_%self193075%_ _%self193072%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193075%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self192845%_)
        (let ((_%self192848%_ _%self192845%_))
          (let* ((_%self192857192873%_ _%self192848%_)
                 (_%E192859192877%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self192857192873%_
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
                 (_%K192860192892%_
                  (lambda (_%methods192880%_
                           _%metaclass192881%_
                           _%system?192882%_
                           _%final?192883%_
                           _%struct?192884%_
                           _%constructor192885%_
                           _%fields192886%_
                           _%slots192887%_
                           _%precendence-list192888%_
                           _%super192889%_
                           _%id192890%_)
                    (cons '@class
                          (cons _%id192890%_
                                (cons _%super192889%_
                                      (cons _%precendence-list192888%_
                                            (cons _%slots192887%_
                                                  (cons _%fields192886%_
                                                        (cons _%constructor192885%_
                                                              (cons _%struct?192884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%final?192883%_
                                  (cons _%system?192882%_
                                        (cons _%metaclass192881%_
                                              (cons (if _%methods192880%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash->list
                                                           _%methods192880%_))
                                                        '#f)
                                                    '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (if '#t
                (let* ((_%e192861192895%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '1
                           '#f
                           '#f)))
                       (_%id192898%_ _%e192861192895%_)
                       (_%e192862192900%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '2
                           '#f
                           '#f)))
                       (_%super192903%_ _%e192862192900%_)
                       (_%e192863192905%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '3
                           '#f
                           '#f)))
                       (_%precendence-list192908%_ _%e192863192905%_)
                       (_%e192864192910%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '4
                           '#f
                           '#f)))
                       (_%slots192913%_ _%e192864192910%_)
                       (_%e192865192915%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '5
                           '#f
                           '#f)))
                       (_%fields192918%_ _%e192865192915%_)
                       (_%e192866192920%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '6
                           '#f
                           '#f)))
                       (_%constructor192923%_ _%e192866192920%_)
                       (_%e192867192925%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '7
                           '#f
                           '#f)))
                       (_%struct?192928%_ _%e192867192925%_)
                       (_%e192868192930%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '8
                           '#f
                           '#f)))
                       (_%final?192933%_ _%e192868192930%_)
                       (_%e192869192935%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '9
                           '#f
                           '#f)))
                       (_%system?192938%_ _%e192869192935%_)
                       (_%e192870192940%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '10
                           '#f
                           '#f)))
                       (_%metaclass192943%_ _%e192870192940%_)
                       (_%e192871192945%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192857192873%_
                           '11
                           '#f
                           '#f)))
                       (_%methods192948%_ _%e192871192945%_))
                  (declare (not safe))
                  (_%K192860192892%_
                   _%methods192948%_
                   _%metaclass192943%_
                   _%system?192938%_
                   _%final?192933%_
                   _%struct?192928%_
                   _%constructor192923%_
                   _%fields192918%_
                   _%slots192913%_
                   _%precendence-list192908%_
                   _%super192903%_
                   _%id192898%_))
                (let () (declare (not safe)) (_%E192859192877%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self192710%_)
        (let ((_%self192713%_ _%self192710%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192713%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self192575%_)
        (let ((_%self192578%_ _%self192575%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192578%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self192440%_)
        (let ((_%self192443%_ _%self192440%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192443%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192443%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192443%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self192305%_)
        (let ((_%self192308%_ _%self192305%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192308%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192308%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192308%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self192170%_)
        (let ((_%self192173%_ _%self192170%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192173%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192173%_
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
      (lambda (_%self191983%_)
        (let ((_%self191986%_ _%self191983%_))
          (let* ((_%self191995192004%_ _%self191986%_)
                 (_%E191997192008%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self191995192004%_
                             '((!lambda _ signature arity dispatch))))
                    '#!void))
                 (_%K191998192027%_
                  (lambda (_%dispatch192011%_
                           _%arity192012%_
                           _%signature192013%_)
                    (if _%signature192013%_
                        (let ((_%signature192015%_ _%signature192013%_))
                          (cons '@lambda
                                (cons _%arity192012%_
                                      (cons _%dispatch192011%_
                                            (cons 'signature:
                                                  (cons (cons 'return:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature192015%_
                               '1
                               '#f
                               '#f))
                            (cons 'effect:
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%signature192015%_
                                           '2
                                           '#f
                                           '#f))
                                        (cons 'arguments:
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%signature192015%_
                                                       '3
                                                       '#f
                                                       '#f))
                                                    (cons 'unchecked:
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%signature192015%_
                           '4
                           '#f
                           '#f))
                        '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (cons '@lambda
                              (cons _%arity192012%_
                                    (cons _%dispatch192011%_ '())))))))
            (if '#t
                (let* ((_%e191999192030%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191995192004%_
                           '1
                           '#f
                           '#f)))
                       (_%e192000192033%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191995192004%_
                           '2
                           '#f
                           '#f)))
                       (_%signature192036%_ _%e192000192033%_)
                       (_%e192001192038%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191995192004%_
                           '3
                           '#f
                           '#f)))
                       (_%arity192041%_ _%e192001192038%_)
                       (_%e192002192043%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191995192004%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch192046%_ _%e192002192043%_))
                  (declare (not safe))
                  (_%K191998192027%_
                   _%dispatch192046%_
                   _%arity192041%_
                   _%signature192036%_))
                (let () (declare (not safe)) (_%E191997192008%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self191844%_)
        (let ((_%self191847%_ _%self191844%_))
          (letrec ((_%clause-e191857%_
                    (lambda (_%clause191859%_)
                      (cdr (let ((__method194542
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause191859%_
                                     'typedecl))))
                             (if __method194542
                                 (__method194542 _%clause191859%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause191859%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e191857%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191847%_
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
      (lambda (_%self191709%_)
        (let ((_%self191712%_ _%self191709%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191712%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191712%_
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
      (lambda (_%self191574%_)
        (let ((_%self191577%_ _%self191574%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191577%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191577%_
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
      (lambda (_%self191439%_)
        (let ((_%self191442%_ _%self191439%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191442%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
