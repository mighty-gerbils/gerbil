(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712573437)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp193363
                   (let ((__obj193357
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj193357)
                     __obj193357)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp193363)))))
    (define gxc#optimize!
      (lambda (_%ctx192966%_)
        (let ((__tmp193366
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx192966%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx192966%_)
                 (let ((__tmp193368
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp193367
                        (##structure-ref
                         _%ctx192966%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp193368 __tmp193367 '#t))
                 (let ((_%code192969%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx192966%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx192966%_
                    _%code192969%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp193365 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp193364 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193366
           gxc#current-compile-mutators
           __tmp193365
           gxc#current-compile-local-type
           __tmp193364))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx192952%_)
        (letrec ((_%load-it!192954%_
                  (lambda (_%id192964%_)
                    (if (let ((__tmp193369
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp193369 _%id192964%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id192964%_)
                          (let ((__tmp193370
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp193370 _%id192964%_ '#t)))))))
          (let* ((_%modid192956%_
                  (##structure-ref
                   _%ctx192952%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str192958%_ (symbol->string _%modid192956%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str192958%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str192958%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192954%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192954%_
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
      (lambda (_%ctx192889%_)
        (letrec* ((_%deps192891%_
                   (let* ((_%imports192942%_
                           (##structure-ref
                            _%ctx192889%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e192944%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx192889%_))))
                     (if _%$e192944%_
                         ((lambda (_%g192946192948%_)
                            (cons _%g192946192948%_ _%imports192942%_))
                          _%$e192944%_)
                         _%imports192942%_))))
          (let _%lp192893%_ ((_%rest192895%_ _%deps192891%_))
            (let* ((_%rest192896192904%_ _%rest192895%_)
                   (_%else192898192912%_ (lambda () '#!void))
                   (_%K192900192930%_
                    (lambda (_%rest192915%_ _%hd192916%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd192916%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp193372
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp193371
                                       (##structure-ref
                                        _%hd192916%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp193372 __tmp193371))
                                '#!void
                                (begin
                                  (let ((_%$e192919%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd192916%_))))
                                    (if _%$e192919%_
                                        ((lambda (_%pre192922%_)
                                           (_%lp192893%_
                                            (cons _%pre192922%_
                                                  (##structure-ref
                                                   _%hd192916%_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _%$e192919%_)
                                        (_%lp192893%_
                                         (##structure-ref
                                          _%hd192916%_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _%hd192916%_)))
                            (_%lp192893%_ _%rest192915%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd192916%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp193374
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp193373
                                           (##structure-ref
                                            _%hd192916%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp193374 __tmp193373))
                                    '#!void
                                    (begin
                                      (_%lp192893%_
                                       (##structure-ref
                                        _%hd192916%_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _%hd192916%_)))
                                (_%lp192893%_ _%rest192915%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd192916%_
                                     'gx#module-import::t))
                                  (_%lp192893%_
                                   (cons (##direct-structure-ref
                                          _%hd192916%_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _%rest192915%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd192916%_
                                         'gx#module-export::t))
                                      (_%lp192893%_
                                       (cons (##direct-structure-ref
                                              _%hd192916%_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _%rest192915%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd192916%_
                                             'gx#import-set::t))
                                          (_%lp192893%_
                                           (cons (##direct-structure-ref
                                                  _%hd192916%_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _%rest192915%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd192916%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest192896192904%_))
                  (let ((_%hd192901192933%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest192896192904%_)))
                        (_%tl192902192935%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest192896192904%_))))
                    (let* ((_%hd192938%_ _%hd192901192933%_)
                           (_%rest192940%_ _%tl192902192935%_))
                      (_%K192900192930%_ _%rest192940%_ _%hd192938%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx192869%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx192869%_
                    'gx#module-context::t))
                 (list? (##structure-ref
                         _%ctx192869%_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_%ht192871%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id192873%_
                    (##structure-ref
                     _%ctx192869%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod192875%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht192871%_ _%id192873%_)))
                   (_%$e192878%_ _%mod192875%_))
              (if _%$e192878%_
                  _%$e192878%_
                  (let* ((_%mod192881%_
                          (gxc#optimizer-import-ssxi _%ctx192869%_))
                         (_%val192886%_
                          (let ((_%$e192883%_ _%mod192881%_))
                            (if _%$e192883%_ _%$e192883%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht192871%_ _%id192873%_ _%val192886%_))
                    _%val192886%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx192867%_)
        (if (##structure-ref _%ctx192867%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx192867%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id192844%_)
        (letrec ((_%catch-e192846%_
                  (lambda (_%exn192865%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn192865%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn192865%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id192844%_))))
                    '#f))
                 (_%import-e192847%_
                  (lambda ()
                    (let* ((_%str-id192850%_
                            (let ((__tmp193375
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id192844%_))))
                              (declare (not safe))
                              (##string-append __tmp193375 '".ssxi")))
                           (_%artefact-path192858%_
                            (let ((_%odir192851192853%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir192851192853%_
                                  (let ((_%odir192856%_ _%odir192851192853%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id192850%_
                                        '".ss"))
                                     _%odir192856%_))
                                  '#f)))
                           (_%library-path192860%_
                            (let ((__tmp193376
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id192850%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp193376)))
                           (_%ssxi-path192862%_
                            (if (and _%artefact-path192858%_
                                     (file-exists? _%artefact-path192858%_))
                                _%artefact-path192858%_
                                _%library-path192860%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path192862%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path192862%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e192846%_ _%import-e192847%_)))))
    (define gxc#optimize-source
      (lambda (_%stx192835%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx192835%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx192835%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx192835%_))
        (let* ((_%stx192837%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx192835%_)))
               (_%stx192839%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx192837%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx192839%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx192839%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx192839%_))
          (let ((_%stx192842%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx192839%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx192842%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193378 (list gxc#::generate-runtime-empty::t))
            (__tmp193377 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193378
         '()
         __tmp193377
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args192832%_
        (apply make-instance gxc#::generate-ssxi::t _%$args192832%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193379
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
        (__make-promise __tmp193379)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192824%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self192827%_
                (let ((__obj193359
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj193359))
               (__tmp193380
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self192827%_ _%stx192824%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193380
           gxc#current-compile-method
           _%self192827%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192784%_ _%stx192785%_)
        (let* ((_%g192787192797%_
                (lambda (_%g192788192794%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192788192794%_))))
               (_%g192786192821%_
                (lambda (_%g192788192800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192788192800%_))
                      (let ((_%e192792192802%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192788192800%_))))
                        (let ((_%hd192791192805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192792192802%_)))
                              (_%tl192790192807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192792192802%_))))
                          ((lambda (_%L192810%_)
                             (let ((__tmp193383
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192784%_
                                         _%stx192785%_))))
                                   (__tmp193381
                                    (let ((__tmp193382
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193382 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193383
                                gx#current-expander-phi
                                __tmp193381)))
                           _%tl192790192807%_)))
                      (_%g192787192797%_ _%g192788192800%_)))))
          (_%g192786192821%_ _%stx192785%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192723%_ _%stx192724%_)
        (let* ((_%g192726192740%_
                (lambda (_%g192727192737%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192727192737%_))))
               (_%g192725192781%_
                (lambda (_%g192727192743%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192727192743%_))
                      (let ((_%e192732192745%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192727192743%_))))
                        (let ((_%hd192731192748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192732192745%_)))
                              (_%tl192730192750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192732192745%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192730192750%_))
                              (let ((_%e192735192753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192730192750%_))))
                                (let ((_%hd192734192756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192735192753%_)))
                                      (_%tl192733192758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192735192753%_))))
                                  ((lambda (_%L192761%_ _%L192762%_)
                                     (let* ((_%ctx192775%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192762%_)))
                                            (_%code192777%_
                                             (##structure-ref
                                              _%ctx192775%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp193384
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self192723%_
                                                  _%code192777%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp193384
                                        gx#current-expander-context
                                        _%ctx192775%_)))
                                   _%tl192733192758%_
                                   _%hd192734192756%_)))
                              (_%g192726192740%_ _%g192727192743%_))))
                      (_%g192726192740%_ _%g192727192743%_)))))
          (_%g192725192781%_ _%stx192724%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192528%_ _%stx192529%_)
        (letrec ((_%generate-e192531%_
                  (lambda (_%id192708%_)
                    (let* ((_%sym192710%_
                            (if (let ((__tmp193385
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193385))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192708%_))
                                '#f))
                           (_%$e192712%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192710%_))))
                      (if _%$e192712%_
                          ((lambda (_%klass192715%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192710%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192710%_
                                                     (cons (let ((__method193360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192715%_ 'typedecl))))
                     (if __method193360
                         (__method193360 _%klass192715%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192715%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192710%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192710%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192712%_)
                          (let ((_%$e192717%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192710%_))))
                            (if _%$e192717%_
                                ((lambda (_%type192720%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192710%_
                                      '" "
                                      _%type192720%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192720%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192710%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192710%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192720%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192710%_
                                                   (cons (let ((__method193361
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192720%_ 'typedecl))))
                   (if __method193361
                       (__method193361 _%type192720%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192720%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192717%_)
                                '(begin))))))))
          (let* ((_%__stx192972192973%_ _%stx192529%_)
                 (_%g192534192572%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx192972192973%_)))))
            (let ((_%__kont192974192975%_
                   (lambda (_%L192690%_) (_%generate-e192531%_ _%L192690%_)))
                  (_%__kont192976192977%_
                   (lambda (_%L192625%_)
                     (let ((_%types192651%_
                            (map _%generate-e192531%_
                                 (let ((__tmp193386
                                        (lambda (_%g192643192646%_
                                                 _%g192644192648%_)
                                          (cons _%g192643192646%_
                                                _%g192644192648%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193386 '() _%L192625%_)))))
                       (cons 'begin _%types192651%_)))))
              (let ((_%__match193027193028%_
                     (lambda (_%e192552192577%_
                              _%hd192551192580%_
                              _%tl192550192582%_
                              _%e192555192585%_
                              _%hd192554192588%_
                              _%tl192553192590%_
                              _%__splice192978192979%_
                              _%target192556192593%_
                              _%tl192558192595%_)
                       (letrec ((_%loop192559192598%_
                                 (lambda (_%hd192557192601%_
                                          _%id192563192603%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192557192601%_))
                                       (let ((_%e192560192606%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192557192601%_))))
                                         (let ((_%lp-tl192562192611%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192560192606%_)))
                                               (_%lp-hd192561192609%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192560192606%_))))
                                           (_%loop192559192598%_
                                            _%lp-tl192562192611%_
                                            (cons _%lp-hd192561192609%_
                                                  _%id192563192603%_))))
                                       (let ((_%id192564192614%_
                                              (reverse _%id192563192603%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192553192590%_))
                                             (let ((_%e192567192617%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192553192590%_))))
                                               (let ((_%tl192565192622%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192567192617%_)))
                                                     (_%hd192566192620%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192567192617%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192565192622%_))
                                                     (_%__kont192976192977%_
                                                      _%id192564192614%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192534192572%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192534192572%_))))))))
                         (_%loop192559192598%_ _%target192556192593%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx192972192973%_))
                    (let ((_%e192539192658%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx192972192973%_))))
                      (let ((_%tl192537192663%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192539192658%_)))
                            (_%hd192538192661%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192539192658%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192537192663%_))
                            (let ((_%e192542192666%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192537192663%_))))
                              (let ((_%tl192540192671%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192542192666%_)))
                                    (_%hd192541192669%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192542192666%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192541192669%_))
                                    (let ((_%e192545192674%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192541192669%_))))
                                      (let ((_%tl192543192679%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192545192674%_)))
                                            (_%hd192544192677%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192545192674%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192543192679%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192540192671%_))
                                                (let ((_%e192548192682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192540192671%_))))
                                                  (let ((_%tl192546192687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192548192682%_)))
                                                        (_%hd192547192685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192548192682%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192546192687%_))
                                                        (_%__kont192974192975%_
                                                         _%hd192544192677%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192541192669%_))
                                                            (let ((_%__splice192978192979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192541192669%_ '0))))
                      (let ((_%tl192558192595%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192978192979%_ '1)))
                            (_%target192556192593%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192978192979%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192558192595%_))
                            (_%__match193027193028%_
                             _%e192539192658%_
                             _%hd192538192661%_
                             _%tl192537192663%_
                             _%e192542192666%_
                             _%hd192541192669%_
                             _%tl192540192671%_
                             _%__splice192978192979%_
                             _%target192556192593%_
                             _%tl192558192595%_)
                            (let ()
                              (declare (not safe))
                              (_%g192534192572%_)))))
                    (let () (declare (not safe)) (_%g192534192572%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192541192669%_))
                                                    (let ((_%__splice192978192979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192541192669%_
                                                              '0))))
                                                      (let ((_%tl192558192595%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice192978192979%_ '1)))
                    (_%target192556192593%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice192978192979%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192558192595%_))
                    (_%__match193027193028%_
                     _%e192539192658%_
                     _%hd192538192661%_
                     _%tl192537192663%_
                     _%e192542192666%_
                     _%hd192541192669%_
                     _%tl192540192671%_
                     _%__splice192978192979%_
                     _%target192556192593%_
                     _%tl192558192595%_)
                    (let () (declare (not safe)) (_%g192534192572%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192534192572%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192541192669%_))
                                                (let ((_%__splice192978192979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192541192669%_
                                                          '0))))
                                                  (let ((_%tl192558192595%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192978192979%_
                                                            '1)))
                                                        (_%target192556192593%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192978192979%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192558192595%_))
                                                        (_%__match193027193028%_
                                                         _%e192539192658%_
                                                         _%hd192538192661%_
                                                         _%tl192537192663%_
                                                         _%e192542192666%_
                                                         _%hd192541192669%_
                                                         _%tl192540192671%_
                                                         _%__splice192978192979%_
                                                         _%target192556192593%_
                                                         _%tl192558192595%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192534192572%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192534192572%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192541192669%_))
                                        (let ((_%__splice192978192979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192541192669%_
                                                  '0))))
                                          (let ((_%tl192558192595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192978192979%_
                                                    '1)))
                                                (_%target192556192593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192978192979%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192558192595%_))
                                                (_%__match193027193028%_
                                                 _%e192539192658%_
                                                 _%hd192538192661%_
                                                 _%tl192537192663%_
                                                 _%e192542192666%_
                                                 _%hd192541192669%_
                                                 _%tl192540192671%_
                                                 _%__splice192978192979%_
                                                 _%target192556192593%_
                                                 _%tl192558192595%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192534192572%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192534192572%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192534192572%_)))))
                    (let () (declare (not safe)) (_%g192534192572%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self192081%_ _%stx192082%_)
        (let* ((_%__stx193030193031%_ _%stx192082%_)
               (_%g192086192188%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193030193031%_)))))
          (let ((_%__kont193032193033%_
                 (lambda (_%L192478%_
                          _%L192479%_
                          _%L192480%_
                          _%L192481%_
                          _%L192482%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192481%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192480%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192479%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192478%_))
                                                 '())))))))
                (_%__kont193034193035%_
                 (lambda (_%L192304%_ _%L192305%_ _%L192306%_ _%L192307%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192306%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192305%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192304%_))
                                           (cons '#f '())))))))
                (_%__kont193036193037%_ (lambda () '(begin))))
            (let ((_%__match193165193166%_
                   (lambda (_%e192095192350%_
                            _%hd192094192353%_
                            _%tl192093192355%_
                            _%e192098192358%_
                            _%hd192097192361%_
                            _%tl192096192363%_
                            _%e192101192366%_
                            _%hd192100192369%_
                            _%tl192099192371%_
                            _%e192104192374%_
                            _%hd192103192377%_
                            _%tl192102192379%_
                            _%e192107192382%_
                            _%hd192106192385%_
                            _%tl192105192387%_
                            _%e192110192390%_
                            _%hd192109192393%_
                            _%tl192108192395%_
                            _%e192113192398%_
                            _%hd192112192401%_
                            _%tl192111192403%_
                            _%e192116192406%_
                            _%hd192115192409%_
                            _%tl192114192411%_
                            _%e192119192414%_
                            _%hd192118192417%_
                            _%tl192117192419%_
                            _%e192122192422%_
                            _%hd192121192425%_
                            _%tl192120192427%_
                            _%e192125192430%_
                            _%hd192124192433%_
                            _%tl192123192435%_
                            _%e192128192438%_
                            _%hd192127192441%_
                            _%tl192126192443%_
                            _%e192131192446%_
                            _%hd192130192449%_
                            _%tl192129192451%_
                            _%e192134192454%_
                            _%hd192133192457%_
                            _%tl192132192459%_
                            _%e192137192462%_
                            _%hd192136192465%_
                            _%tl192135192467%_
                            _%e192140192470%_
                            _%hd192139192473%_
                            _%tl192138192475%_)
                     (let ((_%L192478%_ _%hd192139192473%_)
                           (_%L192479%_ _%hd192130192449%_)
                           (_%L192480%_ _%hd192121192425%_)
                           (_%L192481%_ _%hd192112192401%_)
                           (_%L192482%_ _%hd192103192377%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192482%_
                              'bind-method!))
                           (_%__kont193032193033%_
                            _%L192478%_
                            _%L192479%_
                            _%L192480%_
                            _%L192481%_
                            _%L192482%_)
                           (_%__kont193036193037%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193030193031%_))
                  (let ((_%e192095192350%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193030193031%_))))
                    (let ((_%tl192093192355%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192095192350%_)))
                          (_%hd192094192353%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192095192350%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192093192355%_))
                          (let ((_%e192098192358%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192093192355%_))))
                            (let ((_%tl192096192363%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192098192358%_)))
                                  (_%hd192097192361%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192098192358%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192097192361%_))
                                  (let ((_%e192101192366%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192097192361%_))))
                                    (let ((_%tl192099192371%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192101192366%_)))
                                          (_%hd192100192369%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192101192366%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192100192369%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192100192369%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192099192371%_))
                                                  (let ((_%e192104192374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192099192371%_))))
                                                    (let ((_%tl192102192379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192104192374%_)))
                                                          (_%hd192103192377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192104192374%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192102192379%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192096192363%_))
                      (let ((_%e192107192382%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192096192363%_))))
                        (let ((_%tl192105192387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192107192382%_)))
                              (_%hd192106192385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192107192382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd192106192385%_))
                              (let ((_%e192110192390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd192106192385%_))))
                                (let ((_%tl192108192395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192110192390%_)))
                                      (_%hd192109192393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192110192390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd192109192393%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd192109192393%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192108192395%_))
                                              (let ((_%e192113192398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192108192395%_))))
                                                (let ((_%tl192111192403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192113192398%_)))
                                                      (_%hd192112192401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192113192398%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192111192403%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192105192387%_))
                                                          (let ((_%e192116192406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192105192387%_))))
                    (let ((_%tl192114192411%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192116192406%_)))
                          (_%hd192115192409%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192116192406%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd192115192409%_))
                          (let ((_%e192119192414%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd192115192409%_))))
                            (let ((_%tl192117192419%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192119192414%_)))
                                  (_%hd192118192417%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192119192414%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd192118192417%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd192118192417%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192117192419%_))
                                          (let ((_%e192122192422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192117192419%_))))
                                            (let ((_%tl192120192427%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192122192422%_)))
                                                  (_%hd192121192425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192122192422%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192120192427%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192114192411%_))
                                                      (let ((_%e192125192430%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192114192411%_))))
                (let ((_%tl192123192435%_
                       (let () (declare (not safe)) (##cdr _%e192125192430%_)))
                      (_%hd192124192433%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192125192430%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192124192433%_))
                      (let ((_%e192128192438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192124192433%_))))
                        (let ((_%tl192126192443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192128192438%_)))
                              (_%hd192127192441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192128192438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192127192441%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192127192441%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192126192443%_))
                                      (let ((_%e192131192446%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192126192443%_))))
                                        (let ((_%tl192129192451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192131192446%_)))
                                              (_%hd192130192449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192131192446%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192129192451%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192123192435%_))
                                                  (let ((_%e192134192454%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192123192435%_))))
                                                    (let ((_%tl192132192459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192134192454%_)))
                                                          (_%hd192133192457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192134192454%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192133192457%_))
                                                          (let ((_%e192137192462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192133192457%_))))
                    (let ((_%tl192135192467%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192137192462%_)))
                          (_%hd192136192465%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192137192462%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192136192465%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192136192465%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192135192467%_))
                                  (let ((_%e192140192470%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192135192467%_))))
                                    (let ((_%tl192138192475%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192140192470%_)))
                                          (_%hd192139192473%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192140192470%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192138192475%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192132192459%_))
                                              (_%__match193165193166%_
                                               _%e192095192350%_
                                               _%hd192094192353%_
                                               _%tl192093192355%_
                                               _%e192098192358%_
                                               _%hd192097192361%_
                                               _%tl192096192363%_
                                               _%e192101192366%_
                                               _%hd192100192369%_
                                               _%tl192099192371%_
                                               _%e192104192374%_
                                               _%hd192103192377%_
                                               _%tl192102192379%_
                                               _%e192107192382%_
                                               _%hd192106192385%_
                                               _%tl192105192387%_
                                               _%e192110192390%_
                                               _%hd192109192393%_
                                               _%tl192108192395%_
                                               _%e192113192398%_
                                               _%hd192112192401%_
                                               _%tl192111192403%_
                                               _%e192116192406%_
                                               _%hd192115192409%_
                                               _%tl192114192411%_
                                               _%e192119192414%_
                                               _%hd192118192417%_
                                               _%tl192117192419%_
                                               _%e192122192422%_
                                               _%hd192121192425%_
                                               _%tl192120192427%_
                                               _%e192125192430%_
                                               _%hd192124192433%_
                                               _%tl192123192435%_
                                               _%e192128192438%_
                                               _%hd192127192441%_
                                               _%tl192126192443%_
                                               _%e192131192446%_
                                               _%hd192130192449%_
                                               _%tl192129192451%_
                                               _%e192134192454%_
                                               _%hd192133192457%_
                                               _%tl192132192459%_
                                               _%e192137192462%_
                                               _%hd192136192465%_
                                               _%tl192135192467%_
                                               _%e192140192470%_
                                               _%hd192139192473%_
                                               _%tl192138192475%_)
                                              (_%__kont193036193037%_))
                                          (_%__kont193036193037%_))))
                                  (_%__kont193036193037%_))
                              (_%__kont193036193037%_))
                          (_%__kont193036193037%_))))
                  (_%__kont193036193037%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192123192435%_))
                                                      (if (let ((__tmp193387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193387 'bind-method!))
                  (let ((_%L192304%_ _%hd192130192449%_)
                        (_%L192305%_ _%hd192121192425%_)
                        (_%L192306%_ _%hd192112192401%_)
                        (_%L192307%_ _%hd192103192377%_))
                    (_%__kont193034193035%_
                     _%L192304%_
                     _%L192305%_
                     _%L192306%_
                     _%L192307%_))
                  (_%__kont193036193037%_))
              (_%__kont193036193037%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193036193037%_))))
                                      (_%__kont193036193037%_))
                                  (_%__kont193036193037%_))
                              (_%__kont193036193037%_))))
                      (_%__kont193036193037%_))))
              (_%__kont193036193037%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193036193037%_))))
                                          (_%__kont193036193037%_))
                                      (_%__kont193036193037%_))
                                  (_%__kont193036193037%_))))
                          (_%__kont193036193037%_))))
                  (_%__kont193036193037%_))
              (_%__kont193036193037%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193036193037%_))
                                          (_%__kont193036193037%_))
                                      (_%__kont193036193037%_))))
                              (_%__kont193036193037%_))))
                      (_%__kont193036193037%_))
                  (_%__kont193036193037%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193036193037%_))
                                              (_%__kont193036193037%_))
                                          (_%__kont193036193037%_))))
                                  (_%__kont193036193037%_))))
                          (_%__kont193036193037%_))))
                  (_%__kont193036193037%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self191905%_ _%stx191906%_)
        (let* ((_%__stx193274193275%_ _%stx191906%_)
               (_%g191909191949%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193274193275%_)))))
          (let ((_%__kont193276193277%_
                 (lambda (_%L192055%_ _%L192056%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192056%_))
                               (cons _%L192055%_ '())))))
                (_%__kont193278193279%_
                 (lambda (_%L191978%_ _%L191979%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx193274193275%_))
                (let ((_%e191915191999%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx193274193275%_))))
                  (let ((_%tl191913192004%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191915191999%_)))
                        (_%hd191914192002%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191915191999%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl191913192004%_))
                        (let ((_%e191918192007%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191913192004%_))))
                          (let ((_%tl191916192012%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191918192007%_)))
                                (_%hd191917192010%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191918192007%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd191917192010%_))
                                (let ((_%e191921192015%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd191917192010%_))))
                                  (let ((_%tl191919192020%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191921192015%_)))
                                        (_%hd191920192018%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191921192015%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd191920192018%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd191920192018%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191919192020%_))
                                                (let ((_%e191924192023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191919192020%_))))
                                                  (let ((_%tl191922192028%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191924192023%_)))
                                                        (_%hd191923192026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191924192023%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191922192028%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191916192012%_))
                                                            (let ((_%e191927192031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191916192012%_))))
                      (let ((_%tl191925192036%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191927192031%_)))
                            (_%hd191926192034%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191927192031%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191926192034%_))
                            (let ((_%e191930192039%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191926192034%_))))
                              (let ((_%tl191928192044%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191930192039%_)))
                                    (_%hd191929192042%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191930192039%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191929192042%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191929192042%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191928192044%_))
                                            (let ((_%e191933192047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191928192044%_))))
                                              (let ((_%tl191931192052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191933192047%_)))
                                                    (_%hd191932192050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191933192047%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191931192052%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191925192036%_))
                                                        (_%__kont193276193277%_
                                                         _%hd191932192050%_
                                                         _%hd191923192026%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191909191949%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191925192036%_))
                                                        (_%__kont193278193279%_
                                                         _%hd191926192034%_
                                                         _%hd191917192010%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191909191949%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191925192036%_))
                                                (_%__kont193278193279%_
                                                 _%hd191926192034%_
                                                 _%hd191917192010%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191909191949%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191925192036%_))
                                            (_%__kont193278193279%_
                                             _%hd191926192034%_
                                             _%hd191917192010%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191909191949%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl191925192036%_))
                                        (_%__kont193278193279%_
                                         _%hd191926192034%_
                                         _%hd191917192010%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g191909191949%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191925192036%_))
                                (_%__kont193278193279%_
                                 _%hd191926192034%_
                                 _%hd191917192010%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g191909191949%_))))))
                    (let () (declare (not safe)) (_%g191909191949%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl191916192012%_))
                    (let ((_%e191944191970%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191916192012%_))))
                      (let ((_%tl191942191975%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191944191970%_)))
                            (_%hd191943191973%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191944191970%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl191942191975%_))
                            (_%__kont193278193279%_
                             _%hd191943191973%_
                             _%hd191917192010%_)
                            (let ()
                              (declare (not safe))
                              (_%g191909191949%_)))))
                    (let () (declare (not safe)) (_%g191909191949%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl191916192012%_))
                                                    (let ((_%e191944191970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl191916192012%_))))
                                                      (let ((_%tl191942191975%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e191944191970%_)))
                    (_%hd191943191973%_
                     (let () (declare (not safe)) (##car _%e191944191970%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl191942191975%_))
                    (_%__kont193278193279%_
                     _%hd191943191973%_
                     _%hd191917192010%_)
                    (let () (declare (not safe)) (_%g191909191949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191909191949%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191916192012%_))
                                                (let ((_%e191944191970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191916192012%_))))
                                                  (let ((_%tl191942191975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191944191970%_)))
                                                        (_%hd191943191973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191944191970%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191942191975%_))
                                                        (_%__kont193278193279%_
                                                         _%hd191943191973%_
                                                         _%hd191917192010%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191909191949%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191909191949%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191916192012%_))
                                            (let ((_%e191944191970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191916192012%_))))
                                              (let ((_%tl191942191975%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191944191970%_)))
                                                    (_%hd191943191973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191944191970%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191942191975%_))
                                                    (_%__kont193278193279%_
                                                     _%hd191943191973%_
                                                     _%hd191917192010%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191909191949%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g191909191949%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl191916192012%_))
                                    (let ((_%e191944191970%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl191916192012%_))))
                                      (let ((_%tl191942191975%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191944191970%_)))
                                            (_%hd191943191973%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191944191970%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191942191975%_))
                                            (_%__kont193278193279%_
                                             _%hd191943191973%_
                                             _%hd191917192010%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191909191949%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g191909191949%_))))))
                        (let () (declare (not safe)) (_%g191909191949%_)))))
                (let () (declare (not safe)) (_%g191909191949%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self191892%_)
        (let ((_%self191895%_ _%self191892%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191895%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191665%_)
        (let* ((_%self191668%_ _%self191665%_)
               (_%self191677191693%_ _%self191668%_)
               (_%E191679191697%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191677191693%_
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
               (_%K191680191712%_
                (lambda (_%methods191700%_
                         _%metaclass191701%_
                         _%system?191702%_
                         _%final?191703%_
                         _%struct?191704%_
                         _%constructor191705%_
                         _%fields191706%_
                         _%slots191707%_
                         _%precendence-list191708%_
                         _%super191709%_
                         _%id191710%_)
                  (cons '@class
                        (cons _%id191710%_
                              (cons _%super191709%_
                                    (cons _%precendence-list191708%_
                                          (cons _%slots191707%_
                                                (cons _%fields191706%_
                                                      (cons _%constructor191705%_
                                                            (cons _%struct?191704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?191703%_
                                (cons _%system?191702%_
                                      (cons _%metaclass191701%_
                                            (cons (if _%methods191700%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods191700%_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if '#t
              (let* ((_%e191681191715%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '1
                         '#f
                         '#f)))
                     (_%id191718%_ _%e191681191715%_)
                     (_%e191682191720%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '2
                         '#f
                         '#f)))
                     (_%super191723%_ _%e191682191720%_)
                     (_%e191683191725%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '3
                         '#f
                         '#f)))
                     (_%precendence-list191728%_ _%e191683191725%_)
                     (_%e191684191730%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '4
                         '#f
                         '#f)))
                     (_%slots191733%_ _%e191684191730%_)
                     (_%e191685191735%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '5
                         '#f
                         '#f)))
                     (_%fields191738%_ _%e191685191735%_)
                     (_%e191686191740%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '6
                         '#f
                         '#f)))
                     (_%constructor191743%_ _%e191686191740%_)
                     (_%e191687191745%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '7
                         '#f
                         '#f)))
                     (_%struct?191748%_ _%e191687191745%_)
                     (_%e191688191750%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '8
                         '#f
                         '#f)))
                     (_%final?191753%_ _%e191688191750%_)
                     (_%e191689191755%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '9
                         '#f
                         '#f)))
                     (_%system?191758%_ _%e191689191755%_)
                     (_%e191690191760%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '10
                         '#f
                         '#f)))
                     (_%metaclass191763%_ _%e191690191760%_)
                     (_%e191691191765%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191677191693%_
                         '11
                         '#f
                         '#f)))
                     (_%methods191768%_ _%e191691191765%_))
                (_%K191680191712%_
                 _%methods191768%_
                 _%metaclass191763%_
                 _%system?191758%_
                 _%final?191753%_
                 _%struct?191748%_
                 _%constructor191743%_
                 _%fields191738%_
                 _%slots191733%_
                 _%precendence-list191728%_
                 _%super191723%_
                 _%id191718%_))
              (_%E191679191697%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191530%_)
        (let ((_%self191533%_ _%self191530%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191533%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191395%_)
        (let ((_%self191398%_ _%self191395%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191398%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self191260%_)
        (let ((_%self191263%_ _%self191260%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191263%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191263%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191263%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self191125%_)
        (let ((_%self191128%_ _%self191125%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191128%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191128%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191128%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self190990%_)
        (let ((_%self190993%_ _%self190990%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190993%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190993%_
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
      (lambda (_%self190803%_)
        (let* ((_%self190806%_ _%self190803%_)
               (_%self190815190824%_ _%self190806%_)
               (_%E190817190828%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self190815190824%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K190818190847%_
                (lambda (_%dispatch190831%_
                         _%arity190832%_
                         _%signature190833%_)
                  (if _%signature190833%_
                      (let ((_%signature190835%_ _%signature190833%_))
                        (cons '@lambda
                              (cons _%arity190832%_
                                    (cons _%dispatch190831%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190835%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature190835%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature190835%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature190835%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature190835%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity190832%_
                                  (cons _%dispatch190831%_ '())))))))
          (if '#t
              (let* ((_%e190819190850%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190815190824%_
                         '1
                         '#f
                         '#f)))
                     (_%e190820190853%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190815190824%_
                         '2
                         '#f
                         '#f)))
                     (_%signature190856%_ _%e190820190853%_)
                     (_%e190821190858%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190815190824%_
                         '3
                         '#f
                         '#f)))
                     (_%arity190861%_ _%e190821190858%_)
                     (_%e190822190863%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190815190824%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch190866%_ _%e190822190863%_))
                (_%K190818190847%_
                 _%dispatch190866%_
                 _%arity190861%_
                 _%signature190856%_))
              (_%E190817190828%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190664%_)
        (let ((_%self190667%_ _%self190664%_))
          (letrec ((_%clause-e190677%_
                    (lambda (_%clause190679%_)
                      (cdr (let ((__method193362
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause190679%_
                                     'typedecl))))
                             (if __method193362
                                 (__method193362 _%clause190679%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause190679%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e190677%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self190667%_
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
      (lambda (_%self190529%_)
        (let ((_%self190532%_ _%self190529%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190532%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190532%_
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
      (lambda (_%self190394%_)
        (let ((_%self190397%_ _%self190394%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190397%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190397%_
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
      (lambda (_%self190259%_)
        (let ((_%self190262%_ _%self190259%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190262%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
