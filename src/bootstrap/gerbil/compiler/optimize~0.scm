(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712991659)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp198434
                   (let ((__obj198428
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
                       (gxc#optimizer-info:::init! __obj198428))
                     __obj198428)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp198434)))))
    (define gxc#optimize!
      (lambda (_%ctx198037%_)
        (let ((__tmp198437
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx198037%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx198037%_)
                 (let ((__tmp198439
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp198438
                        (##structure-ref
                         _%ctx198037%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp198439 __tmp198438 '#t))
                 (let ((_%code198040%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx198037%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx198037%_
                    _%code198040%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp198436 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp198435 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198437
           gxc#current-compile-mutators
           __tmp198436
           gxc#current-compile-local-type
           __tmp198435))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx198023%_)
        (letrec ((_%load-it!198025%_
                  (lambda (_%id198035%_)
                    (if (let ((__tmp198440
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp198440 _%id198035%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id198035%_)
                          (let ((__tmp198441
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp198441 _%id198035%_ '#t)))))))
          (let* ((_%modid198027%_
                  (##structure-ref
                   _%ctx198023%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str198029%_ (symbol->string _%modid198027%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str198029%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str198029%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198025%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198025%_
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
      (lambda (_%ctx197960%_)
        (letrec* ((_%deps197962%_
                   (let* ((_%imports198013%_
                           (##structure-ref
                            _%ctx197960%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e198015%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx197960%_))))
                     (if _%$e198015%_
                         ((lambda (_%g198017198019%_)
                            (cons _%g198017198019%_ _%imports198013%_))
                          _%$e198015%_)
                         _%imports198013%_))))
          (let _%lp197964%_ ((_%rest197966%_ _%deps197962%_))
            (let* ((_%rest197967197975%_ _%rest197966%_)
                   (_%else197969197983%_ (lambda () '#!void))
                   (_%K197971198001%_
                    (lambda (_%rest197986%_ _%hd197987%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd197987%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp198443
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp198442
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd197987%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp198443 __tmp198442))
                                '#!void
                                (begin
                                  (let ((_%$e197990%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd197987%_))))
                                    (if _%$e197990%_
                                        ((lambda (_%pre197993%_)
                                           (_%lp197964%_
                                            (cons _%pre197993%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd197987%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e197990%_)
                                        (_%lp197964%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd197987%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd197987%_)))
                            (_%lp197964%_ _%rest197986%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd197987%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp198445
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp198444
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd197987%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp198445 __tmp198444))
                                    '#!void
                                    (begin
                                      (_%lp197964%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd197987%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd197987%_)))
                                (_%lp197964%_ _%rest197986%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd197987%_
                                     'gx#module-import::t))
                                  (_%lp197964%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd197987%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest197986%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd197987%_
                                         'gx#module-export::t))
                                      (_%lp197964%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd197987%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest197986%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd197987%_
                                             'gx#import-set::t))
                                          (_%lp197964%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd197987%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest197986%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd197987%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest197967197975%_))
                  (let ((_%hd197972198004%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest197967197975%_)))
                        (_%tl197973198006%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest197967197975%_))))
                    (let* ((_%hd198009%_ _%hd197972198004%_)
                           (_%rest198011%_ _%tl197973198006%_))
                      (_%K197971198001%_ _%rest198011%_ _%hd198009%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx197940%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx197940%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx197940%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht197942%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id197944%_
                    (##structure-ref
                     _%ctx197940%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod197946%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht197942%_ _%id197944%_)))
                   (_%$e197949%_ _%mod197946%_))
              (if _%$e197949%_
                  _%$e197949%_
                  (let* ((_%mod197952%_
                          (gxc#optimizer-import-ssxi _%ctx197940%_))
                         (_%val197957%_
                          (let ((_%$e197954%_ _%mod197952%_))
                            (if _%$e197954%_ _%$e197954%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht197942%_ _%id197944%_ _%val197957%_))
                    _%val197957%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx197938%_)
        (if (##structure-ref _%ctx197938%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx197938%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id197915%_)
        (letrec ((_%catch-e197917%_
                  (lambda (_%exn197936%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn197936%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn197936%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id197915%_))))
                    '#f))
                 (_%import-e197918%_
                  (lambda ()
                    (let* ((_%str-id197921%_
                            (let ((__tmp198446
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id197915%_))))
                              (declare (not safe))
                              (##string-append __tmp198446 '".ssxi")))
                           (_%artefact-path197929%_
                            (let ((_%odir197922197924%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir197922197924%_
                                  (let ((_%odir197927%_ _%odir197922197924%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id197921%_
                                        '".ss"))
                                     _%odir197927%_))
                                  '#f)))
                           (_%library-path197931%_
                            (let ((__tmp198447
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id197921%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp198447)))
                           (_%ssxi-path197933%_
                            (if (and _%artefact-path197929%_
                                     (file-exists? _%artefact-path197929%_))
                                _%artefact-path197929%_
                                _%library-path197931%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path197933%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path197933%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e197917%_ _%import-e197918%_)))))
    (define gxc#optimize-source
      (lambda (_%stx197906%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx197906%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx197906%_))
        (let* ((_%stx197908%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx197906%_)))
               (_%stx197910%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx197908%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx197910%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx197910%_))
          (let ()
            (declare (not safe))
            (gxc#apply-refine-type-info _%stx197910%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx197910%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx197910%_))
          (let ((_%stx197913%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx197910%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx197913%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp198449 (list gxc#::generate-runtime-empty::t))
            (__tmp198448 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp198449
         '()
         __tmp198448
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args197903%_
        (apply make-instance gxc#::generate-ssxi::t _%$args197903%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp198450
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
        (__make-promise __tmp198450)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx197895%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self197898%_
                (let ((__obj198430
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj198430))
               (__tmp198451
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197898%_ _%stx197895%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198451
           gxc#current-compile-method
           _%self197898%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self197855%_ _%stx197856%_)
        (let* ((_%g197858197868%_
                (lambda (_%g197859197865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197859197865%_))))
               (_%g197857197892%_
                (lambda (_%g197859197871%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197859197871%_))
                      (let ((_%e197861197873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197859197871%_))))
                        (let ((_%hd197862197876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197861197873%_)))
                              (_%tl197863197878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197861197873%_))))
                          ((lambda (_%L197881%_)
                             (let ((__tmp198454
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self197855%_
                                         _%stx197856%_))))
                                   (__tmp198452
                                    (let ((__tmp198453
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp198453 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp198454
                                gx#current-expander-phi
                                __tmp198452)))
                           _%tl197863197878%_)))
                      (_%g197858197868%_ _%g197859197871%_)))))
          (_%g197857197892%_ _%stx197856%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self197794%_ _%stx197795%_)
        (let* ((_%g197797197811%_
                (lambda (_%g197798197808%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197798197808%_))))
               (_%g197796197852%_
                (lambda (_%g197798197814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197798197814%_))
                      (let ((_%e197801197816%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197798197814%_))))
                        (let ((_%hd197802197819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197801197816%_)))
                              (_%tl197803197821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197801197816%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197803197821%_))
                              (let ((_%e197804197824%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197803197821%_))))
                                (let ((_%hd197805197827%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197804197824%_)))
                                      (_%tl197806197829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197804197824%_))))
                                  ((lambda (_%L197832%_ _%L197833%_)
                                     (let* ((_%ctx197846%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L197833%_)))
                                            (_%code197848%_
                                             (##structure-ref
                                              _%ctx197846%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp198455
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self197794%_
                                                  _%code197848%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp198455
                                        gx#current-expander-context
                                        _%ctx197846%_)))
                                   _%tl197806197829%_
                                   _%hd197805197827%_)))
                              (_%g197797197811%_ _%g197798197814%_))))
                      (_%g197797197811%_ _%g197798197814%_)))))
          (_%g197796197852%_ _%stx197795%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self197599%_ _%stx197600%_)
        (letrec ((_%generate-e197602%_
                  (lambda (_%id197779%_)
                    (let* ((_%sym197781%_
                            (if (let ((__tmp198456
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp198456))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id197779%_))
                                '#f))
                           (_%$e197783%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym197781%_))))
                      (if _%$e197783%_
                          ((lambda (_%klass197786%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym197781%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym197781%_
                                                     (cons (let ((__method198431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass197786%_ 'typedecl))))
                     (if __method198431
                         (let ()
                           (declare (not safe))
                           (__method198431 _%klass197786%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass197786%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym197781%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym197781%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e197783%_)
                          (let ((_%$e197788%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym197781%_))))
                            (if _%$e197788%_
                                ((lambda (_%type197791%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym197781%_
                                      '" "
                                      _%type197791%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type197791%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym197781%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym197781%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type197791%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym197781%_
                                                   (cons (let ((__method198432
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type197791%_ 'typedecl))))
                   (if __method198432
                       (let ()
                         (declare (not safe))
                         (__method198432 _%type197791%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type197791%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e197788%_)
                                '(begin))))))))
          (let* ((_%__stx198043198044%_ _%stx197600%_)
                 (_%g197605197643%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx198043198044%_)))))
            (let ((_%__kont198045198046%_
                   (lambda (_%L197761%_) (_%generate-e197602%_ _%L197761%_)))
                  (_%__kont198047198048%_
                   (lambda (_%L197696%_)
                     (let ((_%types197722%_
                            (map _%generate-e197602%_
                                 (let ((__tmp198457
                                        (lambda (_%g197714197717%_
                                                 _%g197715197719%_)
                                          (cons _%g197714197717%_
                                                _%g197715197719%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp198457 '() _%L197696%_)))))
                       (cons 'begin _%types197722%_)))))
              (let ((_%__match198098198099%_
                     (lambda (_%e197621197648%_
                              _%hd197622197651%_
                              _%tl197623197653%_
                              _%e197624197656%_
                              _%hd197625197659%_
                              _%tl197626197661%_
                              _%__splice198049198050%_
                              _%target197627197664%_
                              _%tl197629197666%_)
                       (letrec ((_%loop197630197669%_
                                 (lambda (_%hd197628197672%_
                                          _%id197634197674%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd197628197672%_))
                                       (let ((_%e197631197677%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd197628197672%_))))
                                         (let ((_%lp-tl197633197682%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e197631197677%_)))
                                               (_%lp-hd197632197680%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e197631197677%_))))
                                           (_%loop197630197669%_
                                            _%lp-tl197633197682%_
                                            (cons _%lp-hd197632197680%_
                                                  _%id197634197674%_))))
                                       (let ((_%id197635197685%_
                                              (reverse _%id197634197674%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl197626197661%_))
                                             (let ((_%e197636197688%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl197626197661%_))))
                                               (let ((_%tl197638197693%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e197636197688%_)))
                                                     (_%hd197637197691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e197636197688%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl197638197693%_))
                                                     (_%__kont198047198048%_
                                                      _%id197635197685%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g197605197643%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g197605197643%_))))))))
                         (_%loop197630197669%_ _%target197627197664%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx198043198044%_))
                    (let ((_%e197608197729%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx198043198044%_))))
                      (let ((_%tl197610197734%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197608197729%_)))
                            (_%hd197609197732%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197608197729%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197610197734%_))
                            (let ((_%e197611197737%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197610197734%_))))
                              (let ((_%tl197613197742%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197611197737%_)))
                                    (_%hd197612197740%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197611197737%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197612197740%_))
                                    (let ((_%e197614197745%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197612197740%_))))
                                      (let ((_%tl197616197750%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197614197745%_)))
                                            (_%hd197615197748%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197614197745%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197616197750%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197613197742%_))
                                                (let ((_%e197617197753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197613197742%_))))
                                                  (let ((_%tl197619197758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197617197753%_)))
                                                        (_%hd197618197756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197617197753%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197619197758%_))
                                                        (_%__kont198045198046%_
                                                         _%hd197615197748%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd197612197740%_))
                                                            (let ((_%__splice198049198050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd197612197740%_ '0))))
                      (let ((_%tl197629197666%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198049198050%_ '1)))
                            (_%target197627197664%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198049198050%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197629197666%_))
                            (_%__match198098198099%_
                             _%e197608197729%_
                             _%hd197609197732%_
                             _%tl197610197734%_
                             _%e197611197737%_
                             _%hd197612197740%_
                             _%tl197613197742%_
                             _%__splice198049198050%_
                             _%target197627197664%_
                             _%tl197629197666%_)
                            (let ()
                              (declare (not safe))
                              (_%g197605197643%_)))))
                    (let () (declare (not safe)) (_%g197605197643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd197612197740%_))
                                                    (let ((_%__splice198049198050%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd197612197740%_
                                                              '0))))
                                                      (let ((_%tl197629197666%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice198049198050%_ '1)))
                    (_%target197627197664%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice198049198050%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197629197666%_))
                    (_%__match198098198099%_
                     _%e197608197729%_
                     _%hd197609197732%_
                     _%tl197610197734%_
                     _%e197611197737%_
                     _%hd197612197740%_
                     _%tl197613197742%_
                     _%__splice198049198050%_
                     _%target197627197664%_
                     _%tl197629197666%_)
                    (let () (declare (not safe)) (_%g197605197643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197605197643%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd197612197740%_))
                                                (let ((_%__splice198049198050%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd197612197740%_
                                                          '0))))
                                                  (let ((_%tl197629197666%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198049198050%_
                                                            '1)))
                                                        (_%target197627197664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198049198050%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197629197666%_))
                                                        (_%__match198098198099%_
                                                         _%e197608197729%_
                                                         _%hd197609197732%_
                                                         _%tl197610197734%_
                                                         _%e197611197737%_
                                                         _%hd197612197740%_
                                                         _%tl197613197742%_
                                                         _%__splice198049198050%_
                                                         _%target197627197664%_
                                                         _%tl197629197666%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197605197643%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197605197643%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd197612197740%_))
                                        (let ((_%__splice198049198050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd197612197740%_
                                                  '0))))
                                          (let ((_%tl197629197666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198049198050%_
                                                    '1)))
                                                (_%target197627197664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198049198050%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197629197666%_))
                                                (_%__match198098198099%_
                                                 _%e197608197729%_
                                                 _%hd197609197732%_
                                                 _%tl197610197734%_
                                                 _%e197611197737%_
                                                 _%hd197612197740%_
                                                 _%tl197613197742%_
                                                 _%__splice198049198050%_
                                                 _%target197627197664%_
                                                 _%tl197629197666%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197605197643%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197605197643%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g197605197643%_)))))
                    (let () (declare (not safe)) (_%g197605197643%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self197152%_ _%stx197153%_)
        (let* ((_%__stx198101198102%_ _%stx197153%_)
               (_%g197157197259%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198101198102%_)))))
          (let ((_%__kont198103198104%_
                 (lambda (_%L197549%_
                          _%L197550%_
                          _%L197551%_
                          _%L197552%_
                          _%L197553%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197552%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L197551%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L197550%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L197549%_))
                                                 '())))))))
                (_%__kont198105198106%_
                 (lambda (_%L197375%_ _%L197376%_ _%L197377%_ _%L197378%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197377%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L197376%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L197375%_))
                                           (cons '#f '())))))))
                (_%__kont198107198108%_ (lambda () '(begin))))
            (let ((_%__match198236198237%_
                   (lambda (_%e197164197421%_
                            _%hd197165197424%_
                            _%tl197166197426%_
                            _%e197167197429%_
                            _%hd197168197432%_
                            _%tl197169197434%_
                            _%e197170197437%_
                            _%hd197171197440%_
                            _%tl197172197442%_
                            _%e197173197445%_
                            _%hd197174197448%_
                            _%tl197175197450%_
                            _%e197176197453%_
                            _%hd197177197456%_
                            _%tl197178197458%_
                            _%e197179197461%_
                            _%hd197180197464%_
                            _%tl197181197466%_
                            _%e197182197469%_
                            _%hd197183197472%_
                            _%tl197184197474%_
                            _%e197185197477%_
                            _%hd197186197480%_
                            _%tl197187197482%_
                            _%e197188197485%_
                            _%hd197189197488%_
                            _%tl197190197490%_
                            _%e197191197493%_
                            _%hd197192197496%_
                            _%tl197193197498%_
                            _%e197194197501%_
                            _%hd197195197504%_
                            _%tl197196197506%_
                            _%e197197197509%_
                            _%hd197198197512%_
                            _%tl197199197514%_
                            _%e197200197517%_
                            _%hd197201197520%_
                            _%tl197202197522%_
                            _%e197203197525%_
                            _%hd197204197528%_
                            _%tl197205197530%_
                            _%e197206197533%_
                            _%hd197207197536%_
                            _%tl197208197538%_
                            _%e197209197541%_
                            _%hd197210197544%_
                            _%tl197211197546%_)
                     (let ((_%L197549%_ _%hd197210197544%_)
                           (_%L197550%_ _%hd197201197520%_)
                           (_%L197551%_ _%hd197192197496%_)
                           (_%L197552%_ _%hd197183197472%_)
                           (_%L197553%_ _%hd197174197448%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L197553%_
                              'bind-method!))
                           (_%__kont198103198104%_
                            _%L197549%_
                            _%L197550%_
                            _%L197551%_
                            _%L197552%_
                            _%L197553%_)
                           (_%__kont198107198108%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198101198102%_))
                  (let ((_%e197164197421%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198101198102%_))))
                    (let ((_%tl197166197426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197164197421%_)))
                          (_%hd197165197424%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197164197421%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197166197426%_))
                          (let ((_%e197167197429%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197166197426%_))))
                            (let ((_%tl197169197434%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197167197429%_)))
                                  (_%hd197168197432%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197167197429%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197168197432%_))
                                  (let ((_%e197170197437%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197168197432%_))))
                                    (let ((_%tl197172197442%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197170197437%_)))
                                          (_%hd197171197440%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197170197437%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197171197440%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197171197440%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197172197442%_))
                                                  (let ((_%e197173197445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197172197442%_))))
                                                    (let ((_%tl197175197450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197173197445%_)))
                                                          (_%hd197174197448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197173197445%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197175197450%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl197169197434%_))
                      (let ((_%e197176197453%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197169197434%_))))
                        (let ((_%tl197178197458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197176197453%_)))
                              (_%hd197177197456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197176197453%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197177197456%_))
                              (let ((_%e197179197461%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd197177197456%_))))
                                (let ((_%tl197181197466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197179197461%_)))
                                      (_%hd197180197464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197179197461%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197180197464%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd197180197464%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197181197466%_))
                                              (let ((_%e197182197469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197181197466%_))))
                                                (let ((_%tl197184197474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197182197469%_)))
                                                      (_%hd197183197472%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197182197469%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197184197474%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197178197458%_))
                                                          (let ((_%e197185197477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197178197458%_))))
                    (let ((_%tl197187197482%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197185197477%_)))
                          (_%hd197186197480%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197185197477%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd197186197480%_))
                          (let ((_%e197188197485%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197186197480%_))))
                            (let ((_%tl197190197490%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197188197485%_)))
                                  (_%hd197189197488%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197188197485%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd197189197488%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd197189197488%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197190197490%_))
                                          (let ((_%e197191197493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197190197490%_))))
                                            (let ((_%tl197193197498%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197191197493%_)))
                                                  (_%hd197192197496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197191197493%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197193197498%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197187197482%_))
                                                      (let ((_%e197194197501%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197187197482%_))))
                (let ((_%tl197196197506%_
                       (let () (declare (not safe)) (##cdr _%e197194197501%_)))
                      (_%hd197195197504%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197194197501%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd197195197504%_))
                      (let ((_%e197197197509%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197195197504%_))))
                        (let ((_%tl197199197514%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197197197509%_)))
                              (_%hd197198197512%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197197197509%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd197198197512%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd197198197512%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197199197514%_))
                                      (let ((_%e197200197517%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197199197514%_))))
                                        (let ((_%tl197202197522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197200197517%_)))
                                              (_%hd197201197520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197200197517%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197202197522%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197196197506%_))
                                                  (let ((_%e197203197525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197196197506%_))))
                                                    (let ((_%tl197205197530%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197203197525%_)))
                                                          (_%hd197204197528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197203197525%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197204197528%_))
                                                          (let ((_%e197206197533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197204197528%_))))
                    (let ((_%tl197208197538%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197206197533%_)))
                          (_%hd197207197536%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197206197533%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197207197536%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd197207197536%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197208197538%_))
                                  (let ((_%e197209197541%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197208197538%_))))
                                    (let ((_%tl197211197546%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197209197541%_)))
                                          (_%hd197210197544%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197209197541%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197211197546%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197205197530%_))
                                              (_%__match198236198237%_
                                               _%e197164197421%_
                                               _%hd197165197424%_
                                               _%tl197166197426%_
                                               _%e197167197429%_
                                               _%hd197168197432%_
                                               _%tl197169197434%_
                                               _%e197170197437%_
                                               _%hd197171197440%_
                                               _%tl197172197442%_
                                               _%e197173197445%_
                                               _%hd197174197448%_
                                               _%tl197175197450%_
                                               _%e197176197453%_
                                               _%hd197177197456%_
                                               _%tl197178197458%_
                                               _%e197179197461%_
                                               _%hd197180197464%_
                                               _%tl197181197466%_
                                               _%e197182197469%_
                                               _%hd197183197472%_
                                               _%tl197184197474%_
                                               _%e197185197477%_
                                               _%hd197186197480%_
                                               _%tl197187197482%_
                                               _%e197188197485%_
                                               _%hd197189197488%_
                                               _%tl197190197490%_
                                               _%e197191197493%_
                                               _%hd197192197496%_
                                               _%tl197193197498%_
                                               _%e197194197501%_
                                               _%hd197195197504%_
                                               _%tl197196197506%_
                                               _%e197197197509%_
                                               _%hd197198197512%_
                                               _%tl197199197514%_
                                               _%e197200197517%_
                                               _%hd197201197520%_
                                               _%tl197202197522%_
                                               _%e197203197525%_
                                               _%hd197204197528%_
                                               _%tl197205197530%_
                                               _%e197206197533%_
                                               _%hd197207197536%_
                                               _%tl197208197538%_
                                               _%e197209197541%_
                                               _%hd197210197544%_
                                               _%tl197211197546%_)
                                              (_%__kont198107198108%_))
                                          (_%__kont198107198108%_))))
                                  (_%__kont198107198108%_))
                              (_%__kont198107198108%_))
                          (_%__kont198107198108%_))))
                  (_%__kont198107198108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197196197506%_))
                                                      (if (let ((__tmp198458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp198458 'bind-method!))
                  (let ((_%L197375%_ _%hd197201197520%_)
                        (_%L197376%_ _%hd197192197496%_)
                        (_%L197377%_ _%hd197183197472%_)
                        (_%L197378%_ _%hd197174197448%_))
                    (_%__kont198105198106%_
                     _%L197375%_
                     _%L197376%_
                     _%L197377%_
                     _%L197378%_))
                  (_%__kont198107198108%_))
              (_%__kont198107198108%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198107198108%_))))
                                      (_%__kont198107198108%_))
                                  (_%__kont198107198108%_))
                              (_%__kont198107198108%_))))
                      (_%__kont198107198108%_))))
              (_%__kont198107198108%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198107198108%_))))
                                          (_%__kont198107198108%_))
                                      (_%__kont198107198108%_))
                                  (_%__kont198107198108%_))))
                          (_%__kont198107198108%_))))
                  (_%__kont198107198108%_))
              (_%__kont198107198108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198107198108%_))
                                          (_%__kont198107198108%_))
                                      (_%__kont198107198108%_))))
                              (_%__kont198107198108%_))))
                      (_%__kont198107198108%_))
                  (_%__kont198107198108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198107198108%_))
                                              (_%__kont198107198108%_))
                                          (_%__kont198107198108%_))))
                                  (_%__kont198107198108%_))))
                          (_%__kont198107198108%_))))
                  (_%__kont198107198108%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self196976%_ _%stx196977%_)
        (let* ((_%__stx198345198346%_ _%stx196977%_)
               (_%g196980197020%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198345198346%_)))))
          (let ((_%__kont198347198348%_
                 (lambda (_%L197126%_ _%L197127%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197127%_))
                               (cons _%L197126%_ '())))))
                (_%__kont198349198350%_
                 (lambda (_%L197049%_ _%L197050%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx198345198346%_))
                (let ((_%e196984197070%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx198345198346%_))))
                  (let ((_%tl196986197075%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196984197070%_)))
                        (_%hd196985197073%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196984197070%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196986197075%_))
                        (let ((_%e196987197078%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl196986197075%_))))
                          (let ((_%tl196989197083%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196987197078%_)))
                                (_%hd196988197081%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196987197078%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd196988197081%_))
                                (let ((_%e196990197086%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd196988197081%_))))
                                  (let ((_%tl196992197091%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196990197086%_)))
                                        (_%hd196991197089%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196990197086%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd196991197089%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd196991197089%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196992197091%_))
                                                (let ((_%e196993197094%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196992197091%_))))
                                                  (let ((_%tl196995197099%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196993197094%_)))
                                                        (_%hd196994197097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196993197094%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196995197099%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl196989197083%_))
                                                            (let ((_%e196996197102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl196989197083%_))))
                      (let ((_%tl196998197107%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196996197102%_)))
                            (_%hd196997197105%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196996197102%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd196997197105%_))
                            (let ((_%e196999197110%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd196997197105%_))))
                              (let ((_%tl197001197115%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e196999197110%_)))
                                    (_%hd197000197113%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e196999197110%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd197000197113%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd197000197113%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197001197115%_))
                                            (let ((_%e197002197118%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197001197115%_))))
                                              (let ((_%tl197004197123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197002197118%_)))
                                                    (_%hd197003197121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197002197118%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197004197123%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196998197107%_))
                                                        (_%__kont198347198348%_
                                                         _%hd197003197121%_
                                                         _%hd196994197097%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196980197020%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196998197107%_))
                                                        (_%__kont198349198350%_
                                                         _%hd196997197105%_
                                                         _%hd196988197081%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196980197020%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196998197107%_))
                                                (_%__kont198349198350%_
                                                 _%hd196997197105%_
                                                 _%hd196988197081%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196980197020%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl196998197107%_))
                                            (_%__kont198349198350%_
                                             _%hd196997197105%_
                                             _%hd196988197081%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g196980197020%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196998197107%_))
                                        (_%__kont198349198350%_
                                         _%hd196997197105%_
                                         _%hd196988197081%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g196980197020%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196998197107%_))
                                (_%__kont198349198350%_
                                 _%hd196997197105%_
                                 _%hd196988197081%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196980197020%_))))))
                    (let () (declare (not safe)) (_%g196980197020%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl196989197083%_))
                    (let ((_%e197013197041%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl196989197083%_))))
                      (let ((_%tl197015197046%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197013197041%_)))
                            (_%hd197014197044%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197013197041%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197015197046%_))
                            (_%__kont198349198350%_
                             _%hd197014197044%_
                             _%hd196988197081%_)
                            (let ()
                              (declare (not safe))
                              (_%g196980197020%_)))))
                    (let () (declare (not safe)) (_%g196980197020%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl196989197083%_))
                                                    (let ((_%e197013197041%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl196989197083%_))))
                                                      (let ((_%tl197015197046%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197013197041%_)))
                    (_%hd197014197044%_
                     (let () (declare (not safe)) (##car _%e197013197041%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197015197046%_))
                    (_%__kont198349198350%_
                     _%hd197014197044%_
                     _%hd196988197081%_)
                    (let () (declare (not safe)) (_%g196980197020%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g196980197020%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196989197083%_))
                                                (let ((_%e197013197041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196989197083%_))))
                                                  (let ((_%tl197015197046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197013197041%_)))
                                                        (_%hd197014197044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197013197041%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197015197046%_))
                                                        (_%__kont198349198350%_
                                                         _%hd197014197044%_
                                                         _%hd196988197081%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196980197020%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196980197020%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196989197083%_))
                                            (let ((_%e197013197041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl196989197083%_))))
                                              (let ((_%tl197015197046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197013197041%_)))
                                                    (_%hd197014197044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197013197041%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197015197046%_))
                                                    (_%__kont198349198350%_
                                                     _%hd197014197044%_
                                                     _%hd196988197081%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g196980197020%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g196980197020%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl196989197083%_))
                                    (let ((_%e197013197041%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl196989197083%_))))
                                      (let ((_%tl197015197046%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197013197041%_)))
                                            (_%hd197014197044%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197013197041%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197015197046%_))
                                            (_%__kont198349198350%_
                                             _%hd197014197044%_
                                             _%hd196988197081%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g196980197020%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g196980197020%_))))))
                        (let () (declare (not safe)) (_%g196980197020%_)))))
                (let () (declare (not safe)) (_%g196980197020%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self195170196961%_)
        (let* ((_%self196964%_ _%self195170196961%_)
               (_%self196966%_ _%self196964%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196966%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self195171196732%_)
        (let* ((_%self196735%_ _%self195171196732%_)
               (_%self196737%_ _%self196735%_)
               (_%self196746196762%_ _%self196737%_)
               (_%E196748196766%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self196746196762%_
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
               (_%K196749196781%_
                (lambda (_%methods196769%_
                         _%metaclass196770%_
                         _%system?196771%_
                         _%final?196772%_
                         _%struct?196773%_
                         _%constructor196774%_
                         _%fields196775%_
                         _%slots196776%_
                         _%precendence-list196777%_
                         _%super196778%_
                         _%id196779%_)
                  (cons '@class
                        (cons _%id196779%_
                              (cons _%super196778%_
                                    (cons _%precendence-list196777%_
                                          (cons _%slots196776%_
                                                (cons _%fields196775%_
                                                      (cons _%constructor196774%_
                                                            (cons _%struct?196773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?196772%_
                                (cons _%system?196771%_
                                      (cons _%metaclass196770%_
                                            (cons (if _%methods196769%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods196769%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e196750196784%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196746196762%_ '1 '#f '#f)))
               (_%id196787%_ _%e196750196784%_)
               (_%e196751196789%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196746196762%_ '2 '#f '#f)))
               (_%super196792%_ _%e196751196789%_)
               (_%e196752196794%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196746196762%_ '3 '#f '#f)))
               (_%precendence-list196797%_ _%e196752196794%_)
               (_%e196753196799%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196746196762%_ '4 '#f '#f)))
               (_%slots196802%_ _%e196753196799%_)
               (_%e196754196804%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196746196762%_ '5 '#f '#f)))
               (_%fields196807%_ _%e196754196804%_)
               (_%e196755196809%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196746196762%_ '6 '#f '#f)))
               (_%constructor196812%_ _%e196755196809%_)
               (_%e196756196814%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196746196762%_ '7 '#f '#f)))
               (_%struct?196817%_ _%e196756196814%_)
               (_%e196757196819%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196746196762%_ '8 '#f '#f)))
               (_%final?196822%_ _%e196757196819%_)
               (_%e196758196824%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196746196762%_ '9 '#f '#f)))
               (_%system?196827%_ _%e196758196824%_)
               (_%e196759196829%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self196746196762%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass196832%_ _%e196759196829%_)
               (_%e196760196834%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self196746196762%_
                   '11
                   '#f
                   '#f)))
               (_%methods196837%_ _%e196760196834%_))
          (_%K196749196781%_
           _%methods196837%_
           _%metaclass196832%_
           _%system?196827%_
           _%final?196822%_
           _%struct?196817%_
           _%constructor196812%_
           _%fields196807%_
           _%slots196802%_
           _%precendence-list196797%_
           _%super196792%_
           _%id196787%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self195172196595%_)
        (let* ((_%self196598%_ _%self195172196595%_)
               (_%self196600%_ _%self196598%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196600%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self195173196458%_)
        (let* ((_%self196461%_ _%self195173196458%_)
               (_%self196463%_ _%self196461%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196463%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self195174196321%_)
        (let* ((_%self196324%_ _%self195174196321%_)
               (_%self196326%_ _%self196324%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196326%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196326%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self196326%_
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
      (lambda (_%self195175196184%_)
        (let* ((_%self196187%_ _%self195175196184%_)
               (_%self196189%_ _%self196187%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196189%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196189%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self196189%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self195176196047%_)
        (let* ((_%self196050%_ _%self195176196047%_)
               (_%self196052%_ _%self196050%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196052%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196052%_
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
      (lambda (_%self195177195858%_)
        (let* ((_%self195861%_ _%self195177195858%_)
               (_%self195863%_ _%self195861%_)
               (_%self195872195881%_ _%self195863%_)
               (_%E195874195885%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195872195881%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K195875195904%_
                (lambda (_%dispatch195888%_
                         _%arity195889%_
                         _%signature195890%_)
                  (if _%signature195890%_
                      (let ((_%signature195892%_ _%signature195890%_))
                        (cons '@lambda
                              (cons _%arity195889%_
                                    (cons _%dispatch195888%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature195892%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature195892%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature195892%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature195892%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature195892%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity195889%_
                                  (cons _%dispatch195888%_ '()))))))
               (_%e195876195907%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195872195881%_ '1 '#f '#f)))
               (_%e195877195910%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195872195881%_ '2 '#f '#f)))
               (_%signature195913%_ _%e195877195910%_)
               (_%e195878195915%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195872195881%_ '3 '#f '#f)))
               (_%arity195918%_ _%e195878195915%_)
               (_%e195879195920%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195872195881%_ '4 '#f '#f)))
               (_%dispatch195923%_ _%e195879195920%_))
          (_%K195875195904%_
           _%dispatch195923%_
           _%arity195918%_
           _%signature195913%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self195178195717%_)
        (let* ((_%self195720%_ _%self195178195717%_)
               (_%self195722%_ _%self195720%_))
          (letrec ((_%clause-e195732%_
                    (lambda (_%clause195734%_)
                      (cdr (let ((__method198433
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause195734%_
                                     'typedecl))))
                             (if __method198433
                                 (let ()
                                   (declare (not safe))
                                   (__method198433 _%clause195734%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause195734%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e195732%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195722%_
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
      (lambda (_%self195179195580%_)
        (let* ((_%self195583%_ _%self195179195580%_)
               (_%self195585%_ _%self195583%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195585%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195585%_
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
      (lambda (_%self195180195443%_)
        (let* ((_%self195446%_ _%self195180195443%_)
               (_%self195448%_ _%self195446%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195448%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195448%_
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
      (lambda (_%self195181195306%_)
        (let* ((_%self195309%_ _%self195181195306%_)
               (_%self195311%_ _%self195309%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195311%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
