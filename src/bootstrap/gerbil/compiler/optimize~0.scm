(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1781138372)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp261532
                   (let ((__obj261526
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
                       (gxc#optimizer-info:::init! __obj261526))
                     __obj261526)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp261532)))))
    (define gxc#optimize!
      (lambda (_%ctx261134%_)
        (let ((__tmp261534
               (lambda ()
                 (let ((__tmp261536
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx261134%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx261134%_)
                          (let ((__tmp261538
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp261537
                                 (##structure-ref
                                  _%ctx261134%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp261538 __tmp261537 '#t))
                          (let ((_%code261138%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx261134%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx261134%_
                             _%code261138%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp261535
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp261536
                    gxc#current-compile-local-type
                    __tmp261535))))
              (__tmp261533 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp261534
           gxc#current-compile-mutators
           __tmp261533))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx261120%_)
        (letrec ((_%load-it!261122%_
                  (lambda (_%id261132%_)
                    (if (let ((__tmp261539
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp261539 _%id261132%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id261132%_)
                          (let ((__tmp261540
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp261540 _%id261132%_ '#t)))))))
          (let* ((_%modid261124%_
                  (##structure-ref
                   _%ctx261120%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str261126%_ (symbol->string _%modid261124%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str261126%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str261126%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!261122%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!261122%_
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
      (lambda (_%ctx261057%_)
        (letrec* ((_%deps261059%_
                   (let* ((_%imports261110%_
                           (##structure-ref
                            _%ctx261057%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e261112%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx261057%_))))
                     (if _%$e261112%_
                         (cons _%$e261112%_ _%imports261110%_)
                         _%imports261110%_))))
          (let _%lp261061%_ ((_%rest261063%_ _%deps261059%_))
            (let* ((_%$%rest261064261072%_ _%rest261063%_)
                   (_%$%else261066261080%_ (lambda () '#!void))
                   (_%$%K261068261098%_
                    (lambda (_%rest261083%_ _%hd261084%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd261084%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp261542
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp261541
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd261084%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp261542 __tmp261541))
                                '#!void
                                (begin
                                  (let ((_%$e261087%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd261084%_))))
                                    (if _%$e261087%_
                                        (_%lp261061%_
                                         (cons _%$e261087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd261084%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp261061%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd261084%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd261084%_)))
                            (_%lp261061%_ _%rest261083%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd261084%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp261544
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp261543
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd261084%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp261544 __tmp261543))
                                    '#!void
                                    (begin
                                      (_%lp261061%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd261084%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd261084%_)))
                                (_%lp261061%_ _%rest261083%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd261084%_
                                     'gx#module-import::t))
                                  (_%lp261061%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd261084%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest261083%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd261084%_
                                         'gx#module-export::t))
                                      (_%lp261061%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd261084%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest261083%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd261084%_
                                             'gx#import-set::t))
                                          (_%lp261061%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd261084%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest261083%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd261084%_))))))))))
              (if (pair? _%$%rest261064261072%_)
                  (let ((_%$%hd261069261101%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest261064261072%_)))
                        (_%$%tl261070261103%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest261064261072%_))))
                    (let* ((_%hd261106%_ _%$%hd261069261101%_)
                           (_%rest261108%_ _%$%tl261070261103%_))
                      (_%$%K261068261098%_ _%rest261108%_ _%hd261106%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx261037%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx261037%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx261037%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht261039%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id261041%_
                    (##structure-ref
                     _%ctx261037%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod261043%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht261039%_ _%id261041%_)))
                   (_%$e261046%_ _%mod261043%_))
              (if _%$e261046%_
                  _%$e261046%_
                  (let* ((_%mod261049%_
                          (gxc#optimizer-import-ssxi _%ctx261037%_))
                         (_%val261054%_
                          (let ((_%$e261051%_ _%mod261049%_))
                            (if _%$e261051%_ _%$e261051%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht261039%_ _%id261041%_ _%val261054%_))
                    _%val261054%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx261035%_)
        (if (##structure-ref _%ctx261035%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx261035%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id261013%_)
        (letrec ((_%catch-e261015%_
                  (lambda (_%exn261033%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn261033%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn261033%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id261013%_))))
                    '#f))
                 (_%import-e261016%_
                  (lambda ()
                    (let* ((_%str-id261019%_
                            (let ((__tmp261545
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id261013%_))))
                              (declare (not safe))
                              (##string-append __tmp261545 '".ssxi")))
                           (_%artefact-path261026%_
                            (let ((_%$%odir261020261022%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir261020261022%_
                                  (let ((_%odir261024%_
                                         _%$%odir261020261022%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id261019%_
                                        '".ss"))
                                     _%odir261024%_))
                                  '#f)))
                           (_%library-path261028%_
                            (let ((__tmp261546
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id261019%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp261546)))
                           (_%ssxi-path261030%_
                            (if (and _%artefact-path261026%_
                                     (file-exists? _%artefact-path261026%_))
                                _%artefact-path261026%_
                                _%library-path261028%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path261030%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path261030%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e261015%_ _%import-e261016%_)))))
    (define gxc#optimize-source
      (lambda (_%stx260998%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx260998%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx260998%_))
        (let* ((_%stx261000%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx260998%_)))
               (_%stx261002%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx261000%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx261002%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx261002%_))
          (let _%fixpoint261005%_ ((_%current261007%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx261002%_))
            (let ((_%refined261009%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current261007%_ _%refined261009%_)
                  '#!void
                  (_%fixpoint261005%_ _%refined261009%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx261002%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx261002%_))
          (let ((_%stx261011%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx261002%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx261011%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp261548 (list gxc#::generate-runtime-empty::t))
            (__tmp261547 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp261548
         '()
         __tmp261547
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args260995%_
        (apply make-instance gxc#::generate-ssxi::t _%$args260995%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp261549
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
        (__make-atomic-promise __tmp261549)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx260987%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self260990%_
                (let ((__obj261528
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj261528))
               (__tmp261550
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self260990%_ _%stx260987%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp261550
           gxc#current-compile-method
           _%self260990%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self260947%_ _%stx260948%_)
        (let* ((_%$%g260950260960%_
                (lambda (_%$%g260951260957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g260951260957%_))))
               (_%$%g260949260984%_
                (lambda (_%$%g260951260963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g260951260963%_))
                      (let ((_%$%e260953260965%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g260951260963%_))))
                        (let ((_%$%hd260954260968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e260953260965%_)))
                              (_%$%tl260955260970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e260953260965%_))))
                          (let ((__tmp261553
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self260947%_
                                      _%stx260948%_))))
                                (__tmp261551
                                 (let ((__tmp261552
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp261552 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp261553
                             gx#current-expander-phi
                             __tmp261551))))
                      (_%$%g260950260960%_ _%$%g260951260963%_)))))
          (_%$%g260949260984%_ _%stx260948%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self260886%_ _%stx260887%_)
        (let* ((_%$%g260889260903%_
                (lambda (_%$%g260890260900%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g260890260900%_))))
               (_%$%g260888260944%_
                (lambda (_%$%g260890260906%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g260890260906%_))
                      (let ((_%$%e260893260908%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g260890260906%_))))
                        (let ((_%$%hd260894260911%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e260893260908%_)))
                              (_%$%tl260895260913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e260893260908%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl260895260913%_))
                              (let ((_%$%e260896260916%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl260895260913%_))))
                                (let ((_%$%hd260897260919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e260896260916%_)))
                                      (_%$%tl260898260921%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e260896260916%_))))
                                  (let* ((_%ctx260938%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd260897260919%_)))
                                         (_%code260940%_
                                          (##structure-ref
                                           _%ctx260938%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp261554
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self260886%_
                                               _%code260940%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp261554
                                     gx#current-expander-context
                                     _%ctx260938%_))))
                              (_%$%g260889260903%_ _%$%g260890260906%_))))
                      (_%$%g260889260903%_ _%$%g260890260906%_)))))
          (_%$%g260888260944%_ _%stx260887%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self260693%_ _%stx260694%_)
        (letrec ((_%generate-e260696%_
                  (lambda (_%id260871%_)
                    (let* ((_%sym260873%_
                            (if (let ((__tmp261555
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp261555))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id260871%_))
                                '#f))
                           (_%$e260875%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym260873%_))))
                      (if _%$e260875%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym260873%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym260873%_
                                                    (cons (let ((__method261529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e260875%_ 'typedecl))))
                    (if __method261529
                        (let ()
                          (declare (not safe))
                          (__method261529 _%$e260875%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e260875%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym260873%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'quote
                                          (cons (cons 'typedecl
                                                      (cons _%sym260873%_ '()))
                                                '()))
                                    (cons (cons 'quote (cons 'class::t '()))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e260880%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym260873%_))))
                            (if _%$e260880%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym260873%_
                                     '" "
                                     _%$e260880%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e260880%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym260873%_
                                                  (cons (cons 'optimizer-resolve-class
                                                              (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons 'typedecl
                                              (cons _%sym260873%_ '()))
                                        '()))
                            (cons (cons 'quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#optimizer-lookup-class-name
                                                 _%$e260880%_))
                                              '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym260873%_
                                                  (cons (let ((__method261530
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e260880%_ 'typedecl))))
                  (if __method261530
                      (let ()
                        (declare (not safe))
                        (__method261530 _%$e260880%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e260880%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx261141261142%_ _%stx260694%_)
                 (_%$%g260699260737%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx261141261142%_)))))
            (let ((_%__kont261143261144%_
                   (lambda (_%$%g260701260853%_)
                     (_%generate-e260696%_ _%$%g260701260853%_)))
                  (_%__kont261145261146%_
                   (lambda (_%$%g260714260788%_)
                     (let ((_%types260814%_
                            (map _%generate-e260696%_
                                 (let ((__tmp261556
                                        (lambda (_%$%g260806260809%_
                                                 _%$%g260807260811%_)
                                          (cons _%$%g260806260809%_
                                                _%$%g260807260811%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp261556
                                    '()
                                    _%$%g260714260788%_)))))
                       (cons 'begin _%types260814%_)))))
              (let ((_%__match261196261197%_
                     (lambda (_%$%e260715260742%_
                              _%$%hd260716260745%_
                              _%$%tl260717260747%_
                              _%$%e260718260750%_
                              _%$%hd260719260753%_
                              _%$%tl260720260755%_
                              _%__splice261147261148%_
                              _%$%target260721260758%_
                              _%$%tl260723260760%_)
                       (letrec ((_%$%loop260724260763%_
                                 (lambda (_%$%hd260722260766%_
                                          _%$%id260728260768%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd260722260766%_))
                                       (let ((_%$%e260725260770%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd260722260766%_))))
                                         (let ((_%$%lp-tl260727260775%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e260725260770%_)))
                                               (_%$%lp-hd260726260773%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e260725260770%_))))
                                           (_%$%loop260724260763%_
                                            _%$%lp-tl260727260775%_
                                            (cons _%$%lp-hd260726260773%_
                                                  _%$%id260728260768%_))))
                                       (let ((_%$%id260729260778%_
                                              (reverse _%$%id260728260768%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl260720260755%_))
                                             (let ((_%$%e260730260780%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl260720260755%_))))
                                               (let ((_%$%tl260732260785%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e260730260780%_)))
                                                     (_%$%hd260731260783%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e260730260780%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl260732260785%_))
                                                     (_%__kont261145261146%_
                                                      _%$%id260729260778%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g260699260737%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g260699260737%_))))))))
                         (_%$%loop260724260763%_
                          _%$%target260721260758%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx261141261142%_))
                    (let ((_%$%e260702260821%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx261141261142%_))))
                      (let ((_%$%tl260704260826%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e260702260821%_)))
                            (_%$%hd260703260824%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e260702260821%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl260704260826%_))
                            (let ((_%$%e260705260829%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl260704260826%_))))
                              (let ((_%$%tl260707260834%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e260705260829%_)))
                                    (_%$%hd260706260832%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e260705260829%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd260706260832%_))
                                    (let ((_%$%e260708260837%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd260706260832%_))))
                                      (let ((_%$%tl260710260842%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e260708260837%_)))
                                            (_%$%hd260709260840%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e260708260837%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl260710260842%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl260707260834%_))
                                                (let ((_%$%e260711260845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl260707260834%_))))
                                                  (let ((_%$%tl260713260850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e260711260845%_)))
                                                        (_%$%hd260712260848%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e260711260845%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl260713260850%_))
                                                        (_%__kont261143261144%_
                                                         _%$%hd260709260840%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd260706260832%_))
                                                            (let ((_%__splice261147261148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd260706260832%_
                              '0))))
                      (let ((_%$%tl260723260760%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice261147261148%_ '1)))
                            (_%$%target260721260758%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice261147261148%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl260723260760%_))
                            (_%__match261196261197%_
                             _%$%e260702260821%_
                             _%$%hd260703260824%_
                             _%$%tl260704260826%_
                             _%$%e260705260829%_
                             _%$%hd260706260832%_
                             _%$%tl260707260834%_
                             _%__splice261147261148%_
                             _%$%target260721260758%_
                             _%$%tl260723260760%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g260699260737%_)))))
                    (let () (declare (not safe)) (_%$%g260699260737%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd260706260832%_))
                                                    (let ((_%__splice261147261148%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd260706260832%_
                                                              '0))))
                                                      (let ((_%$%tl260723260760%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice261147261148%_ '1)))
                    (_%$%target260721260758%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice261147261148%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl260723260760%_))
                    (_%__match261196261197%_
                     _%$%e260702260821%_
                     _%$%hd260703260824%_
                     _%$%tl260704260826%_
                     _%$%e260705260829%_
                     _%$%hd260706260832%_
                     _%$%tl260707260834%_
                     _%__splice261147261148%_
                     _%$%target260721260758%_
                     _%$%tl260723260760%_)
                    (let () (declare (not safe)) (_%$%g260699260737%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g260699260737%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd260706260832%_))
                                                (let ((_%__splice261147261148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd260706260832%_
                                                          '0))))
                                                  (let ((_%$%tl260723260760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice261147261148%_
                                                            '1)))
                                                        (_%$%target260721260758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice261147261148%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl260723260760%_))
                                                        (_%__match261196261197%_
                                                         _%$%e260702260821%_
                                                         _%$%hd260703260824%_
                                                         _%$%tl260704260826%_
                                                         _%$%e260705260829%_
                                                         _%$%hd260706260832%_
                                                         _%$%tl260707260834%_
                                                         _%__splice261147261148%_
                                                         _%$%target260721260758%_
                                                         _%$%tl260723260760%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g260699260737%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g260699260737%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd260706260832%_))
                                        (let ((_%__splice261147261148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd260706260832%_
                                                  '0))))
                                          (let ((_%$%tl260723260760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice261147261148%_
                                                    '1)))
                                                (_%$%target260721260758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice261147261148%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl260723260760%_))
                                                (_%__match261196261197%_
                                                 _%$%e260702260821%_
                                                 _%$%hd260703260824%_
                                                 _%$%tl260704260826%_
                                                 _%$%e260705260829%_
                                                 _%$%hd260706260832%_
                                                 _%$%tl260707260834%_
                                                 _%__splice261147261148%_
                                                 _%$%target260721260758%_
                                                 _%$%tl260723260760%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g260699260737%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g260699260737%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g260699260737%_)))))
                    (let () (declare (not safe)) (_%$%g260699260737%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self260246%_ _%stx260247%_)
        (let* ((_%__stx261199261200%_ _%stx260247%_)
               (_%$%g260251260353%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx261199261200%_)))))
          (let ((_%__kont261201261202%_
                 (lambda (_%$%g260253260643%_
                          _%$%g260254260644%_
                          _%$%g260255260645%_
                          _%$%g260256260646%_
                          _%$%g260257260647%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g260256260646%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g260255260645%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g260254260644%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g260253260643%_))
                                                 '())))))))
                (_%__kont261203261204%_
                 (lambda (_%$%g260306260469%_
                          _%$%g260307260470%_
                          _%$%g260308260471%_
                          _%$%g260309260472%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g260308260471%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g260307260470%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g260306260469%_))
                                           (cons '#f '())))))))
                (_%__kont261205261206%_ (lambda () '(begin))))
            (let ((_%__match261334261335%_
                   (lambda (_%$%e260258260515%_
                            _%$%hd260259260518%_
                            _%$%tl260260260520%_
                            _%$%e260261260523%_
                            _%$%hd260262260526%_
                            _%$%tl260263260528%_
                            _%$%e260264260531%_
                            _%$%hd260265260534%_
                            _%$%tl260266260536%_
                            _%$%e260267260539%_
                            _%$%hd260268260542%_
                            _%$%tl260269260544%_
                            _%$%e260270260547%_
                            _%$%hd260271260550%_
                            _%$%tl260272260552%_
                            _%$%e260273260555%_
                            _%$%hd260274260558%_
                            _%$%tl260275260560%_
                            _%$%e260276260563%_
                            _%$%hd260277260566%_
                            _%$%tl260278260568%_
                            _%$%e260279260571%_
                            _%$%hd260280260574%_
                            _%$%tl260281260576%_
                            _%$%e260282260579%_
                            _%$%hd260283260582%_
                            _%$%tl260284260584%_
                            _%$%e260285260587%_
                            _%$%hd260286260590%_
                            _%$%tl260287260592%_
                            _%$%e260288260595%_
                            _%$%hd260289260598%_
                            _%$%tl260290260600%_
                            _%$%e260291260603%_
                            _%$%hd260292260606%_
                            _%$%tl260293260608%_
                            _%$%e260294260611%_
                            _%$%hd260295260614%_
                            _%$%tl260296260616%_
                            _%$%e260297260619%_
                            _%$%hd260298260622%_
                            _%$%tl260299260624%_
                            _%$%e260300260627%_
                            _%$%hd260301260630%_
                            _%$%tl260302260632%_
                            _%$%e260303260635%_
                            _%$%hd260304260638%_
                            _%$%tl260305260640%_)
                     (let ((_%$%g260253260643%_ _%$%hd260304260638%_)
                           (_%$%g260254260644%_ _%$%hd260295260614%_)
                           (_%$%g260255260645%_ _%$%hd260286260590%_)
                           (_%$%g260256260646%_ _%$%hd260277260566%_)
                           (_%$%g260257260647%_ _%$%hd260268260542%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g260257260647%_
                              'bind-method!))
                           (_%__kont261201261202%_
                            _%$%g260253260643%_
                            _%$%g260254260644%_
                            _%$%g260255260645%_
                            _%$%g260256260646%_
                            _%$%g260257260647%_)
                           (_%__kont261205261206%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx261199261200%_))
                  (let ((_%$%e260258260515%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx261199261200%_))))
                    (let ((_%$%tl260260260520%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e260258260515%_)))
                          (_%$%hd260259260518%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e260258260515%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl260260260520%_))
                          (let ((_%$%e260261260523%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl260260260520%_))))
                            (let ((_%$%tl260263260528%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e260261260523%_)))
                                  (_%$%hd260262260526%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e260261260523%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd260262260526%_))
                                  (let ((_%$%e260264260531%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd260262260526%_))))
                                    (let ((_%$%tl260266260536%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e260264260531%_)))
                                          (_%$%hd260265260534%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e260264260531%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd260265260534%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd260265260534%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl260266260536%_))
                                                  (let ((_%$%e260267260539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl260266260536%_))))
                                                    (let ((_%$%tl260269260544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e260267260539%_)))
                                                          (_%$%hd260268260542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e260267260539%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl260269260544%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl260263260528%_))
                      (let ((_%$%e260270260547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl260263260528%_))))
                        (let ((_%$%tl260272260552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e260270260547%_)))
                              (_%$%hd260271260550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e260270260547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd260271260550%_))
                              (let ((_%$%e260273260555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd260271260550%_))))
                                (let ((_%$%tl260275260560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e260273260555%_)))
                                      (_%$%hd260274260558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e260273260555%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd260274260558%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd260274260558%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl260275260560%_))
                                              (let ((_%$%e260276260563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl260275260560%_))))
                                                (let ((_%$%tl260278260568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e260276260563%_)))
                                                      (_%$%hd260277260566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e260276260563%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl260278260568%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl260272260552%_))
                                                          (let ((_%$%e260279260571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl260272260552%_))))
                    (let ((_%$%tl260281260576%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e260279260571%_)))
                          (_%$%hd260280260574%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e260279260571%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd260280260574%_))
                          (let ((_%$%e260282260579%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd260280260574%_))))
                            (let ((_%$%tl260284260584%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e260282260579%_)))
                                  (_%$%hd260283260582%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e260282260579%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd260283260582%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd260283260582%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl260284260584%_))
                                          (let ((_%$%e260285260587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl260284260584%_))))
                                            (let ((_%$%tl260287260592%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e260285260587%_)))
                                                  (_%$%hd260286260590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e260285260587%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl260287260592%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl260281260576%_))
                                                      (let ((_%$%e260288260595%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl260281260576%_))))
                (let ((_%$%tl260290260600%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e260288260595%_)))
                      (_%$%hd260289260598%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e260288260595%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd260289260598%_))
                      (let ((_%$%e260291260603%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd260289260598%_))))
                        (let ((_%$%tl260293260608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e260291260603%_)))
                              (_%$%hd260292260606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e260291260603%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd260292260606%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd260292260606%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl260293260608%_))
                                      (let ((_%$%e260294260611%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl260293260608%_))))
                                        (let ((_%$%tl260296260616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e260294260611%_)))
                                              (_%$%hd260295260614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e260294260611%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl260296260616%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl260290260600%_))
                                                  (let ((_%$%e260297260619%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl260290260600%_))))
                                                    (let ((_%$%tl260299260624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e260297260619%_)))
                                                          (_%$%hd260298260622%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e260297260619%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd260298260622%_))
                                                          (let ((_%$%e260300260627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd260298260622%_))))
                    (let ((_%$%tl260302260632%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e260300260627%_)))
                          (_%$%hd260301260630%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e260300260627%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd260301260630%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd260301260630%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl260302260632%_))
                                  (let ((_%$%e260303260635%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl260302260632%_))))
                                    (let ((_%$%tl260305260640%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e260303260635%_)))
                                          (_%$%hd260304260638%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e260303260635%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl260305260640%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl260299260624%_))
                                              (_%__match261334261335%_
                                               _%$%e260258260515%_
                                               _%$%hd260259260518%_
                                               _%$%tl260260260520%_
                                               _%$%e260261260523%_
                                               _%$%hd260262260526%_
                                               _%$%tl260263260528%_
                                               _%$%e260264260531%_
                                               _%$%hd260265260534%_
                                               _%$%tl260266260536%_
                                               _%$%e260267260539%_
                                               _%$%hd260268260542%_
                                               _%$%tl260269260544%_
                                               _%$%e260270260547%_
                                               _%$%hd260271260550%_
                                               _%$%tl260272260552%_
                                               _%$%e260273260555%_
                                               _%$%hd260274260558%_
                                               _%$%tl260275260560%_
                                               _%$%e260276260563%_
                                               _%$%hd260277260566%_
                                               _%$%tl260278260568%_
                                               _%$%e260279260571%_
                                               _%$%hd260280260574%_
                                               _%$%tl260281260576%_
                                               _%$%e260282260579%_
                                               _%$%hd260283260582%_
                                               _%$%tl260284260584%_
                                               _%$%e260285260587%_
                                               _%$%hd260286260590%_
                                               _%$%tl260287260592%_
                                               _%$%e260288260595%_
                                               _%$%hd260289260598%_
                                               _%$%tl260290260600%_
                                               _%$%e260291260603%_
                                               _%$%hd260292260606%_
                                               _%$%tl260293260608%_
                                               _%$%e260294260611%_
                                               _%$%hd260295260614%_
                                               _%$%tl260296260616%_
                                               _%$%e260297260619%_
                                               _%$%hd260298260622%_
                                               _%$%tl260299260624%_
                                               _%$%e260300260627%_
                                               _%$%hd260301260630%_
                                               _%$%tl260302260632%_
                                               _%$%e260303260635%_
                                               _%$%hd260304260638%_
                                               _%$%tl260305260640%_)
                                              (_%__kont261205261206%_))
                                          (_%__kont261205261206%_))))
                                  (_%__kont261205261206%_))
                              (_%__kont261205261206%_))
                          (_%__kont261205261206%_))))
                  (_%__kont261205261206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl260290260600%_))
                                                      (if (let ((__tmp261557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp261557 'bind-method!))
                  (let ((_%$%g260306260469%_ _%$%hd260295260614%_)
                        (_%$%g260307260470%_ _%$%hd260286260590%_)
                        (_%$%g260308260471%_ _%$%hd260277260566%_)
                        (_%$%g260309260472%_ _%$%hd260268260542%_))
                    (_%__kont261203261204%_
                     _%$%g260306260469%_
                     _%$%g260307260470%_
                     _%$%g260308260471%_
                     _%$%g260309260472%_))
                  (_%__kont261205261206%_))
              (_%__kont261205261206%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont261205261206%_))))
                                      (_%__kont261205261206%_))
                                  (_%__kont261205261206%_))
                              (_%__kont261205261206%_))))
                      (_%__kont261205261206%_))))
              (_%__kont261205261206%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont261205261206%_))))
                                          (_%__kont261205261206%_))
                                      (_%__kont261205261206%_))
                                  (_%__kont261205261206%_))))
                          (_%__kont261205261206%_))))
                  (_%__kont261205261206%_))
              (_%__kont261205261206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont261205261206%_))
                                          (_%__kont261205261206%_))
                                      (_%__kont261205261206%_))))
                              (_%__kont261205261206%_))))
                      (_%__kont261205261206%_))
                  (_%__kont261205261206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont261205261206%_))
                                              (_%__kont261205261206%_))
                                          (_%__kont261205261206%_))))
                                  (_%__kont261205261206%_))))
                          (_%__kont261205261206%_))))
                  (_%__kont261205261206%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self260070%_ _%stx260071%_)
        (let* ((_%__stx261443261444%_ _%stx260071%_)
               (_%$%g260074260114%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx261443261444%_)))))
          (let ((_%__kont261445261446%_
                 (lambda (_%$%g260076260220%_ _%$%g260077260221%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g260077260221%_))
                               (cons _%$%g260076260220%_ '())))))
                (_%__kont261447261448%_
                 (lambda (_%$%g260099260143%_ _%$%g260100260144%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx261443261444%_))
                (let ((_%$%e260078260164%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx261443261444%_))))
                  (let ((_%$%tl260080260169%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e260078260164%_)))
                        (_%$%hd260079260167%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e260078260164%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl260080260169%_))
                        (let ((_%$%e260081260172%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl260080260169%_))))
                          (let ((_%$%tl260083260177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e260081260172%_)))
                                (_%$%hd260082260175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e260081260172%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd260082260175%_))
                                (let ((_%$%e260084260180%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd260082260175%_))))
                                  (let ((_%$%tl260086260185%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e260084260180%_)))
                                        (_%$%hd260085260183%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e260084260180%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd260085260183%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd260085260183%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl260086260185%_))
                                                (let ((_%$%e260087260188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl260086260185%_))))
                                                  (let ((_%$%tl260089260193%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e260087260188%_)))
                                                        (_%$%hd260088260191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e260087260188%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl260089260193%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl260083260177%_))
                                                            (let ((_%$%e260090260196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl260083260177%_))))
                      (let ((_%$%tl260092260201%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e260090260196%_)))
                            (_%$%hd260091260199%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e260090260196%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd260091260199%_))
                            (let ((_%$%e260093260204%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd260091260199%_))))
                              (let ((_%$%tl260095260209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e260093260204%_)))
                                    (_%$%hd260094260207%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e260093260204%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd260094260207%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd260094260207%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl260095260209%_))
                                            (let ((_%$%e260096260212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl260095260209%_))))
                                              (let ((_%$%tl260098260217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e260096260212%_)))
                                                    (_%$%hd260097260215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e260096260212%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl260098260217%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl260092260201%_))
                                                        (_%__kont261445261446%_
                                                         _%$%hd260097260215%_
                                                         _%$%hd260088260191%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g260074260114%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl260092260201%_))
                                                        (_%__kont261447261448%_
                                                         _%$%hd260091260199%_
                                                         _%$%hd260082260175%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g260074260114%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl260092260201%_))
                                                (_%__kont261447261448%_
                                                 _%$%hd260091260199%_
                                                 _%$%hd260082260175%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g260074260114%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl260092260201%_))
                                            (_%__kont261447261448%_
                                             _%$%hd260091260199%_
                                             _%$%hd260082260175%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g260074260114%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl260092260201%_))
                                        (_%__kont261447261448%_
                                         _%$%hd260091260199%_
                                         _%$%hd260082260175%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g260074260114%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl260092260201%_))
                                (_%__kont261447261448%_
                                 _%$%hd260091260199%_
                                 _%$%hd260082260175%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g260074260114%_))))))
                    (let () (declare (not safe)) (_%$%g260074260114%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl260083260177%_))
                    (let ((_%$%e260107260135%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl260083260177%_))))
                      (let ((_%$%tl260109260140%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e260107260135%_)))
                            (_%$%hd260108260138%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e260107260135%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl260109260140%_))
                            (_%__kont261447261448%_
                             _%$%hd260108260138%_
                             _%$%hd260082260175%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g260074260114%_)))))
                    (let () (declare (not safe)) (_%$%g260074260114%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl260083260177%_))
                                                    (let ((_%$%e260107260135%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl260083260177%_))))
                                                      (let ((_%$%tl260109260140%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e260107260135%_)))
                    (_%$%hd260108260138%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e260107260135%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl260109260140%_))
                    (_%__kont261447261448%_
                     _%$%hd260108260138%_
                     _%$%hd260082260175%_)
                    (let () (declare (not safe)) (_%$%g260074260114%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g260074260114%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl260083260177%_))
                                                (let ((_%$%e260107260135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl260083260177%_))))
                                                  (let ((_%$%tl260109260140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e260107260135%_)))
                                                        (_%$%hd260108260138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e260107260135%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl260109260140%_))
                                                        (_%__kont261447261448%_
                                                         _%$%hd260108260138%_
                                                         _%$%hd260082260175%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g260074260114%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g260074260114%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl260083260177%_))
                                            (let ((_%$%e260107260135%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl260083260177%_))))
                                              (let ((_%$%tl260109260140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e260107260135%_)))
                                                    (_%$%hd260108260138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e260107260135%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl260109260140%_))
                                                    (_%__kont261447261448%_
                                                     _%$%hd260108260138%_
                                                     _%$%hd260082260175%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g260074260114%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g260074260114%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl260083260177%_))
                                    (let ((_%$%e260107260135%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl260083260177%_))))
                                      (let ((_%$%tl260109260140%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e260107260135%_)))
                                            (_%$%hd260108260138%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e260107260135%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl260109260140%_))
                                            (_%__kont261447261448%_
                                             _%$%hd260108260138%_
                                             _%$%hd260082260175%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g260074260114%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g260074260114%_))))))
                        (let () (declare (not safe)) (_%$%g260074260114%_)))))
                (let () (declare (not safe)) (_%$%g260074260114%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self260057%_)
        (let ((_%self260060%_ _%self260057%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self260060%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self259831%_)
        (let* ((_%self259834%_ _%self259831%_)
               (_%$%self259843259859%_ _%self259834%_)
               (_%$%E259845259862%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self259843259859%_
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
               (_%$%K259846259877%_
                (lambda (_%methods259865%_
                         _%metaclass259866%_
                         _%system?259867%_
                         _%final?259868%_
                         _%struct?259869%_
                         _%constructor259870%_
                         _%fields259871%_
                         _%slots259872%_
                         _%precendence-list259873%_
                         _%super259874%_
                         _%id259875%_)
                  (cons '@class
                        (cons _%id259875%_
                              (cons _%super259874%_
                                    (cons _%precendence-list259873%_
                                          (cons _%slots259872%_
                                                (cons _%fields259871%_
                                                      (cons _%constructor259870%_
                                                            (cons _%struct?259869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?259868%_
                                (cons _%system?259867%_
                                      (cons _%metaclass259866%_
                                            (cons (if _%methods259865%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods259865%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e259847259880%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '1
                   '#f
                   '#f)))
               (_%id259883%_ _%$%e259847259880%_)
               (_%$%e259848259885%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '2
                   '#f
                   '#f)))
               (_%super259888%_ _%$%e259848259885%_)
               (_%$%e259849259890%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list259893%_ _%$%e259849259890%_)
               (_%$%e259850259895%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '4
                   '#f
                   '#f)))
               (_%slots259898%_ _%$%e259850259895%_)
               (_%$%e259851259900%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '5
                   '#f
                   '#f)))
               (_%fields259903%_ _%$%e259851259900%_)
               (_%$%e259852259905%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '6
                   '#f
                   '#f)))
               (_%constructor259908%_ _%$%e259852259905%_)
               (_%$%e259853259910%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '7
                   '#f
                   '#f)))
               (_%struct?259913%_ _%$%e259853259910%_)
               (_%$%e259854259915%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '8
                   '#f
                   '#f)))
               (_%final?259918%_ _%$%e259854259915%_)
               (_%$%e259855259920%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '9
                   '#f
                   '#f)))
               (_%system?259923%_ _%$%e259855259920%_)
               (_%$%e259856259925%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass259928%_ _%$%e259856259925%_)
               (_%$%e259857259930%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self259843259859%_
                   '11
                   '#f
                   '#f)))
               (_%methods259933%_ _%$%e259857259930%_))
          (_%$%K259846259877%_
           _%methods259933%_
           _%metaclass259928%_
           _%system?259923%_
           _%final?259918%_
           _%struct?259913%_
           _%constructor259908%_
           _%fields259903%_
           _%slots259898%_
           _%precendence-list259893%_
           _%super259888%_
           _%id259883%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self259696%_)
        (let ((_%self259699%_ _%self259696%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259699%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self259561%_)
        (let ((_%self259564%_ _%self259561%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259564%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self259426%_)
        (let ((_%self259429%_ _%self259426%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259429%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self259429%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self259429%_
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
      (lambda (_%self259291%_)
        (let ((_%self259294%_ _%self259291%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259294%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self259294%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self259294%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self259156%_)
        (let ((_%self259159%_ _%self259156%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259159%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self259159%_
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
      (lambda (_%self258970%_)
        (let* ((_%self258973%_ _%self258970%_)
               (_%$%self258982258991%_ _%self258973%_)
               (_%$%E258984258994%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self258982258991%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K258985259013%_
                (lambda (_%dispatch258997%_
                         _%arity258998%_
                         _%signature258999%_)
                  (if _%signature258999%_
                      (let ((_%signature259001%_ _%signature258999%_))
                        (cons '@lambda
                              (cons _%arity258998%_
                                    (cons _%dispatch258997%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature259001%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature259001%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature259001%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature259001%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature259001%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity258998%_
                                  (cons _%dispatch258997%_ '()))))))
               (_%$%e258986259016%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258982258991%_
                   '1
                   '#f
                   '#f)))
               (_%$%e258987259019%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258982258991%_
                   '2
                   '#f
                   '#f)))
               (_%signature259022%_ _%$%e258987259019%_)
               (_%$%e258988259024%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258982258991%_
                   '3
                   '#f
                   '#f)))
               (_%arity259027%_ _%$%e258988259024%_)
               (_%$%e258989259029%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258982258991%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch259032%_ _%$%e258989259029%_))
          (_%$%K258985259013%_
           _%dispatch259032%_
           _%arity259027%_
           _%signature259022%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self258830%_)
        (let ((_%self258833%_ _%self258830%_))
          (letrec ((_%clause-e258844%_
                    (lambda (_%clause258846%_)
                      (cdr (let ((__method261531
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause258846%_
                                     'typedecl))))
                             (if __method261531
                                 (let ()
                                   (declare (not safe))
                                   (__method261531 _%clause258846%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause258846%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e258844%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self258833%_
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
      (lambda (_%self258695%_)
        (let ((_%self258698%_ _%self258695%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258698%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258698%_
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
      (lambda (_%self258560%_)
        (let ((_%self258563%_ _%self258560%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258563%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258563%_
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
      (lambda (_%self258425%_)
        (let ((_%self258428%_ _%self258425%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258428%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
