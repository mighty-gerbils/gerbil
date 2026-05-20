(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1779274781)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp259335
                   (let ((__obj259329
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
                       (gxc#optimizer-info:::init! __obj259329))
                     __obj259329)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp259335)))))
    (define gxc#optimize!
      (lambda (_%ctx258937%_)
        (let ((__tmp259337
               (lambda ()
                 (let ((__tmp259339
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx258937%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx258937%_)
                          (let ((__tmp259341
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp259340
                                 (##structure-ref
                                  _%ctx258937%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp259341 __tmp259340 '#t))
                          (let ((_%code258941%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx258937%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx258937%_
                             _%code258941%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp259338
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp259339
                    gxc#current-compile-local-type
                    __tmp259338))))
              (__tmp259336 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp259337
           gxc#current-compile-mutators
           __tmp259336))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx258923%_)
        (letrec ((_%load-it!258925%_
                  (lambda (_%id258935%_)
                    (if (let ((__tmp259342
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp259342 _%id258935%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id258935%_)
                          (let ((__tmp259343
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp259343 _%id258935%_ '#t)))))))
          (let* ((_%modid258927%_
                  (##structure-ref
                   _%ctx258923%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str258929%_ (symbol->string _%modid258927%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str258929%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str258929%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!258925%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!258925%_
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
      (lambda (_%ctx258860%_)
        (letrec* ((_%deps258862%_
                   (let* ((_%imports258913%_
                           (##structure-ref
                            _%ctx258860%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e258915%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx258860%_))))
                     (if _%$e258915%_
                         ((lambda (_%g258917258919%_)
                            (cons _%g258917258919%_ _%imports258913%_))
                          _%$e258915%_)
                         _%imports258913%_))))
          (let _%lp258864%_ ((_%rest258866%_ _%deps258862%_))
            (let* ((_%rest258867258875%_ _%rest258866%_)
                   (_%else258869258883%_ (lambda () '#!void))
                   (_%K258871258901%_
                    (lambda (_%rest258886%_ _%hd258887%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd258887%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp259345
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp259344
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd258887%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp259345 __tmp259344))
                                '#!void
                                (begin
                                  (let ((_%$e258890%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd258887%_))))
                                    (if _%$e258890%_
                                        ((lambda (_%pre258893%_)
                                           (_%lp258864%_
                                            (cons _%pre258893%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd258887%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e258890%_)
                                        (_%lp258864%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd258887%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd258887%_)))
                            (_%lp258864%_ _%rest258886%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd258887%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp259347
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp259346
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd258887%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp259347 __tmp259346))
                                    '#!void
                                    (begin
                                      (_%lp258864%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd258887%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd258887%_)))
                                (_%lp258864%_ _%rest258886%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd258887%_
                                     'gx#module-import::t))
                                  (_%lp258864%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd258887%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest258886%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd258887%_
                                         'gx#module-export::t))
                                      (_%lp258864%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd258887%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest258886%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd258887%_
                                             'gx#import-set::t))
                                          (_%lp258864%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd258887%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest258886%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd258887%_))))))))))
              (if (pair? _%rest258867258875%_)
                  (let ((_%hd258872258904%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258867258875%_)))
                        (_%tl258873258906%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258867258875%_))))
                    (let* ((_%hd258909%_ _%hd258872258904%_)
                           (_%rest258911%_ _%tl258873258906%_))
                      (_%K258871258901%_ _%rest258911%_ _%hd258909%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx258840%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx258840%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx258840%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht258842%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id258844%_
                    (##structure-ref
                     _%ctx258840%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod258846%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht258842%_ _%id258844%_)))
                   (_%$e258849%_ _%mod258846%_))
              (if _%$e258849%_
                  _%$e258849%_
                  (let* ((_%mod258852%_
                          (gxc#optimizer-import-ssxi _%ctx258840%_))
                         (_%val258857%_
                          (let ((_%$e258854%_ _%mod258852%_))
                            (if _%$e258854%_ _%$e258854%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht258842%_ _%id258844%_ _%val258857%_))
                    _%val258857%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx258838%_)
        (if (##structure-ref _%ctx258838%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx258838%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id258816%_)
        (letrec ((_%catch-e258818%_
                  (lambda (_%exn258836%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn258836%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn258836%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id258816%_))))
                    '#f))
                 (_%import-e258819%_
                  (lambda ()
                    (let* ((_%str-id258822%_
                            (let ((__tmp259348
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id258816%_))))
                              (declare (not safe))
                              (##string-append __tmp259348 '".ssxi")))
                           (_%artefact-path258829%_
                            (let ((_%odir258823258825%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir258823258825%_
                                  (let ((_%odir258827%_ _%odir258823258825%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id258822%_
                                        '".ss"))
                                     _%odir258827%_))
                                  '#f)))
                           (_%library-path258831%_
                            (let ((__tmp259349
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id258822%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp259349)))
                           (_%ssxi-path258833%_
                            (if (and _%artefact-path258829%_
                                     (file-exists? _%artefact-path258829%_))
                                _%artefact-path258829%_
                                _%library-path258831%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path258833%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path258833%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e258818%_ _%import-e258819%_)))))
    (define gxc#optimize-source
      (lambda (_%stx258801%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx258801%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx258801%_))
        (let* ((_%stx258803%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx258801%_)))
               (_%stx258805%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx258803%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx258805%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx258805%_))
          (let _%fixpoint258808%_ ((_%current258810%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx258805%_))
            (let ((_%refined258812%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current258810%_ _%refined258812%_)
                  '#!void
                  (_%fixpoint258808%_ _%refined258812%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx258805%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx258805%_))
          (let ((_%stx258814%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx258805%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx258814%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp259351 (list gxc#::generate-runtime-empty::t))
            (__tmp259350 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp259351
         '()
         __tmp259350
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args258798%_
        (apply make-instance gxc#::generate-ssxi::t _%$args258798%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp259352
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
        (__make-atomic-promise __tmp259352)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx258790%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self258793%_
                (let ((__obj259331
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj259331))
               (__tmp259353
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self258793%_ _%stx258790%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp259353
           gxc#current-compile-method
           _%self258793%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self258750%_ _%stx258751%_)
        (let* ((_%g258753258763%_
                (lambda (_%g258754258760%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258754258760%_))))
               (_%g258752258787%_
                (lambda (_%g258754258766%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258754258766%_))
                      (let ((_%e258756258768%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g258754258766%_))))
                        (let ((_%hd258757258771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258756258768%_)))
                              (_%tl258758258773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258756258768%_))))
                          ((lambda (_%g258755258776%_)
                             (let ((__tmp259356
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self258750%_
                                         _%stx258751%_))))
                                   (__tmp259354
                                    (let ((__tmp259355
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp259355 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp259356
                                gx#current-expander-phi
                                __tmp259354)))
                           _%tl258758258773%_)))
                      (_%g258753258763%_ _%g258754258766%_)))))
          (_%g258752258787%_ _%stx258751%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self258689%_ _%stx258690%_)
        (let* ((_%g258692258706%_
                (lambda (_%g258693258703%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258693258703%_))))
               (_%g258691258747%_
                (lambda (_%g258693258709%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258693258709%_))
                      (let ((_%e258696258711%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g258693258709%_))))
                        (let ((_%hd258697258714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258696258711%_)))
                              (_%tl258698258716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258696258711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258698258716%_))
                              (let ((_%e258699258719%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl258698258716%_))))
                                (let ((_%hd258700258722%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258699258719%_)))
                                      (_%tl258701258724%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258699258719%_))))
                                  ((lambda (_%g258694258727%_
                                            _%g258695258728%_)
                                     (let* ((_%ctx258741%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g258695258728%_)))
                                            (_%code258743%_
                                             (##structure-ref
                                              _%ctx258741%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp259357
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self258689%_
                                                  _%code258743%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259357
                                        gx#current-expander-context
                                        _%ctx258741%_)))
                                   _%tl258701258724%_
                                   _%hd258700258722%_)))
                              (_%g258692258706%_ _%g258693258709%_))))
                      (_%g258692258706%_ _%g258693258709%_)))))
          (_%g258691258747%_ _%stx258690%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self258496%_ _%stx258497%_)
        (letrec ((_%generate-e258499%_
                  (lambda (_%id258674%_)
                    (let* ((_%sym258676%_
                            (if (let ((__tmp259358
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp259358))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id258674%_))
                                '#f))
                           (_%$e258678%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym258676%_))))
                      (if _%$e258678%_
                          ((lambda (_%klass258681%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym258676%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym258676%_
                                                     (cons (let ((__method259332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass258681%_ 'typedecl))))
                     (if __method259332
                         (let ()
                           (declare (not safe))
                           (__method259332 _%klass258681%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass258681%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym258676%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym258676%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e258678%_)
                          (let ((_%$e258683%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym258676%_))))
                            (if _%$e258683%_
                                ((lambda (_%type258686%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym258676%_
                                      '" "
                                      _%type258686%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type258686%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym258676%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym258676%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type258686%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym258676%_
                                                   (cons (let ((__method259333
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type258686%_ 'typedecl))))
                   (if __method259333
                       (let ()
                         (declare (not safe))
                         (__method259333 _%type258686%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type258686%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e258683%_)
                                '(begin))))))))
          (let* ((_%__stx258944258945%_ _%stx258497%_)
                 (_%g258502258540%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx258944258945%_)))))
            (let ((_%__kont258946258947%_
                   (lambda (_%g258504258656%_)
                     (_%generate-e258499%_ _%g258504258656%_)))
                  (_%__kont258948258949%_
                   (lambda (_%g258517258591%_)
                     (let ((_%types258617%_
                            (map _%generate-e258499%_
                                 (let ((__tmp259359
                                        (lambda (_%g258609258612%_
                                                 _%g258610258614%_)
                                          (cons _%g258609258612%_
                                                _%g258610258614%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp259359
                                    '()
                                    _%g258517258591%_)))))
                       (cons 'begin _%types258617%_)))))
              (let ((_%__match258999259000%_
                     (lambda (_%e258518258545%_
                              _%hd258519258548%_
                              _%tl258520258550%_
                              _%e258521258553%_
                              _%hd258522258556%_
                              _%tl258523258558%_
                              _%__splice258950258951%_
                              _%target258524258561%_
                              _%tl258526258563%_)
                       (letrec ((_%loop258527258566%_
                                 (lambda (_%hd258525258569%_
                                          _%id258531258571%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd258525258569%_))
                                       (let ((_%e258528258573%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd258525258569%_))))
                                         (let ((_%lp-tl258530258578%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e258528258573%_)))
                                               (_%lp-hd258529258576%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e258528258573%_))))
                                           (_%loop258527258566%_
                                            _%lp-tl258530258578%_
                                            (cons _%lp-hd258529258576%_
                                                  _%id258531258571%_))))
                                       (let ((_%id258532258581%_
                                              (reverse _%id258531258571%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl258523258558%_))
                                             (let ((_%e258533258583%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl258523258558%_))))
                                               (let ((_%tl258535258588%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e258533258583%_)))
                                                     (_%hd258534258586%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e258533258583%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl258535258588%_))
                                                     (_%__kont258948258949%_
                                                      _%id258532258581%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g258502258540%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g258502258540%_))))))))
                         (_%loop258527258566%_ _%target258524258561%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx258944258945%_))
                    (let ((_%e258505258624%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx258944258945%_))))
                      (let ((_%tl258507258629%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e258505258624%_)))
                            (_%hd258506258627%_
                             (let ()
                               (declare (not safe))
                               (##car _%e258505258624%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl258507258629%_))
                            (let ((_%e258508258632%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl258507258629%_))))
                              (let ((_%tl258510258637%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e258508258632%_)))
                                    (_%hd258509258635%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e258508258632%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd258509258635%_))
                                    (let ((_%e258511258640%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd258509258635%_))))
                                      (let ((_%tl258513258645%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e258511258640%_)))
                                            (_%hd258512258643%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e258511258640%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl258513258645%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl258510258637%_))
                                                (let ((_%e258514258648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl258510258637%_))))
                                                  (let ((_%tl258516258653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e258514258648%_)))
                                                        (_%hd258515258651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e258514258648%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl258516258653%_))
                                                        (_%__kont258946258947%_
                                                         _%hd258512258643%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd258509258635%_))
                                                            (let ((_%__splice258950258951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd258509258635%_
                              '0))))
                      (let ((_%tl258526258563%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice258950258951%_ '1)))
                            (_%target258524258561%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice258950258951%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl258526258563%_))
                            (_%__match258999259000%_
                             _%e258505258624%_
                             _%hd258506258627%_
                             _%tl258507258629%_
                             _%e258508258632%_
                             _%hd258509258635%_
                             _%tl258510258637%_
                             _%__splice258950258951%_
                             _%target258524258561%_
                             _%tl258526258563%_)
                            (let ()
                              (declare (not safe))
                              (_%g258502258540%_)))))
                    (let () (declare (not safe)) (_%g258502258540%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd258509258635%_))
                                                    (let ((_%__splice258950258951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd258509258635%_
                                                              '0))))
                                                      (let ((_%tl258526258563%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice258950258951%_ '1)))
                    (_%target258524258561%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice258950258951%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl258526258563%_))
                    (_%__match258999259000%_
                     _%e258505258624%_
                     _%hd258506258627%_
                     _%tl258507258629%_
                     _%e258508258632%_
                     _%hd258509258635%_
                     _%tl258510258637%_
                     _%__splice258950258951%_
                     _%target258524258561%_
                     _%tl258526258563%_)
                    (let () (declare (not safe)) (_%g258502258540%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g258502258540%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd258509258635%_))
                                                (let ((_%__splice258950258951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd258509258635%_
                                                          '0))))
                                                  (let ((_%tl258526258563%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice258950258951%_
                                                            '1)))
                                                        (_%target258524258561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice258950258951%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl258526258563%_))
                                                        (_%__match258999259000%_
                                                         _%e258505258624%_
                                                         _%hd258506258627%_
                                                         _%tl258507258629%_
                                                         _%e258508258632%_
                                                         _%hd258509258635%_
                                                         _%tl258510258637%_
                                                         _%__splice258950258951%_
                                                         _%target258524258561%_
                                                         _%tl258526258563%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g258502258540%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g258502258540%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd258509258635%_))
                                        (let ((_%__splice258950258951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd258509258635%_
                                                  '0))))
                                          (let ((_%tl258526258563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice258950258951%_
                                                    '1)))
                                                (_%target258524258561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice258950258951%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl258526258563%_))
                                                (_%__match258999259000%_
                                                 _%e258505258624%_
                                                 _%hd258506258627%_
                                                 _%tl258507258629%_
                                                 _%e258508258632%_
                                                 _%hd258509258635%_
                                                 _%tl258510258637%_
                                                 _%__splice258950258951%_
                                                 _%target258524258561%_
                                                 _%tl258526258563%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g258502258540%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g258502258540%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g258502258540%_)))))
                    (let () (declare (not safe)) (_%g258502258540%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self258049%_ _%stx258050%_)
        (let* ((_%__stx259002259003%_ _%stx258050%_)
               (_%g258054258156%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx259002259003%_)))))
          (let ((_%__kont259004259005%_
                 (lambda (_%g258056258446%_
                          _%g258057258447%_
                          _%g258058258448%_
                          _%g258059258449%_
                          _%g258060258450%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g258059258449%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g258058258448%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g258057258447%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g258056258446%_))
                                                 '())))))))
                (_%__kont259006259007%_
                 (lambda (_%g258109258272%_
                          _%g258110258273%_
                          _%g258111258274%_
                          _%g258112258275%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g258111258274%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g258110258273%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g258109258272%_))
                                           (cons '#f '())))))))
                (_%__kont259008259009%_ (lambda () '(begin))))
            (let ((_%__match259137259138%_
                   (lambda (_%e258061258318%_
                            _%hd258062258321%_
                            _%tl258063258323%_
                            _%e258064258326%_
                            _%hd258065258329%_
                            _%tl258066258331%_
                            _%e258067258334%_
                            _%hd258068258337%_
                            _%tl258069258339%_
                            _%e258070258342%_
                            _%hd258071258345%_
                            _%tl258072258347%_
                            _%e258073258350%_
                            _%hd258074258353%_
                            _%tl258075258355%_
                            _%e258076258358%_
                            _%hd258077258361%_
                            _%tl258078258363%_
                            _%e258079258366%_
                            _%hd258080258369%_
                            _%tl258081258371%_
                            _%e258082258374%_
                            _%hd258083258377%_
                            _%tl258084258379%_
                            _%e258085258382%_
                            _%hd258086258385%_
                            _%tl258087258387%_
                            _%e258088258390%_
                            _%hd258089258393%_
                            _%tl258090258395%_
                            _%e258091258398%_
                            _%hd258092258401%_
                            _%tl258093258403%_
                            _%e258094258406%_
                            _%hd258095258409%_
                            _%tl258096258411%_
                            _%e258097258414%_
                            _%hd258098258417%_
                            _%tl258099258419%_
                            _%e258100258422%_
                            _%hd258101258425%_
                            _%tl258102258427%_
                            _%e258103258430%_
                            _%hd258104258433%_
                            _%tl258105258435%_
                            _%e258106258438%_
                            _%hd258107258441%_
                            _%tl258108258443%_)
                     (let ((_%g258056258446%_ _%hd258107258441%_)
                           (_%g258057258447%_ _%hd258098258417%_)
                           (_%g258058258448%_ _%hd258089258393%_)
                           (_%g258059258449%_ _%hd258080258369%_)
                           (_%g258060258450%_ _%hd258071258345%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g258060258450%_
                              'bind-method!))
                           (_%__kont259004259005%_
                            _%g258056258446%_
                            _%g258057258447%_
                            _%g258058258448%_
                            _%g258059258449%_
                            _%g258060258450%_)
                           (_%__kont259008259009%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx259002259003%_))
                  (let ((_%e258061258318%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx259002259003%_))))
                    (let ((_%tl258063258323%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258061258318%_)))
                          (_%hd258062258321%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258061258318%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258063258323%_))
                          (let ((_%e258064258326%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl258063258323%_))))
                            (let ((_%tl258066258331%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258064258326%_)))
                                  (_%hd258065258329%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258064258326%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd258065258329%_))
                                  (let ((_%e258067258334%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd258065258329%_))))
                                    (let ((_%tl258069258339%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258067258334%_)))
                                          (_%hd258068258337%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258067258334%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd258068258337%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd258068258337%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258069258339%_))
                                                  (let ((_%e258070258342%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258069258339%_))))
                                                    (let ((_%tl258072258347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258070258342%_)))
                                                          (_%hd258071258345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258070258342%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl258072258347%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl258066258331%_))
                      (let ((_%e258073258350%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl258066258331%_))))
                        (let ((_%tl258075258355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258073258350%_)))
                              (_%hd258074258353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258073258350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd258074258353%_))
                              (let ((_%e258076258358%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd258074258353%_))))
                                (let ((_%tl258078258363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258076258358%_)))
                                      (_%hd258077258361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258076258358%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd258077258361%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd258077258361%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258078258363%_))
                                              (let ((_%e258079258366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl258078258363%_))))
                                                (let ((_%tl258081258371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258079258366%_)))
                                                      (_%hd258080258369%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258079258366%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258081258371%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl258075258355%_))
                                                          (let ((_%e258082258374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl258075258355%_))))
                    (let ((_%tl258084258379%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258082258374%_)))
                          (_%hd258083258377%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258082258374%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd258083258377%_))
                          (let ((_%e258085258382%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd258083258377%_))))
                            (let ((_%tl258087258387%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258085258382%_)))
                                  (_%hd258086258385%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258085258382%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd258086258385%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd258086258385%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl258087258387%_))
                                          (let ((_%e258088258390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl258087258387%_))))
                                            (let ((_%tl258090258395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e258088258390%_)))
                                                  (_%hd258089258393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e258088258390%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl258090258395%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl258084258379%_))
                                                      (let ((_%e258091258398%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl258084258379%_))))
                (let ((_%tl258093258403%_
                       (let () (declare (not safe)) (##cdr _%e258091258398%_)))
                      (_%hd258092258401%_
                       (let ()
                         (declare (not safe))
                         (##car _%e258091258398%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd258092258401%_))
                      (let ((_%e258094258406%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd258092258401%_))))
                        (let ((_%tl258096258411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258094258406%_)))
                              (_%hd258095258409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258094258406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd258095258409%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd258095258409%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258096258411%_))
                                      (let ((_%e258097258414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl258096258411%_))))
                                        (let ((_%tl258099258419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258097258414%_)))
                                              (_%hd258098258417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258097258414%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258099258419%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258093258403%_))
                                                  (let ((_%e258100258422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258093258403%_))))
                                                    (let ((_%tl258102258427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258100258422%_)))
                                                          (_%hd258101258425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258100258422%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd258101258425%_))
                                                          (let ((_%e258103258430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd258101258425%_))))
                    (let ((_%tl258105258435%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258103258430%_)))
                          (_%hd258104258433%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258103258430%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd258104258433%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd258104258433%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl258105258435%_))
                                  (let ((_%e258106258438%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl258105258435%_))))
                                    (let ((_%tl258108258443%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258106258438%_)))
                                          (_%hd258107258441%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258106258438%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl258108258443%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258102258427%_))
                                              (_%__match259137259138%_
                                               _%e258061258318%_
                                               _%hd258062258321%_
                                               _%tl258063258323%_
                                               _%e258064258326%_
                                               _%hd258065258329%_
                                               _%tl258066258331%_
                                               _%e258067258334%_
                                               _%hd258068258337%_
                                               _%tl258069258339%_
                                               _%e258070258342%_
                                               _%hd258071258345%_
                                               _%tl258072258347%_
                                               _%e258073258350%_
                                               _%hd258074258353%_
                                               _%tl258075258355%_
                                               _%e258076258358%_
                                               _%hd258077258361%_
                                               _%tl258078258363%_
                                               _%e258079258366%_
                                               _%hd258080258369%_
                                               _%tl258081258371%_
                                               _%e258082258374%_
                                               _%hd258083258377%_
                                               _%tl258084258379%_
                                               _%e258085258382%_
                                               _%hd258086258385%_
                                               _%tl258087258387%_
                                               _%e258088258390%_
                                               _%hd258089258393%_
                                               _%tl258090258395%_
                                               _%e258091258398%_
                                               _%hd258092258401%_
                                               _%tl258093258403%_
                                               _%e258094258406%_
                                               _%hd258095258409%_
                                               _%tl258096258411%_
                                               _%e258097258414%_
                                               _%hd258098258417%_
                                               _%tl258099258419%_
                                               _%e258100258422%_
                                               _%hd258101258425%_
                                               _%tl258102258427%_
                                               _%e258103258430%_
                                               _%hd258104258433%_
                                               _%tl258105258435%_
                                               _%e258106258438%_
                                               _%hd258107258441%_
                                               _%tl258108258443%_)
                                              (_%__kont259008259009%_))
                                          (_%__kont259008259009%_))))
                                  (_%__kont259008259009%_))
                              (_%__kont259008259009%_))
                          (_%__kont259008259009%_))))
                  (_%__kont259008259009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258093258403%_))
                                                      (if (let ((__tmp259360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp259360 'bind-method!))
                  (let ((_%g258109258272%_ _%hd258098258417%_)
                        (_%g258110258273%_ _%hd258089258393%_)
                        (_%g258111258274%_ _%hd258080258369%_)
                        (_%g258112258275%_ _%hd258071258345%_))
                    (_%__kont259006259007%_
                     _%g258109258272%_
                     _%g258110258273%_
                     _%g258111258274%_
                     _%g258112258275%_))
                  (_%__kont259008259009%_))
              (_%__kont259008259009%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont259008259009%_))))
                                      (_%__kont259008259009%_))
                                  (_%__kont259008259009%_))
                              (_%__kont259008259009%_))))
                      (_%__kont259008259009%_))))
              (_%__kont259008259009%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont259008259009%_))))
                                          (_%__kont259008259009%_))
                                      (_%__kont259008259009%_))
                                  (_%__kont259008259009%_))))
                          (_%__kont259008259009%_))))
                  (_%__kont259008259009%_))
              (_%__kont259008259009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont259008259009%_))
                                          (_%__kont259008259009%_))
                                      (_%__kont259008259009%_))))
                              (_%__kont259008259009%_))))
                      (_%__kont259008259009%_))
                  (_%__kont259008259009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont259008259009%_))
                                              (_%__kont259008259009%_))
                                          (_%__kont259008259009%_))))
                                  (_%__kont259008259009%_))))
                          (_%__kont259008259009%_))))
                  (_%__kont259008259009%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self257873%_ _%stx257874%_)
        (let* ((_%__stx259246259247%_ _%stx257874%_)
               (_%g257877257917%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx259246259247%_)))))
          (let ((_%__kont259248259249%_
                 (lambda (_%g257879258023%_ _%g257880258024%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257880258024%_))
                               (cons _%g257879258023%_ '())))))
                (_%__kont259250259251%_
                 (lambda (_%g257902257946%_ _%g257903257947%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx259246259247%_))
                (let ((_%e257881257967%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx259246259247%_))))
                  (let ((_%tl257883257972%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e257881257967%_)))
                        (_%hd257882257970%_
                         (let ()
                           (declare (not safe))
                           (##car _%e257881257967%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl257883257972%_))
                        (let ((_%e257884257975%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl257883257972%_))))
                          (let ((_%tl257886257980%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257884257975%_)))
                                (_%hd257885257978%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257884257975%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd257885257978%_))
                                (let ((_%e257887257983%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd257885257978%_))))
                                  (let ((_%tl257889257988%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257887257983%_)))
                                        (_%hd257888257986%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257887257983%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd257888257986%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd257888257986%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257889257988%_))
                                                (let ((_%e257890257991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257889257988%_))))
                                                  (let ((_%tl257892257996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257890257991%_)))
                                                        (_%hd257891257994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257890257991%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257892257996%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl257886257980%_))
                                                            (let ((_%e257893257999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl257886257980%_))))
                      (let ((_%tl257895258004%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257893257999%_)))
                            (_%hd257894258002%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257893257999%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd257894258002%_))
                            (let ((_%e257896258007%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd257894258002%_))))
                              (let ((_%tl257898258012%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e257896258007%_)))
                                    (_%hd257897258010%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e257896258007%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd257897258010%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd257897258010%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl257898258012%_))
                                            (let ((_%e257899258015%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl257898258012%_))))
                                              (let ((_%tl257901258020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e257899258015%_)))
                                                    (_%hd257900258018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e257899258015%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl257901258020%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257895258004%_))
                                                        (_%__kont259248259249%_
                                                         _%hd257900258018%_
                                                         _%hd257891257994%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257877257917%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257895258004%_))
                                                        (_%__kont259250259251%_
                                                         _%hd257894258002%_
                                                         _%hd257885257978%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257877257917%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257895258004%_))
                                                (_%__kont259250259251%_
                                                 _%hd257894258002%_
                                                 _%hd257885257978%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257877257917%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257895258004%_))
                                            (_%__kont259250259251%_
                                             _%hd257894258002%_
                                             _%hd257885257978%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g257877257917%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257895258004%_))
                                        (_%__kont259250259251%_
                                         _%hd257894258002%_
                                         _%hd257885257978%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g257877257917%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl257895258004%_))
                                (_%__kont259250259251%_
                                 _%hd257894258002%_
                                 _%hd257885257978%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g257877257917%_))))))
                    (let () (declare (not safe)) (_%g257877257917%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl257886257980%_))
                    (let ((_%e257910257938%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl257886257980%_))))
                      (let ((_%tl257912257943%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257910257938%_)))
                            (_%hd257911257941%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257910257938%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl257912257943%_))
                            (_%__kont259250259251%_
                             _%hd257911257941%_
                             _%hd257885257978%_)
                            (let ()
                              (declare (not safe))
                              (_%g257877257917%_)))))
                    (let () (declare (not safe)) (_%g257877257917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl257886257980%_))
                                                    (let ((_%e257910257938%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl257886257980%_))))
                                                      (let ((_%tl257912257943%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e257910257938%_)))
                    (_%hd257911257941%_
                     (let () (declare (not safe)) (##car _%e257910257938%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl257912257943%_))
                    (_%__kont259250259251%_
                     _%hd257911257941%_
                     _%hd257885257978%_)
                    (let () (declare (not safe)) (_%g257877257917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257877257917%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257886257980%_))
                                                (let ((_%e257910257938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257886257980%_))))
                                                  (let ((_%tl257912257943%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257910257938%_)))
                                                        (_%hd257911257941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257910257938%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257912257943%_))
                                                        (_%__kont259250259251%_
                                                         _%hd257911257941%_
                                                         _%hd257885257978%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257877257917%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257877257917%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl257886257980%_))
                                            (let ((_%e257910257938%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl257886257980%_))))
                                              (let ((_%tl257912257943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e257910257938%_)))
                                                    (_%hd257911257941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e257910257938%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl257912257943%_))
                                                    (_%__kont259250259251%_
                                                     _%hd257911257941%_
                                                     _%hd257885257978%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257877257917%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g257877257917%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl257886257980%_))
                                    (let ((_%e257910257938%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl257886257980%_))))
                                      (let ((_%tl257912257943%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e257910257938%_)))
                                            (_%hd257911257941%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e257910257938%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257912257943%_))
                                            (_%__kont259250259251%_
                                             _%hd257911257941%_
                                             _%hd257885257978%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g257877257917%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g257877257917%_))))))
                        (let () (declare (not safe)) (_%g257877257917%_)))))
                (let () (declare (not safe)) (_%g257877257917%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self257860%_)
        (let ((_%self257863%_ _%self257860%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257863%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self257634%_)
        (let* ((_%self257637%_ _%self257634%_)
               (_%self257646257662%_ _%self257637%_)
               (_%E257648257665%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self257646257662%_
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
               (_%K257649257680%_
                (lambda (_%methods257668%_
                         _%metaclass257669%_
                         _%system?257670%_
                         _%final?257671%_
                         _%struct?257672%_
                         _%constructor257673%_
                         _%fields257674%_
                         _%slots257675%_
                         _%precendence-list257676%_
                         _%super257677%_
                         _%id257678%_)
                  (cons '@class
                        (cons _%id257678%_
                              (cons _%super257677%_
                                    (cons _%precendence-list257676%_
                                          (cons _%slots257675%_
                                                (cons _%fields257674%_
                                                      (cons _%constructor257673%_
                                                            (cons _%struct?257672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?257671%_
                                (cons _%system?257670%_
                                      (cons _%metaclass257669%_
                                            (cons (if _%methods257668%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods257668%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e257650257683%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257646257662%_ '1 '#f '#f)))
               (_%id257686%_ _%e257650257683%_)
               (_%e257651257688%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257646257662%_ '2 '#f '#f)))
               (_%super257691%_ _%e257651257688%_)
               (_%e257652257693%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257646257662%_ '3 '#f '#f)))
               (_%precendence-list257696%_ _%e257652257693%_)
               (_%e257653257698%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257646257662%_ '4 '#f '#f)))
               (_%slots257701%_ _%e257653257698%_)
               (_%e257654257703%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257646257662%_ '5 '#f '#f)))
               (_%fields257706%_ _%e257654257703%_)
               (_%e257655257708%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257646257662%_ '6 '#f '#f)))
               (_%constructor257711%_ _%e257655257708%_)
               (_%e257656257713%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257646257662%_ '7 '#f '#f)))
               (_%struct?257716%_ _%e257656257713%_)
               (_%e257657257718%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257646257662%_ '8 '#f '#f)))
               (_%final?257721%_ _%e257657257718%_)
               (_%e257658257723%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257646257662%_ '9 '#f '#f)))
               (_%system?257726%_ _%e257658257723%_)
               (_%e257659257728%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self257646257662%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass257731%_ _%e257659257728%_)
               (_%e257660257733%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self257646257662%_
                   '11
                   '#f
                   '#f)))
               (_%methods257736%_ _%e257660257733%_))
          (_%K257649257680%_
           _%methods257736%_
           _%metaclass257731%_
           _%system?257726%_
           _%final?257721%_
           _%struct?257716%_
           _%constructor257711%_
           _%fields257706%_
           _%slots257701%_
           _%precendence-list257696%_
           _%super257691%_
           _%id257686%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self257499%_)
        (let ((_%self257502%_ _%self257499%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257502%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self257364%_)
        (let ((_%self257367%_ _%self257364%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257367%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self257229%_)
        (let ((_%self257232%_ _%self257229%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257232%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self257232%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self257232%_
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
      (lambda (_%self257094%_)
        (let ((_%self257097%_ _%self257094%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257097%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self257097%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self257097%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self256959%_)
        (let ((_%self256962%_ _%self256959%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256962%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256962%_
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
      (lambda (_%self256773%_)
        (let* ((_%self256776%_ _%self256773%_)
               (_%self256785256794%_ _%self256776%_)
               (_%E256787256797%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self256785256794%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K256788256816%_
                (lambda (_%dispatch256800%_
                         _%arity256801%_
                         _%signature256802%_)
                  (if _%signature256802%_
                      (let ((_%signature256804%_ _%signature256802%_))
                        (cons '@lambda
                              (cons _%arity256801%_
                                    (cons _%dispatch256800%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature256804%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature256804%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature256804%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature256804%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature256804%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity256801%_
                                  (cons _%dispatch256800%_ '()))))))
               (_%e256789256819%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256785256794%_ '1 '#f '#f)))
               (_%e256790256822%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256785256794%_ '2 '#f '#f)))
               (_%signature256825%_ _%e256790256822%_)
               (_%e256791256827%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256785256794%_ '3 '#f '#f)))
               (_%arity256830%_ _%e256791256827%_)
               (_%e256792256832%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256785256794%_ '4 '#f '#f)))
               (_%dispatch256835%_ _%e256792256832%_))
          (_%K256788256816%_
           _%dispatch256835%_
           _%arity256830%_
           _%signature256825%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self256633%_)
        (let ((_%self256636%_ _%self256633%_))
          (letrec ((_%clause-e256647%_
                    (lambda (_%clause256649%_)
                      (cdr (let ((__method259334
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause256649%_
                                     'typedecl))))
                             (if __method259334
                                 (let ()
                                   (declare (not safe))
                                   (__method259334 _%clause256649%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause256649%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e256647%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self256636%_
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
      (lambda (_%self256498%_)
        (let ((_%self256501%_ _%self256498%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256501%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256501%_
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
      (lambda (_%self256363%_)
        (let ((_%self256366%_ _%self256363%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256366%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256366%_
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
      (lambda (_%self256228%_)
        (let ((_%self256231%_ _%self256228%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256231%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
