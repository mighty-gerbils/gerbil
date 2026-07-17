(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1784279023)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp268360
                   (let ((__obj268354
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-info:::init! __obj268354))
                     __obj268354)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp268360)))))
    (define gxc#optimize!
      (lambda (_%ctx267962%_)
        (let ((__tmp268362
               (lambda ()
                 (let ((__tmp268364
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx267962%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx267962%_)
                          (let ((__tmp268366
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp268365
                                 (##structure-ref
                                  _%ctx267962%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp268366 __tmp268365 '#t))
                          (let ((_%code267966%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx267962%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx267962%_
                             _%code267966%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp268363
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp268364
                    gxc#current-compile-local-type
                    __tmp268363))))
              (__tmp268361 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268362
           gxc#current-compile-mutators
           __tmp268361))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx267948%_)
        (letrec ((_%load-it!267950%_
                  (lambda (_%id267960%_)
                    (if (let ((__tmp268367
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp268367 _%id267960%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id267960%_)
                          (let ((__tmp268368
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp268368 _%id267960%_ '#t)))))))
          (let* ((_%modid267952%_
                  (##structure-ref
                   _%ctx267948%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str267954%_ (symbol->string _%modid267952%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str267954%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str267954%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!267950%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!267950%_
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
      (lambda (_%ctx267885%_)
        (letrec* ((_%deps267887%_
                   (let* ((_%imports267938%_
                           (##structure-ref
                            _%ctx267885%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e267940%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx267885%_))))
                     (if _%$e267940%_
                         (cons _%$e267940%_ _%imports267938%_)
                         _%imports267938%_))))
          (let _%lp267889%_ ((_%rest267891%_ _%deps267887%_))
            (let* ((_%$%rest267892267900%_ _%rest267891%_)
                   (_%$%else267894267908%_ (lambda () '#!void))
                   (_%$%K267896267926%_
                    (lambda (_%rest267911%_ _%hd267912%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd267912%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp268370
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp268369
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd267912%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp268370 __tmp268369))
                                '#!void
                                (begin
                                  (let ((_%$e267915%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd267912%_))))
                                    (if _%$e267915%_
                                        (_%lp267889%_
                                         (cons _%$e267915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd267912%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp267889%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd267912%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd267912%_)))
                            (_%lp267889%_ _%rest267911%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd267912%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp268372
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp268371
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd267912%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp268372 __tmp268371))
                                    '#!void
                                    (begin
                                      (_%lp267889%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd267912%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd267912%_)))
                                (_%lp267889%_ _%rest267911%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd267912%_
                                     'gx#module-import::t))
                                  (_%lp267889%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd267912%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest267911%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd267912%_
                                         'gx#module-export::t))
                                      (_%lp267889%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd267912%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest267911%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd267912%_
                                             'gx#import-set::t))
                                          (_%lp267889%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd267912%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest267911%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd267912%_))))))))))
              (if (pair? _%$%rest267892267900%_)
                  (let ((_%$%hd267897267929%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest267892267900%_)))
                        (_%$%tl267898267931%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest267892267900%_))))
                    (let* ((_%hd267934%_ _%$%hd267897267929%_)
                           (_%rest267936%_ _%$%tl267898267931%_))
                      (_%$%K267896267926%_ _%rest267936%_ _%hd267934%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx267865%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx267865%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx267865%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht267867%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id267869%_
                    (##structure-ref
                     _%ctx267865%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod267871%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht267867%_ _%id267869%_)))
                   (_%$e267874%_ _%mod267871%_))
              (if _%$e267874%_
                  _%$e267874%_
                  (let* ((_%mod267877%_
                          (gxc#optimizer-import-ssxi _%ctx267865%_))
                         (_%val267882%_
                          (let ((_%$e267879%_ _%mod267877%_))
                            (if _%$e267879%_ _%$e267879%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht267867%_ _%id267869%_ _%val267882%_))
                    _%val267882%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx267863%_)
        (if (##structure-ref _%ctx267863%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx267863%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id267841%_)
        (letrec ((_%catch-e267843%_
                  (lambda (_%exn267861%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn267861%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn267861%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id267841%_))))
                    '#f))
                 (_%import-e267844%_
                  (lambda ()
                    (let* ((_%str-id267847%_
                            (let ((__tmp268373
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id267841%_))))
                              (declare (not safe))
                              (##string-append __tmp268373 '".ssxi")))
                           (_%artefact-path267854%_
                            (let ((_%$%odir267848267850%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir267848267850%_
                                  (let ((_%odir267852%_
                                         _%$%odir267848267850%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id267847%_
                                        '".ss"))
                                     _%odir267852%_))
                                  '#f)))
                           (_%library-path267856%_
                            (let ((__tmp268374
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id267847%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp268374)))
                           (_%ssxi-path267858%_
                            (if (and _%artefact-path267854%_
                                     (file-exists? _%artefact-path267854%_))
                                _%artefact-path267854%_
                                _%library-path267856%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path267858%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path267858%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e267843%_ _%import-e267844%_)))))
    (define gxc#optimize-source
      (lambda (_%stx267826%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx267826%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx267826%_))
        (let* ((_%stx267828%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx267826%_)))
               (_%stx267830%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx267828%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx267830%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx267830%_))
          (let _%fixpoint267833%_ ((_%current267835%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx267830%_))
            (let ((_%refined267837%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current267835%_ _%refined267837%_)
                  '#!void
                  (_%fixpoint267833%_ _%refined267837%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx267830%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx267830%_))
          (let ((_%stx267839%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx267830%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx267839%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp268376 (list gxc#::generate-runtime-empty::t))
            (__tmp268375 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp268376
         '()
         __tmp268375
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args267823%_
        (apply make-instance gxc#::generate-ssxi::t _%$args267823%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp268377
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
        (__make-atomic-promise __tmp268377)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx267815%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self267818%_
                (let ((__obj268356
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj268356))
               (__tmp268378
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self267818%_ _%stx267815%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268378
           gxc#current-compile-method
           _%self267818%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self267775%_ _%stx267776%_)
        (let* ((_%$%g267778267788%_
                (lambda (_%$%g267779267785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267779267785%_))))
               (_%$%g267777267812%_
                (lambda (_%$%g267779267791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267779267791%_))
                      (let ((_%$%e267781267793%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g267779267791%_))))
                        (let ((_%$%hd267782267796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267781267793%_)))
                              (_%$%tl267783267798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267781267793%_))))
                          (let ((__tmp268381
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self267775%_
                                      _%stx267776%_))))
                                (__tmp268379
                                 (let ((__tmp268380
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp268380 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp268381
                             gx#current-expander-phi
                             __tmp268379))))
                      (_%$%g267778267788%_ _%$%g267779267791%_)))))
          (_%$%g267777267812%_ _%stx267776%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self267714%_ _%stx267715%_)
        (let* ((_%$%g267717267731%_
                (lambda (_%$%g267718267728%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267718267728%_))))
               (_%$%g267716267772%_
                (lambda (_%$%g267718267734%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267718267734%_))
                      (let ((_%$%e267721267736%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g267718267734%_))))
                        (let ((_%$%hd267722267739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267721267736%_)))
                              (_%$%tl267723267741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267721267736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267723267741%_))
                              (let ((_%$%e267724267744%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl267723267741%_))))
                                (let ((_%$%hd267725267747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267724267744%_)))
                                      (_%$%tl267726267749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267724267744%_))))
                                  (let* ((_%ctx267766%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd267725267747%_)))
                                         (_%code267768%_
                                          (##structure-ref
                                           _%ctx267766%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp268382
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self267714%_
                                               _%code267768%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp268382
                                     gx#current-expander-context
                                     _%ctx267766%_))))
                              (_%$%g267717267731%_ _%$%g267718267734%_))))
                      (_%$%g267717267731%_ _%$%g267718267734%_)))))
          (_%$%g267716267772%_ _%stx267715%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self267521%_ _%stx267522%_)
        (letrec ((_%generate-e267524%_
                  (lambda (_%id267699%_)
                    (let* ((_%sym267701%_
                            (if (let ((__tmp268383
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp268383))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id267699%_))
                                '#f))
                           (_%$e267703%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym267701%_))))
                      (if _%$e267703%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym267701%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym267701%_
                                                    (cons (let ((__method268357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e267703%_ 'typedecl))))
                    (if __method268357
                        (let ()
                          (declare (not safe))
                          (__method268357 _%$e267703%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e267703%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym267701%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (list 'quote
                                          (list 'typedecl _%sym267701%_))
                                    '('class::t)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e267708%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym267701%_))))
                            (if _%$e267708%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym267701%_
                                     '" "
                                     _%$e267708%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e267708%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym267701%_
                                                  (cons (list 'optimizer-resolve-class
                                                              (list 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (list 'typedecl _%sym267701%_))
                      (list 'quote
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class-name _%$e267708%_))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym267701%_
                                                  (cons (let ((__method268358
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e267708%_ 'typedecl))))
                  (if __method268358
                      (let ()
                        (declare (not safe))
                        (__method268358 _%$e267708%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e267708%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx267969267970%_ _%stx267522%_)
                 (_%$%g267527267565%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx267969267970%_)))))
            (let ((_%__kont267971267972%_
                   (lambda (_%$%g267529267681%_)
                     (_%generate-e267524%_ _%$%g267529267681%_)))
                  (_%__kont267973267974%_
                   (lambda (_%$%g267542267616%_)
                     (let ((_%types267642%_
                            (map _%generate-e267524%_
                                 (let ((__tmp268384
                                        (lambda (_%$%g267634267637%_
                                                 _%$%g267635267639%_)
                                          (cons _%$%g267634267637%_
                                                _%$%g267635267639%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp268384
                                    '()
                                    _%$%g267542267616%_)))))
                       (cons 'begin _%types267642%_)))))
              (let ((_%__match268024268025%_
                     (lambda (_%$%e267543267570%_
                              _%$%hd267544267573%_
                              _%$%tl267545267575%_
                              _%$%e267546267578%_
                              _%$%hd267547267581%_
                              _%$%tl267548267583%_
                              _%__splice267975267976%_
                              _%$%target267549267586%_
                              _%$%tl267551267588%_)
                       (letrec ((_%$%loop267552267591%_
                                 (lambda (_%$%hd267550267594%_
                                          _%$%id267556267596%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd267550267594%_))
                                       (let ((_%$%e267553267598%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd267550267594%_))))
                                         (let ((_%$%lp-tl267555267603%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e267553267598%_)))
                                               (_%$%lp-hd267554267601%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e267553267598%_))))
                                           (_%$%loop267552267591%_
                                            _%$%lp-tl267555267603%_
                                            (cons _%$%lp-hd267554267601%_
                                                  _%$%id267556267596%_))))
                                       (let ((_%$%id267557267606%_
                                              (reverse _%$%id267556267596%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl267548267583%_))
                                             (let ((_%$%e267558267608%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl267548267583%_))))
                                               (let ((_%$%tl267560267613%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e267558267608%_)))
                                                     (_%$%hd267559267611%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e267558267608%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl267560267613%_))
                                                     (_%__kont267973267974%_
                                                      _%$%id267557267606%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g267527267565%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g267527267565%_))))))))
                         (_%$%loop267552267591%_
                          _%$%target267549267586%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx267969267970%_))
                    (let ((_%$%e267530267649%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx267969267970%_))))
                      (let ((_%$%tl267532267654%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e267530267649%_)))
                            (_%$%hd267531267652%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e267530267649%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl267532267654%_))
                            (let ((_%$%e267533267657%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl267532267654%_))))
                              (let ((_%$%tl267535267662%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e267533267657%_)))
                                    (_%$%hd267534267660%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e267533267657%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd267534267660%_))
                                    (let ((_%$%e267536267665%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd267534267660%_))))
                                      (let ((_%$%tl267538267670%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e267536267665%_)))
                                            (_%$%hd267537267668%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e267536267665%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl267538267670%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl267535267662%_))
                                                (let ((_%$%e267539267673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl267535267662%_))))
                                                  (let ((_%$%tl267541267678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e267539267673%_)))
                                                        (_%$%hd267540267676%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e267539267673%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl267541267678%_))
                                                        (_%__kont267971267972%_
                                                         _%$%hd267537267668%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd267534267660%_))
                                                            (let ((_%__splice267975267976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd267534267660%_
                              '0))))
                      (let ((_%$%tl267551267588%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice267975267976%_ '1)))
                            (_%$%target267549267586%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice267975267976%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl267551267588%_))
                            (_%__match268024268025%_
                             _%$%e267530267649%_
                             _%$%hd267531267652%_
                             _%$%tl267532267654%_
                             _%$%e267533267657%_
                             _%$%hd267534267660%_
                             _%$%tl267535267662%_
                             _%__splice267975267976%_
                             _%$%target267549267586%_
                             _%$%tl267551267588%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g267527267565%_)))))
                    (let () (declare (not safe)) (_%$%g267527267565%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd267534267660%_))
                                                    (let ((_%__splice267975267976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd267534267660%_
                                                              '0))))
                                                      (let ((_%$%tl267551267588%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice267975267976%_ '1)))
                    (_%$%target267549267586%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice267975267976%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl267551267588%_))
                    (_%__match268024268025%_
                     _%$%e267530267649%_
                     _%$%hd267531267652%_
                     _%$%tl267532267654%_
                     _%$%e267533267657%_
                     _%$%hd267534267660%_
                     _%$%tl267535267662%_
                     _%__splice267975267976%_
                     _%$%target267549267586%_
                     _%$%tl267551267588%_)
                    (let () (declare (not safe)) (_%$%g267527267565%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g267527267565%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd267534267660%_))
                                                (let ((_%__splice267975267976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd267534267660%_
                                                          '0))))
                                                  (let ((_%$%tl267551267588%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice267975267976%_
                                                            '1)))
                                                        (_%$%target267549267586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice267975267976%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl267551267588%_))
                                                        (_%__match268024268025%_
                                                         _%$%e267530267649%_
                                                         _%$%hd267531267652%_
                                                         _%$%tl267532267654%_
                                                         _%$%e267533267657%_
                                                         _%$%hd267534267660%_
                                                         _%$%tl267535267662%_
                                                         _%__splice267975267976%_
                                                         _%$%target267549267586%_
                                                         _%$%tl267551267588%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g267527267565%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g267527267565%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd267534267660%_))
                                        (let ((_%__splice267975267976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd267534267660%_
                                                  '0))))
                                          (let ((_%$%tl267551267588%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice267975267976%_
                                                    '1)))
                                                (_%$%target267549267586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice267975267976%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl267551267588%_))
                                                (_%__match268024268025%_
                                                 _%$%e267530267649%_
                                                 _%$%hd267531267652%_
                                                 _%$%tl267532267654%_
                                                 _%$%e267533267657%_
                                                 _%$%hd267534267660%_
                                                 _%$%tl267535267662%_
                                                 _%__splice267975267976%_
                                                 _%$%target267549267586%_
                                                 _%$%tl267551267588%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g267527267565%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g267527267565%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g267527267565%_)))))
                    (let () (declare (not safe)) (_%$%g267527267565%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self267074%_ _%stx267075%_)
        (let* ((_%__stx268027268028%_ _%stx267075%_)
               (_%$%g267079267181%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268027268028%_)))))
          (let ((_%__kont268029268030%_
                 (lambda (_%$%g267081267471%_
                          _%$%g267082267472%_
                          _%$%g267083267473%_
                          _%$%g267084267474%_
                          _%$%g267085267475%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g267084267474%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g267083267473%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g267082267472%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g267081267471%_))
                                                 '())))))))
                (_%__kont268031268032%_
                 (lambda (_%$%g267134267297%_
                          _%$%g267135267298%_
                          _%$%g267136267299%_
                          _%$%g267137267300%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g267136267299%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g267135267298%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g267134267297%_))
                                           (cons '#f '())))))))
                (_%__kont268033268034%_ (lambda () '(begin))))
            (let ((_%__match268162268163%_
                   (lambda (_%$%e267086267343%_
                            _%$%hd267087267346%_
                            _%$%tl267088267348%_
                            _%$%e267089267351%_
                            _%$%hd267090267354%_
                            _%$%tl267091267356%_
                            _%$%e267092267359%_
                            _%$%hd267093267362%_
                            _%$%tl267094267364%_
                            _%$%e267095267367%_
                            _%$%hd267096267370%_
                            _%$%tl267097267372%_
                            _%$%e267098267375%_
                            _%$%hd267099267378%_
                            _%$%tl267100267380%_
                            _%$%e267101267383%_
                            _%$%hd267102267386%_
                            _%$%tl267103267388%_
                            _%$%e267104267391%_
                            _%$%hd267105267394%_
                            _%$%tl267106267396%_
                            _%$%e267107267399%_
                            _%$%hd267108267402%_
                            _%$%tl267109267404%_
                            _%$%e267110267407%_
                            _%$%hd267111267410%_
                            _%$%tl267112267412%_
                            _%$%e267113267415%_
                            _%$%hd267114267418%_
                            _%$%tl267115267420%_
                            _%$%e267116267423%_
                            _%$%hd267117267426%_
                            _%$%tl267118267428%_
                            _%$%e267119267431%_
                            _%$%hd267120267434%_
                            _%$%tl267121267436%_
                            _%$%e267122267439%_
                            _%$%hd267123267442%_
                            _%$%tl267124267444%_
                            _%$%e267125267447%_
                            _%$%hd267126267450%_
                            _%$%tl267127267452%_
                            _%$%e267128267455%_
                            _%$%hd267129267458%_
                            _%$%tl267130267460%_
                            _%$%e267131267463%_
                            _%$%hd267132267466%_
                            _%$%tl267133267468%_)
                     (let ((_%$%g267081267471%_ _%$%hd267132267466%_)
                           (_%$%g267082267472%_ _%$%hd267123267442%_)
                           (_%$%g267083267473%_ _%$%hd267114267418%_)
                           (_%$%g267084267474%_ _%$%hd267105267394%_)
                           (_%$%g267085267475%_ _%$%hd267096267370%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g267085267475%_
                              'bind-method!))
                           (_%__kont268029268030%_
                            _%$%g267081267471%_
                            _%$%g267082267472%_
                            _%$%g267083267473%_
                            _%$%g267084267474%_
                            _%$%g267085267475%_)
                           (_%__kont268033268034%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268027268028%_))
                  (let ((_%$%e267086267343%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx268027268028%_))))
                    (let ((_%$%tl267088267348%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e267086267343%_)))
                          (_%$%hd267087267346%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e267086267343%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl267088267348%_))
                          (let ((_%$%e267089267351%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl267088267348%_))))
                            (let ((_%$%tl267091267356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e267089267351%_)))
                                  (_%$%hd267090267354%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e267089267351%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd267090267354%_))
                                  (let ((_%$%e267092267359%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd267090267354%_))))
                                    (let ((_%$%tl267094267364%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267092267359%_)))
                                          (_%$%hd267093267362%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267092267359%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd267093267362%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd267093267362%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl267094267364%_))
                                                  (let ((_%$%e267095267367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl267094267364%_))))
                                                    (let ((_%$%tl267097267372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e267095267367%_)))
                                                          (_%$%hd267096267370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e267095267367%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl267097267372%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl267091267356%_))
                      (let ((_%$%e267098267375%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl267091267356%_))))
                        (let ((_%$%tl267100267380%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267098267375%_)))
                              (_%$%hd267099267378%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267098267375%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd267099267378%_))
                              (let ((_%$%e267101267383%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd267099267378%_))))
                                (let ((_%$%tl267103267388%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267101267383%_)))
                                      (_%$%hd267102267386%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267101267383%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd267102267386%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd267102267386%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl267103267388%_))
                                              (let ((_%$%e267104267391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl267103267388%_))))
                                                (let ((_%$%tl267106267396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267104267391%_)))
                                                      (_%$%hd267105267394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267104267391%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267106267396%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl267100267380%_))
                                                          (let ((_%$%e267107267399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl267100267380%_))))
                    (let ((_%$%tl267109267404%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e267107267399%_)))
                          (_%$%hd267108267402%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e267107267399%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd267108267402%_))
                          (let ((_%$%e267110267407%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd267108267402%_))))
                            (let ((_%$%tl267112267412%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e267110267407%_)))
                                  (_%$%hd267111267410%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e267110267407%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd267111267410%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd267111267410%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl267112267412%_))
                                          (let ((_%$%e267113267415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl267112267412%_))))
                                            (let ((_%$%tl267115267420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e267113267415%_)))
                                                  (_%$%hd267114267418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e267113267415%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl267115267420%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl267109267404%_))
                                                      (let ((_%$%e267116267423%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl267109267404%_))))
                (let ((_%$%tl267118267428%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e267116267423%_)))
                      (_%$%hd267117267426%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e267116267423%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd267117267426%_))
                      (let ((_%$%e267119267431%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd267117267426%_))))
                        (let ((_%$%tl267121267436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267119267431%_)))
                              (_%$%hd267120267434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267119267431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd267120267434%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd267120267434%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267121267436%_))
                                      (let ((_%$%e267122267439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl267121267436%_))))
                                        (let ((_%$%tl267124267444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267122267439%_)))
                                              (_%$%hd267123267442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267122267439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267124267444%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl267118267428%_))
                                                  (let ((_%$%e267125267447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl267118267428%_))))
                                                    (let ((_%$%tl267127267452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e267125267447%_)))
                                                          (_%$%hd267126267450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e267125267447%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd267126267450%_))
                                                          (let ((_%$%e267128267455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd267126267450%_))))
                    (let ((_%$%tl267130267460%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e267128267455%_)))
                          (_%$%hd267129267458%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e267128267455%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd267129267458%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd267129267458%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl267130267460%_))
                                  (let ((_%$%e267131267463%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl267130267460%_))))
                                    (let ((_%$%tl267133267468%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267131267463%_)))
                                          (_%$%hd267132267466%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267131267463%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl267133267468%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267127267452%_))
                                              (_%__match268162268163%_
                                               _%$%e267086267343%_
                                               _%$%hd267087267346%_
                                               _%$%tl267088267348%_
                                               _%$%e267089267351%_
                                               _%$%hd267090267354%_
                                               _%$%tl267091267356%_
                                               _%$%e267092267359%_
                                               _%$%hd267093267362%_
                                               _%$%tl267094267364%_
                                               _%$%e267095267367%_
                                               _%$%hd267096267370%_
                                               _%$%tl267097267372%_
                                               _%$%e267098267375%_
                                               _%$%hd267099267378%_
                                               _%$%tl267100267380%_
                                               _%$%e267101267383%_
                                               _%$%hd267102267386%_
                                               _%$%tl267103267388%_
                                               _%$%e267104267391%_
                                               _%$%hd267105267394%_
                                               _%$%tl267106267396%_
                                               _%$%e267107267399%_
                                               _%$%hd267108267402%_
                                               _%$%tl267109267404%_
                                               _%$%e267110267407%_
                                               _%$%hd267111267410%_
                                               _%$%tl267112267412%_
                                               _%$%e267113267415%_
                                               _%$%hd267114267418%_
                                               _%$%tl267115267420%_
                                               _%$%e267116267423%_
                                               _%$%hd267117267426%_
                                               _%$%tl267118267428%_
                                               _%$%e267119267431%_
                                               _%$%hd267120267434%_
                                               _%$%tl267121267436%_
                                               _%$%e267122267439%_
                                               _%$%hd267123267442%_
                                               _%$%tl267124267444%_
                                               _%$%e267125267447%_
                                               _%$%hd267126267450%_
                                               _%$%tl267127267452%_
                                               _%$%e267128267455%_
                                               _%$%hd267129267458%_
                                               _%$%tl267130267460%_
                                               _%$%e267131267463%_
                                               _%$%hd267132267466%_
                                               _%$%tl267133267468%_)
                                              (_%__kont268033268034%_))
                                          (_%__kont268033268034%_))))
                                  (_%__kont268033268034%_))
                              (_%__kont268033268034%_))
                          (_%__kont268033268034%_))))
                  (_%__kont268033268034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267118267428%_))
                                                      (if (let ((__tmp268385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp268385 'bind-method!))
                  (let ((_%$%g267134267297%_ _%$%hd267123267442%_)
                        (_%$%g267135267298%_ _%$%hd267114267418%_)
                        (_%$%g267136267299%_ _%$%hd267105267394%_)
                        (_%$%g267137267300%_ _%$%hd267096267370%_))
                    (_%__kont268031268032%_
                     _%$%g267134267297%_
                     _%$%g267135267298%_
                     _%$%g267136267299%_
                     _%$%g267137267300%_))
                  (_%__kont268033268034%_))
              (_%__kont268033268034%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont268033268034%_))))
                                      (_%__kont268033268034%_))
                                  (_%__kont268033268034%_))
                              (_%__kont268033268034%_))))
                      (_%__kont268033268034%_))))
              (_%__kont268033268034%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont268033268034%_))))
                                          (_%__kont268033268034%_))
                                      (_%__kont268033268034%_))
                                  (_%__kont268033268034%_))))
                          (_%__kont268033268034%_))))
                  (_%__kont268033268034%_))
              (_%__kont268033268034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont268033268034%_))
                                          (_%__kont268033268034%_))
                                      (_%__kont268033268034%_))))
                              (_%__kont268033268034%_))))
                      (_%__kont268033268034%_))
                  (_%__kont268033268034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont268033268034%_))
                                              (_%__kont268033268034%_))
                                          (_%__kont268033268034%_))))
                                  (_%__kont268033268034%_))))
                          (_%__kont268033268034%_))))
                  (_%__kont268033268034%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self266898%_ _%stx266899%_)
        (let* ((_%__stx268271268272%_ _%stx266899%_)
               (_%$%g266902266942%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268271268272%_)))))
          (let ((_%__kont268273268274%_
                 (lambda (_%$%g266904267048%_ _%$%g266905267049%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g266905267049%_))
                               (cons _%$%g266904267048%_ '())))))
                (_%__kont268275268276%_
                 (lambda (_%$%g266927266971%_ _%$%g266928266972%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268271268272%_))
                (let ((_%$%e266906266992%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx268271268272%_))))
                  (let ((_%$%tl266908266997%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266906266992%_)))
                        (_%$%hd266907266995%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266906266992%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl266908266997%_))
                        (let ((_%$%e266909267000%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl266908266997%_))))
                          (let ((_%$%tl266911267005%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e266909267000%_)))
                                (_%$%hd266910267003%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e266909267000%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd266910267003%_))
                                (let ((_%$%e266912267008%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd266910267003%_))))
                                  (let ((_%$%tl266914267013%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e266912267008%_)))
                                        (_%$%hd266913267011%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e266912267008%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd266913267011%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd266913267011%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl266914267013%_))
                                                (let ((_%$%e266915267016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl266914267013%_))))
                                                  (let ((_%$%tl266917267021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e266915267016%_)))
                                                        (_%$%hd266916267019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e266915267016%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl266917267021%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl266911267005%_))
                                                            (let ((_%$%e266918267024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl266911267005%_))))
                      (let ((_%$%tl266920267029%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e266918267024%_)))
                            (_%$%hd266919267027%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e266918267024%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd266919267027%_))
                            (let ((_%$%e266921267032%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd266919267027%_))))
                              (let ((_%$%tl266923267037%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e266921267032%_)))
                                    (_%$%hd266922267035%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e266921267032%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd266922267035%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd266922267035%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl266923267037%_))
                                            (let ((_%$%e266924267040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl266923267037%_))))
                                              (let ((_%$%tl266926267045%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266924267040%_)))
                                                    (_%$%hd266925267043%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266924267040%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl266926267045%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl266920267029%_))
                                                        (_%__kont268273268274%_
                                                         _%$%hd266925267043%_
                                                         _%$%hd266916267019%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g266902266942%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl266920267029%_))
                                                        (_%__kont268275268276%_
                                                         _%$%hd266919267027%_
                                                         _%$%hd266910267003%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g266902266942%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl266920267029%_))
                                                (_%__kont268275268276%_
                                                 _%$%hd266919267027%_
                                                 _%$%hd266910267003%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g266902266942%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl266920267029%_))
                                            (_%__kont268275268276%_
                                             _%$%hd266919267027%_
                                             _%$%hd266910267003%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g266902266942%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl266920267029%_))
                                        (_%__kont268275268276%_
                                         _%$%hd266919267027%_
                                         _%$%hd266910267003%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g266902266942%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl266920267029%_))
                                (_%__kont268275268276%_
                                 _%$%hd266919267027%_
                                 _%$%hd266910267003%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g266902266942%_))))))
                    (let () (declare (not safe)) (_%$%g266902266942%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl266911267005%_))
                    (let ((_%$%e266935266963%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl266911267005%_))))
                      (let ((_%$%tl266937266968%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e266935266963%_)))
                            (_%$%hd266936266966%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e266935266963%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl266937266968%_))
                            (_%__kont268275268276%_
                             _%$%hd266936266966%_
                             _%$%hd266910267003%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g266902266942%_)))))
                    (let () (declare (not safe)) (_%$%g266902266942%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl266911267005%_))
                                                    (let ((_%$%e266935266963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl266911267005%_))))
                                                      (let ((_%$%tl266937266968%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e266935266963%_)))
                    (_%$%hd266936266966%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e266935266963%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl266937266968%_))
                    (_%__kont268275268276%_
                     _%$%hd266936266966%_
                     _%$%hd266910267003%_)
                    (let () (declare (not safe)) (_%$%g266902266942%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g266902266942%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl266911267005%_))
                                                (let ((_%$%e266935266963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl266911267005%_))))
                                                  (let ((_%$%tl266937266968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e266935266963%_)))
                                                        (_%$%hd266936266966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e266935266963%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl266937266968%_))
                                                        (_%__kont268275268276%_
                                                         _%$%hd266936266966%_
                                                         _%$%hd266910267003%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g266902266942%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g266902266942%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl266911267005%_))
                                            (let ((_%$%e266935266963%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl266911267005%_))))
                                              (let ((_%$%tl266937266968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266935266963%_)))
                                                    (_%$%hd266936266966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266935266963%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl266937266968%_))
                                                    (_%__kont268275268276%_
                                                     _%$%hd266936266966%_
                                                     _%$%hd266910267003%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g266902266942%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g266902266942%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl266911267005%_))
                                    (let ((_%$%e266935266963%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl266911267005%_))))
                                      (let ((_%$%tl266937266968%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e266935266963%_)))
                                            (_%$%hd266936266966%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e266935266963%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl266937266968%_))
                                            (_%__kont268275268276%_
                                             _%$%hd266936266966%_
                                             _%$%hd266910267003%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g266902266942%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g266902266942%_))))))
                        (let () (declare (not safe)) (_%$%g266902266942%_)))))
                (let () (declare (not safe)) (_%$%g266902266942%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self266885%_)
        (let ((_%self266888%_ _%self266885%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266888%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self266659%_)
        (let* ((_%self266662%_ _%self266659%_)
               (_%$%self266671266687%_ _%self266662%_)
               (_%$%E266673266690%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self266671266687%_
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
               (_%$%K266674266705%_
                (lambda (_%methods266693%_
                         _%metaclass266694%_
                         _%system?266695%_
                         _%final?266696%_
                         _%struct?266697%_
                         _%constructor266698%_
                         _%fields266699%_
                         _%slots266700%_
                         _%precendence-list266701%_
                         _%super266702%_
                         _%id266703%_)
                  (cons '@class
                        (cons _%id266703%_
                              (cons _%super266702%_
                                    (cons _%precendence-list266701%_
                                          (cons _%slots266700%_
                                                (cons _%fields266699%_
                                                      (cons _%constructor266698%_
                                                            (cons _%struct?266697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?266696%_
                                (cons _%system?266695%_
                                      (cons _%metaclass266694%_
                                            (cons (if _%methods266693%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods266693%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e266675266708%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '1
                   '#f
                   '#f)))
               (_%id266711%_ _%$%e266675266708%_)
               (_%$%e266676266713%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '2
                   '#f
                   '#f)))
               (_%super266716%_ _%$%e266676266713%_)
               (_%$%e266677266718%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list266721%_ _%$%e266677266718%_)
               (_%$%e266678266723%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '4
                   '#f
                   '#f)))
               (_%slots266726%_ _%$%e266678266723%_)
               (_%$%e266679266728%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '5
                   '#f
                   '#f)))
               (_%fields266731%_ _%$%e266679266728%_)
               (_%$%e266680266733%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '6
                   '#f
                   '#f)))
               (_%constructor266736%_ _%$%e266680266733%_)
               (_%$%e266681266738%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '7
                   '#f
                   '#f)))
               (_%struct?266741%_ _%$%e266681266738%_)
               (_%$%e266682266743%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '8
                   '#f
                   '#f)))
               (_%final?266746%_ _%$%e266682266743%_)
               (_%$%e266683266748%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '9
                   '#f
                   '#f)))
               (_%system?266751%_ _%$%e266683266748%_)
               (_%$%e266684266753%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass266756%_ _%$%e266684266753%_)
               (_%$%e266685266758%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266671266687%_
                   '11
                   '#f
                   '#f)))
               (_%methods266761%_ _%$%e266685266758%_))
          (_%$%K266674266705%_
           _%methods266761%_
           _%metaclass266756%_
           _%system?266751%_
           _%final?266746%_
           _%struct?266741%_
           _%constructor266736%_
           _%fields266731%_
           _%slots266726%_
           _%precendence-list266721%_
           _%super266716%_
           _%id266711%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self266524%_)
        (let ((_%self266527%_ _%self266524%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266527%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self266389%_)
        (let ((_%self266392%_ _%self266389%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266392%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self266254%_)
        (let ((_%self266257%_ _%self266254%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266257%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self266257%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self266257%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'typedecl
       gxc#!accessor::typedecl
       '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self266119%_)
        (let ((_%self266122%_ _%self266119%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266122%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self266122%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self266122%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self265984%_)
        (let ((_%self265987%_ _%self265984%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self265987%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self265987%_
                               '2
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self265798%_)
        (let* ((_%self265801%_ _%self265798%_)
               (_%$%self265810265819%_ _%self265801%_)
               (_%$%E265812265822%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self265810265819%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K265813265841%_
                (lambda (_%dispatch265825%_
                         _%arity265826%_
                         _%signature265827%_)
                  (if _%signature265827%_
                      (let ((_%signature265829%_ _%signature265827%_))
                        (cons '@lambda
                              (cons _%arity265826%_
                                    (cons _%dispatch265825%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature265829%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature265829%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature265829%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature265829%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature265829%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity265826%_
                                  (cons _%dispatch265825%_ '()))))))
               (_%$%e265814265844%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265810265819%_
                   '1
                   '#f
                   '#f)))
               (_%$%e265815265847%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265810265819%_
                   '2
                   '#f
                   '#f)))
               (_%signature265850%_ _%$%e265815265847%_)
               (_%$%e265816265852%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265810265819%_
                   '3
                   '#f
                   '#f)))
               (_%arity265855%_ _%$%e265816265852%_)
               (_%$%e265817265857%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265810265819%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch265860%_ _%$%e265817265857%_))
          (_%$%K265813265841%_
           _%dispatch265860%_
           _%arity265855%_
           _%signature265850%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self265658%_)
        (let ((_%self265661%_ _%self265658%_))
          (letrec ((_%clause-e265672%_
                    (lambda (_%clause265674%_)
                      (cdr (let ((__method268359
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause265674%_
                                     'typedecl))))
                             (if __method268359
                                 (let ()
                                   (declare (not safe))
                                   (__method268359 _%clause265674%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause265674%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e265672%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self265661%_
                          '3
                          '#f
                          '#f))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self265523%_)
        (let ((_%self265526%_ _%self265523%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self265526%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self265526%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self265388%_)
        (let ((_%self265391%_ _%self265388%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self265391%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self265391%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self265253%_)
        (let ((_%self265256%_ _%self265253%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self265256%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
