(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770342556)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp247325
                   (let ((__obj247319
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
                       (gxc#optimizer-info:::init! __obj247319))
                     __obj247319)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp247325)))))
    (define gxc#optimize!
      (lambda (_%ctx246927%_)
        (let ((__tmp247327
               (lambda ()
                 (let ((__tmp247329
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx246927%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx246927%_)
                          (let ((__tmp247331
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp247330
                                 (##structure-ref
                                  _%ctx246927%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp247331 __tmp247330 '#t))
                          (let ((_%code246931%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx246927%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx246927%_
                             _%code246931%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp247328
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp247329
                    gxc#current-compile-local-type
                    __tmp247328))))
              (__tmp247326 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp247327
           gxc#current-compile-mutators
           __tmp247326))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx246913%_)
        (letrec ((_%load-it!246915%_
                  (lambda (_%id246925%_)
                    (if (let ((__tmp247332
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp247332 _%id246925%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id246925%_)
                          (let ((__tmp247333
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp247333 _%id246925%_ '#t)))))))
          (let* ((_%modid246917%_
                  (##structure-ref
                   _%ctx246913%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str246919%_ (symbol->string _%modid246917%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str246919%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str246919%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!246915%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!246915%_
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
      (lambda (_%ctx246850%_)
        (letrec* ((_%deps246852%_
                   (let* ((_%imports246903%_
                           (##structure-ref
                            _%ctx246850%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e246905%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx246850%_))))
                     (if _%$e246905%_
                         ((lambda (_%g246907246909%_)
                            (cons _%g246907246909%_ _%imports246903%_))
                          _%$e246905%_)
                         _%imports246903%_))))
          (let _%lp246854%_ ((_%rest246856%_ _%deps246852%_))
            (let* ((_%rest246857246865%_ _%rest246856%_)
                   (_%else246859246873%_ (lambda () '#!void))
                   (_%K246861246891%_
                    (lambda (_%rest246876%_ _%hd246877%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd246877%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp247335
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp247334
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd246877%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp247335 __tmp247334))
                                '#!void
                                (begin
                                  (let ((_%$e246880%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd246877%_))))
                                    (if _%$e246880%_
                                        ((lambda (_%pre246883%_)
                                           (_%lp246854%_
                                            (cons _%pre246883%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd246877%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e246880%_)
                                        (_%lp246854%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd246877%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd246877%_)))
                            (_%lp246854%_ _%rest246876%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd246877%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp247337
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp247336
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd246877%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp247337 __tmp247336))
                                    '#!void
                                    (begin
                                      (_%lp246854%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd246877%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd246877%_)))
                                (_%lp246854%_ _%rest246876%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd246877%_
                                     'gx#module-import::t))
                                  (_%lp246854%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd246877%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest246876%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd246877%_
                                         'gx#module-export::t))
                                      (_%lp246854%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd246877%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest246876%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd246877%_
                                             'gx#import-set::t))
                                          (_%lp246854%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd246877%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest246876%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd246877%_))))))))))
              (if (pair? _%rest246857246865%_)
                  (let ((_%hd246862246894%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest246857246865%_)))
                        (_%tl246863246896%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest246857246865%_))))
                    (let* ((_%hd246899%_ _%hd246862246894%_)
                           (_%rest246901%_ _%tl246863246896%_))
                      (_%K246861246891%_ _%rest246901%_ _%hd246899%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx246830%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx246830%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx246830%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht246832%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id246834%_
                    (##structure-ref
                     _%ctx246830%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod246836%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht246832%_ _%id246834%_)))
                   (_%$e246839%_ _%mod246836%_))
              (if _%$e246839%_
                  _%$e246839%_
                  (let* ((_%mod246842%_
                          (gxc#optimizer-import-ssxi _%ctx246830%_))
                         (_%val246847%_
                          (let ((_%$e246844%_ _%mod246842%_))
                            (if _%$e246844%_ _%$e246844%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht246832%_ _%id246834%_ _%val246847%_))
                    _%val246847%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx246828%_)
        (if (##structure-ref _%ctx246828%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx246828%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id246806%_)
        (letrec ((_%catch-e246808%_
                  (lambda (_%exn246826%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn246826%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn246826%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id246806%_))))
                    '#f))
                 (_%import-e246809%_
                  (lambda ()
                    (let* ((_%str-id246812%_
                            (let ((__tmp247338
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id246806%_))))
                              (declare (not safe))
                              (##string-append __tmp247338 '".ssxi")))
                           (_%artefact-path246819%_
                            (let ((_%odir246813246815%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir246813246815%_
                                  (let ((_%odir246817%_ _%odir246813246815%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id246812%_
                                        '".ss"))
                                     _%odir246817%_))
                                  '#f)))
                           (_%library-path246821%_
                            (let ((__tmp247339
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id246812%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp247339)))
                           (_%ssxi-path246823%_
                            (if (and _%artefact-path246819%_
                                     (file-exists? _%artefact-path246819%_))
                                _%artefact-path246819%_
                                _%library-path246821%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path246823%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path246823%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e246808%_ _%import-e246809%_)))))
    (define gxc#optimize-source
      (lambda (_%stx246791%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx246791%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx246791%_))
        (let* ((_%stx246793%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx246791%_)))
               (_%stx246795%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx246793%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx246795%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx246795%_))
          (let _%fixpoint246798%_ ((_%current246800%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx246795%_))
            (let ((_%refined246802%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current246800%_ _%refined246802%_)
                  '#!void
                  (_%fixpoint246798%_ _%refined246802%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx246795%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx246795%_))
          (let ((_%stx246804%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx246795%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx246804%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp247341 (list gxc#::generate-runtime-empty::t))
            (__tmp247340 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp247341
         '()
         __tmp247340
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args246788%_
        (apply make-instance gxc#::generate-ssxi::t _%$args246788%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp247342
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
        (__make-atomic-promise __tmp247342)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx246780%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self246783%_
                (let ((__obj247321
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj247321))
               (__tmp247343
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self246783%_ _%stx246780%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp247343
           gxc#current-compile-method
           _%self246783%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self246740%_ _%stx246741%_)
        (let* ((_%g246743246753%_
                (lambda (_%g246744246750%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g246744246750%_))))
               (_%g246742246777%_
                (lambda (_%g246744246756%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g246744246756%_))
                      (let ((_%e246746246758%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g246744246756%_))))
                        (let ((_%hd246747246761%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246746246758%_)))
                              (_%tl246748246763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246746246758%_))))
                          ((lambda (_%g246745246766%_)
                             (let ((__tmp247346
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self246740%_
                                         _%stx246741%_))))
                                   (__tmp247344
                                    (let ((__tmp247345
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp247345 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp247346
                                gx#current-expander-phi
                                __tmp247344)))
                           _%tl246748246763%_)))
                      (_%g246743246753%_ _%g246744246756%_)))))
          (_%g246742246777%_ _%stx246741%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self246679%_ _%stx246680%_)
        (let* ((_%g246682246696%_
                (lambda (_%g246683246693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g246683246693%_))))
               (_%g246681246737%_
                (lambda (_%g246683246699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g246683246699%_))
                      (let ((_%e246686246701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g246683246699%_))))
                        (let ((_%hd246687246704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246686246701%_)))
                              (_%tl246688246706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246686246701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl246688246706%_))
                              (let ((_%e246689246709%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl246688246706%_))))
                                (let ((_%hd246690246712%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e246689246709%_)))
                                      (_%tl246691246714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e246689246709%_))))
                                  ((lambda (_%g246684246717%_
                                            _%g246685246718%_)
                                     (let* ((_%ctx246731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g246685246718%_)))
                                            (_%code246733%_
                                             (##structure-ref
                                              _%ctx246731%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp247347
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self246679%_
                                                  _%code246733%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp247347
                                        gx#current-expander-context
                                        _%ctx246731%_)))
                                   _%tl246691246714%_
                                   _%hd246690246712%_)))
                              (_%g246682246696%_ _%g246683246699%_))))
                      (_%g246682246696%_ _%g246683246699%_)))))
          (_%g246681246737%_ _%stx246680%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self246486%_ _%stx246487%_)
        (letrec ((_%generate-e246489%_
                  (lambda (_%id246664%_)
                    (let* ((_%sym246666%_
                            (if (let ((__tmp247348
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp247348))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id246664%_))
                                '#f))
                           (_%$e246668%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym246666%_))))
                      (if _%$e246668%_
                          ((lambda (_%klass246671%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym246666%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym246666%_
                                                     (cons (let ((__method247322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass246671%_ 'typedecl))))
                     (if __method247322
                         (let ()
                           (declare (not safe))
                           (__method247322 _%klass246671%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass246671%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym246666%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym246666%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e246668%_)
                          (let ((_%$e246673%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym246666%_))))
                            (if _%$e246673%_
                                ((lambda (_%type246676%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym246666%_
                                      '" "
                                      _%type246676%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type246676%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym246666%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym246666%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type246676%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym246666%_
                                                   (cons (let ((__method247323
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type246676%_ 'typedecl))))
                   (if __method247323
                       (let ()
                         (declare (not safe))
                         (__method247323 _%type246676%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type246676%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e246673%_)
                                '(begin))))))))
          (let* ((_%__stx246934246935%_ _%stx246487%_)
                 (_%g246492246530%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx246934246935%_)))))
            (let ((_%__kont246936246937%_
                   (lambda (_%g246494246646%_)
                     (_%generate-e246489%_ _%g246494246646%_)))
                  (_%__kont246938246939%_
                   (lambda (_%g246507246581%_)
                     (let ((_%types246607%_
                            (map _%generate-e246489%_
                                 (let ((__tmp247349
                                        (lambda (_%g246599246602%_
                                                 _%g246600246604%_)
                                          (cons _%g246599246602%_
                                                _%g246600246604%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp247349
                                    '()
                                    _%g246507246581%_)))))
                       (cons 'begin _%types246607%_)))))
              (let ((_%__match246989246990%_
                     (lambda (_%e246508246535%_
                              _%hd246509246538%_
                              _%tl246510246540%_
                              _%e246511246543%_
                              _%hd246512246546%_
                              _%tl246513246548%_
                              _%__splice246940246941%_
                              _%target246514246551%_
                              _%tl246516246553%_)
                       (letrec ((_%loop246517246556%_
                                 (lambda (_%hd246515246559%_
                                          _%id246521246561%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd246515246559%_))
                                       (let ((_%e246518246563%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd246515246559%_))))
                                         (let ((_%lp-tl246520246568%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e246518246563%_)))
                                               (_%lp-hd246519246566%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e246518246563%_))))
                                           (_%loop246517246556%_
                                            _%lp-tl246520246568%_
                                            (cons _%lp-hd246519246566%_
                                                  _%id246521246561%_))))
                                       (let ((_%id246522246571%_
                                              (reverse _%id246521246561%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl246513246548%_))
                                             (let ((_%e246523246573%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl246513246548%_))))
                                               (let ((_%tl246525246578%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e246523246573%_)))
                                                     (_%hd246524246576%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e246523246573%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl246525246578%_))
                                                     (_%__kont246938246939%_
                                                      _%id246522246571%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g246492246530%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g246492246530%_))))))))
                         (_%loop246517246556%_ _%target246514246551%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx246934246935%_))
                    (let ((_%e246495246614%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx246934246935%_))))
                      (let ((_%tl246497246619%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e246495246614%_)))
                            (_%hd246496246617%_
                             (let ()
                               (declare (not safe))
                               (##car _%e246495246614%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl246497246619%_))
                            (let ((_%e246498246622%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl246497246619%_))))
                              (let ((_%tl246500246627%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e246498246622%_)))
                                    (_%hd246499246625%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e246498246622%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd246499246625%_))
                                    (let ((_%e246501246630%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd246499246625%_))))
                                      (let ((_%tl246503246635%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e246501246630%_)))
                                            (_%hd246502246633%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e246501246630%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl246503246635%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl246500246627%_))
                                                (let ((_%e246504246638%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl246500246627%_))))
                                                  (let ((_%tl246506246643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e246504246638%_)))
                                                        (_%hd246505246641%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e246504246638%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl246506246643%_))
                                                        (_%__kont246936246937%_
                                                         _%hd246502246633%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd246499246625%_))
                                                            (let ((_%__splice246940246941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd246499246625%_
                              '0))))
                      (let ((_%tl246516246553%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice246940246941%_ '1)))
                            (_%target246514246551%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice246940246941%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl246516246553%_))
                            (_%__match246989246990%_
                             _%e246495246614%_
                             _%hd246496246617%_
                             _%tl246497246619%_
                             _%e246498246622%_
                             _%hd246499246625%_
                             _%tl246500246627%_
                             _%__splice246940246941%_
                             _%target246514246551%_
                             _%tl246516246553%_)
                            (let ()
                              (declare (not safe))
                              (_%g246492246530%_)))))
                    (let () (declare (not safe)) (_%g246492246530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd246499246625%_))
                                                    (let ((_%__splice246940246941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd246499246625%_
                                                              '0))))
                                                      (let ((_%tl246516246553%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice246940246941%_ '1)))
                    (_%target246514246551%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice246940246941%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl246516246553%_))
                    (_%__match246989246990%_
                     _%e246495246614%_
                     _%hd246496246617%_
                     _%tl246497246619%_
                     _%e246498246622%_
                     _%hd246499246625%_
                     _%tl246500246627%_
                     _%__splice246940246941%_
                     _%target246514246551%_
                     _%tl246516246553%_)
                    (let () (declare (not safe)) (_%g246492246530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g246492246530%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd246499246625%_))
                                                (let ((_%__splice246940246941%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd246499246625%_
                                                          '0))))
                                                  (let ((_%tl246516246553%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice246940246941%_
                                                            '1)))
                                                        (_%target246514246551%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice246940246941%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl246516246553%_))
                                                        (_%__match246989246990%_
                                                         _%e246495246614%_
                                                         _%hd246496246617%_
                                                         _%tl246497246619%_
                                                         _%e246498246622%_
                                                         _%hd246499246625%_
                                                         _%tl246500246627%_
                                                         _%__splice246940246941%_
                                                         _%target246514246551%_
                                                         _%tl246516246553%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g246492246530%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g246492246530%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd246499246625%_))
                                        (let ((_%__splice246940246941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd246499246625%_
                                                  '0))))
                                          (let ((_%tl246516246553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice246940246941%_
                                                    '1)))
                                                (_%target246514246551%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice246940246941%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl246516246553%_))
                                                (_%__match246989246990%_
                                                 _%e246495246614%_
                                                 _%hd246496246617%_
                                                 _%tl246497246619%_
                                                 _%e246498246622%_
                                                 _%hd246499246625%_
                                                 _%tl246500246627%_
                                                 _%__splice246940246941%_
                                                 _%target246514246551%_
                                                 _%tl246516246553%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g246492246530%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g246492246530%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g246492246530%_)))))
                    (let () (declare (not safe)) (_%g246492246530%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self246039%_ _%stx246040%_)
        (let* ((_%__stx246992246993%_ _%stx246040%_)
               (_%g246044246146%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx246992246993%_)))))
          (let ((_%__kont246994246995%_
                 (lambda (_%g246046246436%_
                          _%g246047246437%_
                          _%g246048246438%_
                          _%g246049246439%_
                          _%g246050246440%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g246049246439%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g246048246438%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g246047246437%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g246046246436%_))
                                                 '())))))))
                (_%__kont246996246997%_
                 (lambda (_%g246099246262%_
                          _%g246100246263%_
                          _%g246101246264%_
                          _%g246102246265%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g246101246264%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g246100246263%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g246099246262%_))
                                           (cons '#f '())))))))
                (_%__kont246998246999%_ (lambda () '(begin))))
            (let ((_%__match247127247128%_
                   (lambda (_%e246051246308%_
                            _%hd246052246311%_
                            _%tl246053246313%_
                            _%e246054246316%_
                            _%hd246055246319%_
                            _%tl246056246321%_
                            _%e246057246324%_
                            _%hd246058246327%_
                            _%tl246059246329%_
                            _%e246060246332%_
                            _%hd246061246335%_
                            _%tl246062246337%_
                            _%e246063246340%_
                            _%hd246064246343%_
                            _%tl246065246345%_
                            _%e246066246348%_
                            _%hd246067246351%_
                            _%tl246068246353%_
                            _%e246069246356%_
                            _%hd246070246359%_
                            _%tl246071246361%_
                            _%e246072246364%_
                            _%hd246073246367%_
                            _%tl246074246369%_
                            _%e246075246372%_
                            _%hd246076246375%_
                            _%tl246077246377%_
                            _%e246078246380%_
                            _%hd246079246383%_
                            _%tl246080246385%_
                            _%e246081246388%_
                            _%hd246082246391%_
                            _%tl246083246393%_
                            _%e246084246396%_
                            _%hd246085246399%_
                            _%tl246086246401%_
                            _%e246087246404%_
                            _%hd246088246407%_
                            _%tl246089246409%_
                            _%e246090246412%_
                            _%hd246091246415%_
                            _%tl246092246417%_
                            _%e246093246420%_
                            _%hd246094246423%_
                            _%tl246095246425%_
                            _%e246096246428%_
                            _%hd246097246431%_
                            _%tl246098246433%_)
                     (let ((_%g246046246436%_ _%hd246097246431%_)
                           (_%g246047246437%_ _%hd246088246407%_)
                           (_%g246048246438%_ _%hd246079246383%_)
                           (_%g246049246439%_ _%hd246070246359%_)
                           (_%g246050246440%_ _%hd246061246335%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g246050246440%_
                              'bind-method!))
                           (_%__kont246994246995%_
                            _%g246046246436%_
                            _%g246047246437%_
                            _%g246048246438%_
                            _%g246049246439%_
                            _%g246050246440%_)
                           (_%__kont246998246999%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx246992246993%_))
                  (let ((_%e246051246308%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx246992246993%_))))
                    (let ((_%tl246053246313%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246051246308%_)))
                          (_%hd246052246311%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246051246308%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246053246313%_))
                          (let ((_%e246054246316%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246053246313%_))))
                            (let ((_%tl246056246321%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246054246316%_)))
                                  (_%hd246055246319%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246054246316%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd246055246319%_))
                                  (let ((_%e246057246324%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd246055246319%_))))
                                    (let ((_%tl246059246329%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246057246324%_)))
                                          (_%hd246058246327%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246057246324%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd246058246327%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd246058246327%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246059246329%_))
                                                  (let ((_%e246060246332%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246059246329%_))))
                                                    (let ((_%tl246062246337%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246060246332%_)))
                                                          (_%hd246061246335%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246060246332%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246062246337%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl246056246321%_))
                      (let ((_%e246063246340%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246056246321%_))))
                        (let ((_%tl246065246345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246063246340%_)))
                              (_%hd246064246343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246063246340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd246064246343%_))
                              (let ((_%e246066246348%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd246064246343%_))))
                                (let ((_%tl246068246353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e246066246348%_)))
                                      (_%hd246067246351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e246066246348%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd246067246351%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd246067246351%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246068246353%_))
                                              (let ((_%e246069246356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246068246353%_))))
                                                (let ((_%tl246071246361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246069246356%_)))
                                                      (_%hd246070246359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246069246356%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246071246361%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246065246345%_))
                                                          (let ((_%e246072246364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246065246345%_))))
                    (let ((_%tl246074246369%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246072246364%_)))
                          (_%hd246073246367%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246072246364%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd246073246367%_))
                          (let ((_%e246075246372%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd246073246367%_))))
                            (let ((_%tl246077246377%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246075246372%_)))
                                  (_%hd246076246375%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246075246372%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd246076246375%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd246076246375%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246077246377%_))
                                          (let ((_%e246078246380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246077246377%_))))
                                            (let ((_%tl246080246385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246078246380%_)))
                                                  (_%hd246079246383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246078246380%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl246080246385%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246074246369%_))
                                                      (let ((_%e246081246388%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246074246369%_))))
                (let ((_%tl246083246393%_
                       (let () (declare (not safe)) (##cdr _%e246081246388%_)))
                      (_%hd246082246391%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246081246388%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd246082246391%_))
                      (let ((_%e246084246396%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd246082246391%_))))
                        (let ((_%tl246086246401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246084246396%_)))
                              (_%hd246085246399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246084246396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd246085246399%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd246085246399%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246086246401%_))
                                      (let ((_%e246087246404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246086246401%_))))
                                        (let ((_%tl246089246409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246087246404%_)))
                                              (_%hd246088246407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246087246404%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246089246409%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246083246393%_))
                                                  (let ((_%e246090246412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246083246393%_))))
                                                    (let ((_%tl246092246417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246090246412%_)))
                                                          (_%hd246091246415%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246090246412%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd246091246415%_))
                                                          (let ((_%e246093246420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd246091246415%_))))
                    (let ((_%tl246095246425%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246093246420%_)))
                          (_%hd246094246423%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246093246420%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd246094246423%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd246094246423%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246095246425%_))
                                  (let ((_%e246096246428%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246095246425%_))))
                                    (let ((_%tl246098246433%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246096246428%_)))
                                          (_%hd246097246431%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246096246428%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246098246433%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246092246417%_))
                                              (_%__match247127247128%_
                                               _%e246051246308%_
                                               _%hd246052246311%_
                                               _%tl246053246313%_
                                               _%e246054246316%_
                                               _%hd246055246319%_
                                               _%tl246056246321%_
                                               _%e246057246324%_
                                               _%hd246058246327%_
                                               _%tl246059246329%_
                                               _%e246060246332%_
                                               _%hd246061246335%_
                                               _%tl246062246337%_
                                               _%e246063246340%_
                                               _%hd246064246343%_
                                               _%tl246065246345%_
                                               _%e246066246348%_
                                               _%hd246067246351%_
                                               _%tl246068246353%_
                                               _%e246069246356%_
                                               _%hd246070246359%_
                                               _%tl246071246361%_
                                               _%e246072246364%_
                                               _%hd246073246367%_
                                               _%tl246074246369%_
                                               _%e246075246372%_
                                               _%hd246076246375%_
                                               _%tl246077246377%_
                                               _%e246078246380%_
                                               _%hd246079246383%_
                                               _%tl246080246385%_
                                               _%e246081246388%_
                                               _%hd246082246391%_
                                               _%tl246083246393%_
                                               _%e246084246396%_
                                               _%hd246085246399%_
                                               _%tl246086246401%_
                                               _%e246087246404%_
                                               _%hd246088246407%_
                                               _%tl246089246409%_
                                               _%e246090246412%_
                                               _%hd246091246415%_
                                               _%tl246092246417%_
                                               _%e246093246420%_
                                               _%hd246094246423%_
                                               _%tl246095246425%_
                                               _%e246096246428%_
                                               _%hd246097246431%_
                                               _%tl246098246433%_)
                                              (_%__kont246998246999%_))
                                          (_%__kont246998246999%_))))
                                  (_%__kont246998246999%_))
                              (_%__kont246998246999%_))
                          (_%__kont246998246999%_))))
                  (_%__kont246998246999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246083246393%_))
                                                      (if (let ((__tmp247350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp247350 'bind-method!))
                  (let ((_%g246099246262%_ _%hd246088246407%_)
                        (_%g246100246263%_ _%hd246079246383%_)
                        (_%g246101246264%_ _%hd246070246359%_)
                        (_%g246102246265%_ _%hd246061246335%_))
                    (_%__kont246996246997%_
                     _%g246099246262%_
                     _%g246100246263%_
                     _%g246101246264%_
                     _%g246102246265%_))
                  (_%__kont246998246999%_))
              (_%__kont246998246999%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont246998246999%_))))
                                      (_%__kont246998246999%_))
                                  (_%__kont246998246999%_))
                              (_%__kont246998246999%_))))
                      (_%__kont246998246999%_))))
              (_%__kont246998246999%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont246998246999%_))))
                                          (_%__kont246998246999%_))
                                      (_%__kont246998246999%_))
                                  (_%__kont246998246999%_))))
                          (_%__kont246998246999%_))))
                  (_%__kont246998246999%_))
              (_%__kont246998246999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont246998246999%_))
                                          (_%__kont246998246999%_))
                                      (_%__kont246998246999%_))))
                              (_%__kont246998246999%_))))
                      (_%__kont246998246999%_))
                  (_%__kont246998246999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont246998246999%_))
                                              (_%__kont246998246999%_))
                                          (_%__kont246998246999%_))))
                                  (_%__kont246998246999%_))))
                          (_%__kont246998246999%_))))
                  (_%__kont246998246999%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self245863%_ _%stx245864%_)
        (let* ((_%__stx247236247237%_ _%stx245864%_)
               (_%g245867245907%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx247236247237%_)))))
          (let ((_%__kont247238247239%_
                 (lambda (_%g245869246013%_ _%g245870246014%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g245870246014%_))
                               (cons _%g245869246013%_ '())))))
                (_%__kont247240247241%_
                 (lambda (_%g245892245936%_ _%g245893245937%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx247236247237%_))
                (let ((_%e245871245957%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx247236247237%_))))
                  (let ((_%tl245873245962%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e245871245957%_)))
                        (_%hd245872245960%_
                         (let ()
                           (declare (not safe))
                           (##car _%e245871245957%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl245873245962%_))
                        (let ((_%e245874245965%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl245873245962%_))))
                          (let ((_%tl245876245970%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e245874245965%_)))
                                (_%hd245875245968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e245874245965%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd245875245968%_))
                                (let ((_%e245877245973%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd245875245968%_))))
                                  (let ((_%tl245879245978%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e245877245973%_)))
                                        (_%hd245878245976%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e245877245973%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd245878245976%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd245878245976%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl245879245978%_))
                                                (let ((_%e245880245981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl245879245978%_))))
                                                  (let ((_%tl245882245986%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e245880245981%_)))
                                                        (_%hd245881245984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e245880245981%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl245882245986%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl245876245970%_))
                                                            (let ((_%e245883245989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl245876245970%_))))
                      (let ((_%tl245885245994%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e245883245989%_)))
                            (_%hd245884245992%_
                             (let ()
                               (declare (not safe))
                               (##car _%e245883245989%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd245884245992%_))
                            (let ((_%e245886245997%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd245884245992%_))))
                              (let ((_%tl245888246002%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e245886245997%_)))
                                    (_%hd245887246000%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e245886245997%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd245887246000%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd245887246000%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl245888246002%_))
                                            (let ((_%e245889246005%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl245888246002%_))))
                                              (let ((_%tl245891246010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e245889246005%_)))
                                                    (_%hd245890246008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e245889246005%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl245891246010%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl245885245994%_))
                                                        (_%__kont247238247239%_
                                                         _%hd245890246008%_
                                                         _%hd245881245984%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g245867245907%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl245885245994%_))
                                                        (_%__kont247240247241%_
                                                         _%hd245884245992%_
                                                         _%hd245875245968%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g245867245907%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl245885245994%_))
                                                (_%__kont247240247241%_
                                                 _%hd245884245992%_
                                                 _%hd245875245968%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g245867245907%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl245885245994%_))
                                            (_%__kont247240247241%_
                                             _%hd245884245992%_
                                             _%hd245875245968%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g245867245907%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl245885245994%_))
                                        (_%__kont247240247241%_
                                         _%hd245884245992%_
                                         _%hd245875245968%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g245867245907%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl245885245994%_))
                                (_%__kont247240247241%_
                                 _%hd245884245992%_
                                 _%hd245875245968%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g245867245907%_))))))
                    (let () (declare (not safe)) (_%g245867245907%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl245876245970%_))
                    (let ((_%e245900245928%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl245876245970%_))))
                      (let ((_%tl245902245933%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e245900245928%_)))
                            (_%hd245901245931%_
                             (let ()
                               (declare (not safe))
                               (##car _%e245900245928%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl245902245933%_))
                            (_%__kont247240247241%_
                             _%hd245901245931%_
                             _%hd245875245968%_)
                            (let ()
                              (declare (not safe))
                              (_%g245867245907%_)))))
                    (let () (declare (not safe)) (_%g245867245907%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl245876245970%_))
                                                    (let ((_%e245900245928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl245876245970%_))))
                                                      (let ((_%tl245902245933%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e245900245928%_)))
                    (_%hd245901245931%_
                     (let () (declare (not safe)) (##car _%e245900245928%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl245902245933%_))
                    (_%__kont247240247241%_
                     _%hd245901245931%_
                     _%hd245875245968%_)
                    (let () (declare (not safe)) (_%g245867245907%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g245867245907%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl245876245970%_))
                                                (let ((_%e245900245928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl245876245970%_))))
                                                  (let ((_%tl245902245933%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e245900245928%_)))
                                                        (_%hd245901245931%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e245900245928%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl245902245933%_))
                                                        (_%__kont247240247241%_
                                                         _%hd245901245931%_
                                                         _%hd245875245968%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g245867245907%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g245867245907%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl245876245970%_))
                                            (let ((_%e245900245928%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl245876245970%_))))
                                              (let ((_%tl245902245933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e245900245928%_)))
                                                    (_%hd245901245931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e245900245928%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl245902245933%_))
                                                    (_%__kont247240247241%_
                                                     _%hd245901245931%_
                                                     _%hd245875245968%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g245867245907%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g245867245907%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl245876245970%_))
                                    (let ((_%e245900245928%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl245876245970%_))))
                                      (let ((_%tl245902245933%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e245900245928%_)))
                                            (_%hd245901245931%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e245900245928%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl245902245933%_))
                                            (_%__kont247240247241%_
                                             _%hd245901245931%_
                                             _%hd245875245968%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g245867245907%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g245867245907%_))))))
                        (let () (declare (not safe)) (_%g245867245907%_)))))
                (let () (declare (not safe)) (_%g245867245907%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self245850%_)
        (let ((_%self245853%_ _%self245850%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self245853%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self245624%_)
        (let* ((_%self245627%_ _%self245624%_)
               (_%self245636245652%_ _%self245627%_)
               (_%E245638245655%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self245636245652%_
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
               (_%K245639245670%_
                (lambda (_%methods245658%_
                         _%metaclass245659%_
                         _%system?245660%_
                         _%final?245661%_
                         _%struct?245662%_
                         _%constructor245663%_
                         _%fields245664%_
                         _%slots245665%_
                         _%precendence-list245666%_
                         _%super245667%_
                         _%id245668%_)
                  (cons '@class
                        (cons _%id245668%_
                              (cons _%super245667%_
                                    (cons _%precendence-list245666%_
                                          (cons _%slots245665%_
                                                (cons _%fields245664%_
                                                      (cons _%constructor245663%_
                                                            (cons _%struct?245662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?245661%_
                                (cons _%system?245660%_
                                      (cons _%metaclass245659%_
                                            (cons (if _%methods245658%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods245658%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e245640245673%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self245636245652%_ '1 '#f '#f)))
               (_%id245676%_ _%e245640245673%_)
               (_%e245641245678%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self245636245652%_ '2 '#f '#f)))
               (_%super245681%_ _%e245641245678%_)
               (_%e245642245683%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self245636245652%_ '3 '#f '#f)))
               (_%precendence-list245686%_ _%e245642245683%_)
               (_%e245643245688%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self245636245652%_ '4 '#f '#f)))
               (_%slots245691%_ _%e245643245688%_)
               (_%e245644245693%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self245636245652%_ '5 '#f '#f)))
               (_%fields245696%_ _%e245644245693%_)
               (_%e245645245698%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self245636245652%_ '6 '#f '#f)))
               (_%constructor245701%_ _%e245645245698%_)
               (_%e245646245703%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self245636245652%_ '7 '#f '#f)))
               (_%struct?245706%_ _%e245646245703%_)
               (_%e245647245708%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self245636245652%_ '8 '#f '#f)))
               (_%final?245711%_ _%e245647245708%_)
               (_%e245648245713%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self245636245652%_ '9 '#f '#f)))
               (_%system?245716%_ _%e245648245713%_)
               (_%e245649245718%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self245636245652%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass245721%_ _%e245649245718%_)
               (_%e245650245723%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self245636245652%_
                   '11
                   '#f
                   '#f)))
               (_%methods245726%_ _%e245650245723%_))
          (_%K245639245670%_
           _%methods245726%_
           _%metaclass245721%_
           _%system?245716%_
           _%final?245711%_
           _%struct?245706%_
           _%constructor245701%_
           _%fields245696%_
           _%slots245691%_
           _%precendence-list245686%_
           _%super245681%_
           _%id245676%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self245489%_)
        (let ((_%self245492%_ _%self245489%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self245492%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self245354%_)
        (let ((_%self245357%_ _%self245354%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self245357%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self245219%_)
        (let ((_%self245222%_ _%self245219%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self245222%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self245222%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self245222%_
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
      (lambda (_%self245084%_)
        (let ((_%self245087%_ _%self245084%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self245087%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self245087%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self245087%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self244949%_)
        (let ((_%self244952%_ _%self244949%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self244952%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self244952%_
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
      (lambda (_%self244763%_)
        (let* ((_%self244766%_ _%self244763%_)
               (_%self244775244784%_ _%self244766%_)
               (_%E244777244787%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self244775244784%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K244778244806%_
                (lambda (_%dispatch244790%_
                         _%arity244791%_
                         _%signature244792%_)
                  (if _%signature244792%_
                      (let ((_%signature244794%_ _%signature244792%_))
                        (cons '@lambda
                              (cons _%arity244791%_
                                    (cons _%dispatch244790%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature244794%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature244794%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature244794%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature244794%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature244794%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity244791%_
                                  (cons _%dispatch244790%_ '()))))))
               (_%e244779244809%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self244775244784%_ '1 '#f '#f)))
               (_%e244780244812%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self244775244784%_ '2 '#f '#f)))
               (_%signature244815%_ _%e244780244812%_)
               (_%e244781244817%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self244775244784%_ '3 '#f '#f)))
               (_%arity244820%_ _%e244781244817%_)
               (_%e244782244822%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self244775244784%_ '4 '#f '#f)))
               (_%dispatch244825%_ _%e244782244822%_))
          (_%K244778244806%_
           _%dispatch244825%_
           _%arity244820%_
           _%signature244815%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self244623%_)
        (let ((_%self244626%_ _%self244623%_))
          (letrec ((_%clause-e244637%_
                    (lambda (_%clause244639%_)
                      (cdr (let ((__method247324
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause244639%_
                                     'typedecl))))
                             (if __method247324
                                 (let ()
                                   (declare (not safe))
                                   (__method247324 _%clause244639%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause244639%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e244637%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self244626%_
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
      (lambda (_%self244488%_)
        (let ((_%self244491%_ _%self244488%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self244491%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self244491%_
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
      (lambda (_%self244353%_)
        (let ((_%self244356%_ _%self244353%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self244356%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self244356%_
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
      (lambda (_%self244218%_)
        (let ((_%self244221%_ _%self244218%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self244221%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
