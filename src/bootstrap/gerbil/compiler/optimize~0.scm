(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712696219)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp194701
                   (let ((__obj194695
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj194695)
                     __obj194695)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp194701)))))
    (define gxc#optimize!
      (lambda (_%ctx194304%_)
        (let ((__tmp194704
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx194304%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx194304%_))
                 (let ((__tmp194706
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp194705
                        (##structure-ref
                         _%ctx194304%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp194706 __tmp194705 '#t))
                 (let ((_%code194307%_
                        (let ((__tmp194707
                               (##structure-ref
                                _%ctx194304%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp194707))))
                   (##structure-set!
                    _%ctx194304%_
                    _%code194307%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp194703 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194702 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194704
           gxc#current-compile-mutators
           __tmp194703
           gxc#current-compile-local-type
           __tmp194702))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx194290%_)
        (letrec ((_%load-it!194292%_
                  (lambda (_%id194302%_)
                    (if (let ((__tmp194708
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp194708 _%id194302%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id194302%_))
                          (let ((__tmp194709
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp194709 _%id194302%_ '#t)))))))
          (let* ((_%modid194294%_
                  (##structure-ref
                   _%ctx194290%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str194296%_ (symbol->string _%modid194294%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str194296%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str194296%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194292%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194292%_
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
      (lambda (_%ctx194227%_)
        (letrec* ((_%deps194229%_
                   (let* ((_%imports194280%_
                           (##structure-ref
                            _%ctx194227%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e194282%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx194227%_))))
                     (if _%$e194282%_
                         ((lambda (_%g194284194286%_)
                            (cons _%g194284194286%_ _%imports194280%_))
                          _%$e194282%_)
                         (let () _%imports194280%_)))))
          (let _%lp194231%_ ((_%rest194233%_ _%deps194229%_))
            (let* ((_%rest194234194242%_ _%rest194233%_)
                   (_%else194236194250%_ (lambda () '#!void))
                   (_%K194238194268%_
                    (lambda (_%rest194253%_ _%hd194254%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd194254%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp194711
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp194710
                                       (##structure-ref
                                        _%hd194254%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp194711 __tmp194710))
                                '#!void
                                (begin
                                  (let ((_%$e194257%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd194254%_))))
                                    (if _%$e194257%_
                                        ((lambda (_%pre194260%_)
                                           (let ((__tmp194712
                                                  (cons _%pre194260%_
                                                        (##structure-ref
                                                         _%hd194254%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp194231%_ __tmp194712)))
                                         _%$e194257%_)
                                        (let ((__tmp194713
                                               (##structure-ref
                                                _%hd194254%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_%lp194231%_ __tmp194713))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd194254%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp194231%_ _%rest194253%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd194254%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp194715
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp194714
                                           (##structure-ref
                                            _%hd194254%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp194715 __tmp194714))
                                    '#!void
                                    (begin
                                      (let ((__tmp194716
                                             (##structure-ref
                                              _%hd194254%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp194231%_ __tmp194716))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd194254%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp194231%_ _%rest194253%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd194254%_
                                     'gx#module-import::t))
                                  (let ((__tmp194717
                                         (cons (##direct-structure-ref
                                                _%hd194254%_
                                                '1
                                                gx#module-import::t
                                                '#f)
                                               _%rest194253%_)))
                                    (declare (not safe))
                                    (_%lp194231%_ __tmp194717))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd194254%_
                                         'gx#module-export::t))
                                      (let ((__tmp194718
                                             (cons (##direct-structure-ref
                                                    _%hd194254%_
                                                    '1
                                                    gx#module-export::t
                                                    '#f)
                                                   _%rest194253%_)))
                                        (declare (not safe))
                                        (_%lp194231%_ __tmp194718))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd194254%_
                                             'gx#import-set::t))
                                          (let ((__tmp194719
                                                 (cons (##direct-structure-ref
                                                        _%hd194254%_
                                                        '1
                                                        gx#import-set::t
                                                        '#f)
                                                       _%rest194253%_)))
                                            (declare (not safe))
                                            (_%lp194231%_ __tmp194719))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd194254%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest194234194242%_))
                  (let ((_%hd194239194271%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194234194242%_)))
                        (_%tl194240194273%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194234194242%_))))
                    (let* ((_%hd194276%_ _%hd194239194271%_)
                           (_%rest194278%_ _%tl194240194273%_))
                      (declare (not safe))
                      (_%K194238194268%_ _%rest194278%_ _%hd194276%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx194207%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx194207%_
                    'gx#module-context::t))
                 (let ((__tmp194720
                        (##structure-ref
                         _%ctx194207%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp194720)))
            '#!void
            (let* ((_%ht194209%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id194211%_
                    (##structure-ref
                     _%ctx194207%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod194213%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht194209%_ _%id194211%_)))
                   (_%$e194216%_ _%mod194213%_))
              (if _%$e194216%_
                  _%$e194216%_
                  (let* ((_%mod194219%_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi _%ctx194207%_)))
                         (_%val194224%_
                          (let ((_%$e194221%_ _%mod194219%_))
                            (if _%$e194221%_ _%$e194221%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht194209%_ _%id194211%_ _%val194224%_))
                    _%val194224%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx194205%_)
        (if (##structure-ref _%ctx194205%_ '1 gx#expander-context::t '#f)
            (let ((__tmp194721
                   (##structure-ref
                    _%ctx194205%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp194721))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id194182%_)
        (letrec ((_%catch-e194184%_
                  (lambda (_%exn194203%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn194203%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn194203%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id194182%_))))
                    '#f))
                 (_%import-e194185%_
                  (lambda ()
                    (let* ((_%str-id194188%_
                            (let ((__tmp194722
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id194182%_))))
                              (declare (not safe))
                              (##string-append __tmp194722 '".ssxi")))
                           (_%artefact-path194196%_
                            (let ((_%odir194189194191%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir194189194191%_
                                  (let ((_%odir194194%_ _%odir194189194191%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id194188%_
                                        '".ss"))
                                     _%odir194194%_))
                                  '#f)))
                           (_%library-path194198%_
                            (let ((__tmp194723
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id194188%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp194723)))
                           (_%ssxi-path194200%_
                            (if (and _%artefact-path194196%_
                                     (file-exists? _%artefact-path194196%_))
                                _%artefact-path194196%_
                                _%library-path194198%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path194200%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path194200%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e194184%_ _%import-e194185%_)))))
    (define gxc#optimize-source
      (lambda (_%stx194173%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx194173%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx194173%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx194173%_))
        (let* ((_%stx194175%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx194173%_)))
               (_%stx194177%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx194175%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx194177%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx194177%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx194177%_))
          (let ((_%stx194180%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx194177%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx194180%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp194725 (list gxc#::generate-runtime-empty::t))
            (__tmp194724 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp194725
         '()
         __tmp194724
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args194170%_
        (apply make-instance gxc#::generate-ssxi::t _%$args194170%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp194726
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
        (__make-promise __tmp194726)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx194162%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self194165%_
                (let ((__obj194697
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj194697))
               (__tmp194727
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194165%_ _%stx194162%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194727
           gxc#current-compile-method
           _%self194165%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self194122%_ _%stx194123%_)
        (let* ((_%g194125194135%_
                (lambda (_%g194126194132%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194126194132%_))))
               (_%g194124194159%_
                (lambda (_%g194126194138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194126194138%_))
                      (let ((_%e194130194140%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194126194138%_))))
                        (let ((_%hd194129194143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194130194140%_)))
                              (_%tl194128194145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194130194140%_))))
                          ((lambda (_%L194148%_)
                             (let ((__tmp194730
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self194122%_
                                         _%stx194123%_))))
                                   (__tmp194728
                                    (let ((__tmp194729
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194729 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp194730
                                gx#current-expander-phi
                                __tmp194728)))
                           _%tl194128194145%_)))
                      (let ()
                        (declare (not safe))
                        (_%g194125194135%_ _%g194126194138%_))))))
          (declare (not safe))
          (_%g194124194159%_ _%stx194123%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self194061%_ _%stx194062%_)
        (let* ((_%g194064194078%_
                (lambda (_%g194065194075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194065194075%_))))
               (_%g194063194119%_
                (lambda (_%g194065194081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194065194081%_))
                      (let ((_%e194070194083%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194065194081%_))))
                        (let ((_%hd194069194086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194070194083%_)))
                              (_%tl194068194088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194070194083%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194068194088%_))
                              (let ((_%e194073194091%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194068194088%_))))
                                (let ((_%hd194072194094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194073194091%_)))
                                      (_%tl194071194096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194073194091%_))))
                                  ((lambda (_%L194099%_ _%L194100%_)
                                     (let* ((_%ctx194113%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L194100%_)))
                                            (_%code194115%_
                                             (##structure-ref
                                              _%ctx194113%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194731
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self194061%_
                                                  _%code194115%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp194731
                                        gx#current-expander-context
                                        _%ctx194113%_)))
                                   _%tl194071194096%_
                                   _%hd194072194094%_)))
                              (let ()
                                (declare (not safe))
                                (_%g194064194078%_ _%g194065194081%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g194064194078%_ _%g194065194081%_))))))
          (declare (not safe))
          (_%g194063194119%_ _%stx194062%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self193866%_ _%stx193867%_)
        (letrec ((_%generate-e193869%_
                  (lambda (_%id194046%_)
                    (let* ((_%sym194048%_
                            (if (let ((__tmp194732
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp194732))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id194046%_))
                                '#f))
                           (_%$e194050%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym194048%_))))
                      (if _%$e194050%_
                          ((lambda (_%klass194053%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym194048%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym194048%_
                                                     (cons (let ((__method194698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass194053%_ 'typedecl))))
                     (if __method194698
                         (__method194698 _%klass194053%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass194053%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym194048%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym194048%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e194050%_)
                          (let ((_%$e194055%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym194048%_))))
                            (if _%$e194055%_
                                ((lambda (_%type194058%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym194048%_
                                      '" "
                                      _%type194058%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type194058%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym194048%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym194048%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type194058%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym194048%_
                                                   (cons (let ((__method194699
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type194058%_ 'typedecl))))
                   (if __method194699
                       (__method194699 _%type194058%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type194058%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e194055%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx194310194311%_ _%stx193867%_)
                 (_%g193872193910%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194310194311%_)))))
            (let ((_%__kont194312194313%_
                   (lambda (_%L194028%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e193869%_ _%L194028%_))))
                  (_%__kont194314194315%_
                   (lambda (_%L193963%_)
                     (let ((_%types193989%_
                            (map _%generate-e193869%_
                                 (let ((__tmp194733
                                        (lambda (_%g193981193984%_
                                                 _%g193982193986%_)
                                          (cons _%g193981193984%_
                                                _%g193982193986%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp194733 '() _%L193963%_)))))
                       (cons 'begin _%types193989%_)))))
              (let ((_%__match194365194366%_
                     (lambda (_%e193890193915%_
                              _%hd193889193918%_
                              _%tl193888193920%_
                              _%e193893193923%_
                              _%hd193892193926%_
                              _%tl193891193928%_
                              _%__splice194316194317%_
                              _%target193894193931%_
                              _%tl193896193933%_)
                       (letrec ((_%loop193897193936%_
                                 (lambda (_%hd193895193939%_
                                          _%id193901193941%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd193895193939%_))
                                       (let ((_%e193898193944%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd193895193939%_))))
                                         (let ((_%lp-tl193900193949%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e193898193944%_)))
                                               (_%lp-hd193899193947%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e193898193944%_))))
                                           (let ((__tmp194734
                                                  (cons _%lp-hd193899193947%_
                                                        _%id193901193941%_)))
                                             (declare (not safe))
                                             (_%loop193897193936%_
                                              _%lp-tl193900193949%_
                                              __tmp194734))))
                                       (let ((_%id193902193952%_
                                              (reverse _%id193901193941%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl193891193928%_))
                                             (let ((_%e193905193955%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl193891193928%_))))
                                               (let ((_%tl193903193960%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e193905193955%_)))
                                                     (_%hd193904193958%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e193905193955%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193903193960%_))
                                                     (_%__kont194314194315%_
                                                      _%id193902193952%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g193872193910%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g193872193910%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop193897193936%_
                            _%target193894193931%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194310194311%_))
                    (let ((_%e193877193996%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194310194311%_))))
                      (let ((_%tl193875194001%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193877193996%_)))
                            (_%hd193876193999%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193877193996%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193875194001%_))
                            (let ((_%e193880194004%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193875194001%_))))
                              (let ((_%tl193878194009%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193880194004%_)))
                                    (_%hd193879194007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193880194004%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd193879194007%_))
                                    (let ((_%e193883194012%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd193879194007%_))))
                                      (let ((_%tl193881194017%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193883194012%_)))
                                            (_%hd193882194015%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193883194012%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193881194017%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193878194009%_))
                                                (let ((_%e193886194020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193878194009%_))))
                                                  (let ((_%tl193884194025%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193886194020%_)))
                                                        (_%hd193885194023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193886194020%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193884194025%_))
                                                        (_%__kont194312194313%_
                                                         _%hd193882194015%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd193879194007%_))
                                                            (let ((_%__splice194316194317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd193879194007%_ '0))))
                      (let ((_%tl193896193933%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194316194317%_ '1)))
                            (_%target193894193931%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194316194317%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193896193933%_))
                            (_%__match194365194366%_
                             _%e193877193996%_
                             _%hd193876193999%_
                             _%tl193875194001%_
                             _%e193880194004%_
                             _%hd193879194007%_
                             _%tl193878194009%_
                             _%__splice194316194317%_
                             _%target193894193931%_
                             _%tl193896193933%_)
                            (let ()
                              (declare (not safe))
                              (_%g193872193910%_)))))
                    (let () (declare (not safe)) (_%g193872193910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd193879194007%_))
                                                    (let ((_%__splice194316194317%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd193879194007%_
                                                              '0))))
                                                      (let ((_%tl193896193933%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice194316194317%_ '1)))
                    (_%target193894193931%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice194316194317%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193896193933%_))
                    (_%__match194365194366%_
                     _%e193877193996%_
                     _%hd193876193999%_
                     _%tl193875194001%_
                     _%e193880194004%_
                     _%hd193879194007%_
                     _%tl193878194009%_
                     _%__splice194316194317%_
                     _%target193894193931%_
                     _%tl193896193933%_)
                    (let () (declare (not safe)) (_%g193872193910%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193872193910%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd193879194007%_))
                                                (let ((_%__splice194316194317%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd193879194007%_
                                                          '0))))
                                                  (let ((_%tl193896193933%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194316194317%_
                                                            '1)))
                                                        (_%target193894193931%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194316194317%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193896193933%_))
                                                        (_%__match194365194366%_
                                                         _%e193877193996%_
                                                         _%hd193876193999%_
                                                         _%tl193875194001%_
                                                         _%e193880194004%_
                                                         _%hd193879194007%_
                                                         _%tl193878194009%_
                                                         _%__splice194316194317%_
                                                         _%target193894193931%_
                                                         _%tl193896193933%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193872193910%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193872193910%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd193879194007%_))
                                        (let ((_%__splice194316194317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd193879194007%_
                                                  '0))))
                                          (let ((_%tl193896193933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194316194317%_
                                                    '1)))
                                                (_%target193894193931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194316194317%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193896193933%_))
                                                (_%__match194365194366%_
                                                 _%e193877193996%_
                                                 _%hd193876193999%_
                                                 _%tl193875194001%_
                                                 _%e193880194004%_
                                                 _%hd193879194007%_
                                                 _%tl193878194009%_
                                                 _%__splice194316194317%_
                                                 _%target193894193931%_
                                                 _%tl193896193933%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193872193910%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g193872193910%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g193872193910%_)))))
                    (let () (declare (not safe)) (_%g193872193910%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self193419%_ _%stx193420%_)
        (let* ((_%__stx194368194369%_ _%stx193420%_)
               (_%g193424193526%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194368194369%_)))))
          (let ((_%__kont194370194371%_
                 (lambda (_%L193816%_
                          _%L193817%_
                          _%L193818%_
                          _%L193819%_
                          _%L193820%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193819%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193818%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193817%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L193816%_))
                                                 '())))))))
                (_%__kont194372194373%_
                 (lambda (_%L193642%_ _%L193643%_ _%L193644%_ _%L193645%_)
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
                                           (cons '#f '())))))))
                (_%__kont194374194375%_ (lambda () '(begin))))
            (let ((_%__match194503194504%_
                   (lambda (_%e193433193688%_
                            _%hd193432193691%_
                            _%tl193431193693%_
                            _%e193436193696%_
                            _%hd193435193699%_
                            _%tl193434193701%_
                            _%e193439193704%_
                            _%hd193438193707%_
                            _%tl193437193709%_
                            _%e193442193712%_
                            _%hd193441193715%_
                            _%tl193440193717%_
                            _%e193445193720%_
                            _%hd193444193723%_
                            _%tl193443193725%_
                            _%e193448193728%_
                            _%hd193447193731%_
                            _%tl193446193733%_
                            _%e193451193736%_
                            _%hd193450193739%_
                            _%tl193449193741%_
                            _%e193454193744%_
                            _%hd193453193747%_
                            _%tl193452193749%_
                            _%e193457193752%_
                            _%hd193456193755%_
                            _%tl193455193757%_
                            _%e193460193760%_
                            _%hd193459193763%_
                            _%tl193458193765%_
                            _%e193463193768%_
                            _%hd193462193771%_
                            _%tl193461193773%_
                            _%e193466193776%_
                            _%hd193465193779%_
                            _%tl193464193781%_
                            _%e193469193784%_
                            _%hd193468193787%_
                            _%tl193467193789%_
                            _%e193472193792%_
                            _%hd193471193795%_
                            _%tl193470193797%_
                            _%e193475193800%_
                            _%hd193474193803%_
                            _%tl193473193805%_
                            _%e193478193808%_
                            _%hd193477193811%_
                            _%tl193476193813%_)
                     (let ((_%L193816%_ _%hd193477193811%_)
                           (_%L193817%_ _%hd193468193787%_)
                           (_%L193818%_ _%hd193459193763%_)
                           (_%L193819%_ _%hd193450193739%_)
                           (_%L193820%_ _%hd193441193715%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L193820%_
                              'bind-method!))
                           (_%__kont194370194371%_
                            _%L193816%_
                            _%L193817%_
                            _%L193818%_
                            _%L193819%_
                            _%L193820%_)
                           (_%__kont194374194375%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194368194369%_))
                  (let ((_%e193433193688%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194368194369%_))))
                    (let ((_%tl193431193693%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193433193688%_)))
                          (_%hd193432193691%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193433193688%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193431193693%_))
                          (let ((_%e193436193696%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193431193693%_))))
                            (let ((_%tl193434193701%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193436193696%_)))
                                  (_%hd193435193699%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193436193696%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193435193699%_))
                                  (let ((_%e193439193704%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193435193699%_))))
                                    (let ((_%tl193437193709%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193439193704%_)))
                                          (_%hd193438193707%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193439193704%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193438193707%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193438193707%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193437193709%_))
                                                  (let ((_%e193442193712%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193437193709%_))))
                                                    (let ((_%tl193440193717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193442193712%_)))
                                                          (_%hd193441193715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193442193712%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193440193717%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193434193701%_))
                      (let ((_%e193445193720%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193434193701%_))))
                        (let ((_%tl193443193725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193445193720%_)))
                              (_%hd193444193723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193445193720%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd193444193723%_))
                              (let ((_%e193448193728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd193444193723%_))))
                                (let ((_%tl193446193733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193448193728%_)))
                                      (_%hd193447193731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193448193728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd193447193731%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd193447193731%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193446193733%_))
                                              (let ((_%e193451193736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193446193733%_))))
                                                (let ((_%tl193449193741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193451193736%_)))
                                                      (_%hd193450193739%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193451193736%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193449193741%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193443193725%_))
                                                          (let ((_%e193454193744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193443193725%_))))
                    (let ((_%tl193452193749%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193454193744%_)))
                          (_%hd193453193747%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193454193744%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd193453193747%_))
                          (let ((_%e193457193752%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd193453193747%_))))
                            (let ((_%tl193455193757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193457193752%_)))
                                  (_%hd193456193755%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193457193752%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd193456193755%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd193456193755%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193455193757%_))
                                          (let ((_%e193460193760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193455193757%_))))
                                            (let ((_%tl193458193765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193460193760%_)))
                                                  (_%hd193459193763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193460193760%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193458193765%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193452193749%_))
                                                      (let ((_%e193463193768%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193452193749%_))))
                (let ((_%tl193461193773%_
                       (let () (declare (not safe)) (##cdr _%e193463193768%_)))
                      (_%hd193462193771%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193463193768%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193462193771%_))
                      (let ((_%e193466193776%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193462193771%_))))
                        (let ((_%tl193464193781%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193466193776%_)))
                              (_%hd193465193779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193466193776%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193465193779%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193465193779%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193464193781%_))
                                      (let ((_%e193469193784%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193464193781%_))))
                                        (let ((_%tl193467193789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193469193784%_)))
                                              (_%hd193468193787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193469193784%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193467193789%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193461193773%_))
                                                  (let ((_%e193472193792%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193461193773%_))))
                                                    (let ((_%tl193470193797%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193472193792%_)))
                                                          (_%hd193471193795%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193472193792%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193471193795%_))
                                                          (let ((_%e193475193800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193471193795%_))))
                    (let ((_%tl193473193805%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193475193800%_)))
                          (_%hd193474193803%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193475193800%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193474193803%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193474193803%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193473193805%_))
                                  (let ((_%e193478193808%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193473193805%_))))
                                    (let ((_%tl193476193813%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193478193808%_)))
                                          (_%hd193477193811%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193478193808%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193476193813%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193470193797%_))
                                              (_%__match194503194504%_
                                               _%e193433193688%_
                                               _%hd193432193691%_
                                               _%tl193431193693%_
                                               _%e193436193696%_
                                               _%hd193435193699%_
                                               _%tl193434193701%_
                                               _%e193439193704%_
                                               _%hd193438193707%_
                                               _%tl193437193709%_
                                               _%e193442193712%_
                                               _%hd193441193715%_
                                               _%tl193440193717%_
                                               _%e193445193720%_
                                               _%hd193444193723%_
                                               _%tl193443193725%_
                                               _%e193448193728%_
                                               _%hd193447193731%_
                                               _%tl193446193733%_
                                               _%e193451193736%_
                                               _%hd193450193739%_
                                               _%tl193449193741%_
                                               _%e193454193744%_
                                               _%hd193453193747%_
                                               _%tl193452193749%_
                                               _%e193457193752%_
                                               _%hd193456193755%_
                                               _%tl193455193757%_
                                               _%e193460193760%_
                                               _%hd193459193763%_
                                               _%tl193458193765%_
                                               _%e193463193768%_
                                               _%hd193462193771%_
                                               _%tl193461193773%_
                                               _%e193466193776%_
                                               _%hd193465193779%_
                                               _%tl193464193781%_
                                               _%e193469193784%_
                                               _%hd193468193787%_
                                               _%tl193467193789%_
                                               _%e193472193792%_
                                               _%hd193471193795%_
                                               _%tl193470193797%_
                                               _%e193475193800%_
                                               _%hd193474193803%_
                                               _%tl193473193805%_
                                               _%e193478193808%_
                                               _%hd193477193811%_
                                               _%tl193476193813%_)
                                              (_%__kont194374194375%_))
                                          (_%__kont194374194375%_))))
                                  (_%__kont194374194375%_))
                              (_%__kont194374194375%_))
                          (_%__kont194374194375%_))))
                  (_%__kont194374194375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193461193773%_))
                                                      (if (let ((__tmp194735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp194735 'bind-method!))
                  (let ((_%L193642%_ _%hd193468193787%_)
                        (_%L193643%_ _%hd193459193763%_)
                        (_%L193644%_ _%hd193450193739%_)
                        (_%L193645%_ _%hd193441193715%_))
                    (_%__kont194372194373%_
                     _%L193642%_
                     _%L193643%_
                     _%L193644%_
                     _%L193645%_))
                  (_%__kont194374194375%_))
              (_%__kont194374194375%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194374194375%_))))
                                      (_%__kont194374194375%_))
                                  (_%__kont194374194375%_))
                              (_%__kont194374194375%_))))
                      (_%__kont194374194375%_))))
              (_%__kont194374194375%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194374194375%_))))
                                          (_%__kont194374194375%_))
                                      (_%__kont194374194375%_))
                                  (_%__kont194374194375%_))))
                          (_%__kont194374194375%_))))
                  (_%__kont194374194375%_))
              (_%__kont194374194375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194374194375%_))
                                          (_%__kont194374194375%_))
                                      (_%__kont194374194375%_))))
                              (_%__kont194374194375%_))))
                      (_%__kont194374194375%_))
                  (_%__kont194374194375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194374194375%_))
                                              (_%__kont194374194375%_))
                                          (_%__kont194374194375%_))))
                                  (_%__kont194374194375%_))))
                          (_%__kont194374194375%_))))
                  (_%__kont194374194375%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self193243%_ _%stx193244%_)
        (let* ((_%__stx194612194613%_ _%stx193244%_)
               (_%g193247193287%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194612194613%_)))))
          (let ((_%__kont194614194615%_
                 (lambda (_%L193393%_ _%L193394%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193394%_))
                               (cons _%L193393%_ '())))))
                (_%__kont194616194617%_
                 (lambda (_%L193316%_ _%L193317%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx194612194613%_))
                (let ((_%e193253193337%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx194612194613%_))))
                  (let ((_%tl193251193342%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193253193337%_)))
                        (_%hd193252193340%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193253193337%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl193251193342%_))
                        (let ((_%e193256193345%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl193251193342%_))))
                          (let ((_%tl193254193350%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193256193345%_)))
                                (_%hd193255193348%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193256193345%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd193255193348%_))
                                (let ((_%e193259193353%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd193255193348%_))))
                                  (let ((_%tl193257193358%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193259193353%_)))
                                        (_%hd193258193356%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193259193353%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd193258193356%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd193258193356%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193257193358%_))
                                                (let ((_%e193262193361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193257193358%_))))
                                                  (let ((_%tl193260193366%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193262193361%_)))
                                                        (_%hd193261193364%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193262193361%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193260193366%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193254193350%_))
                                                            (let ((_%e193265193369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193254193350%_))))
                      (let ((_%tl193263193374%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193265193369%_)))
                            (_%hd193264193372%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193265193369%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193264193372%_))
                            (let ((_%e193268193377%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193264193372%_))))
                              (let ((_%tl193266193382%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193268193377%_)))
                                    (_%hd193267193380%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193268193377%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193267193380%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193267193380%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193266193382%_))
                                            (let ((_%e193271193385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193266193382%_))))
                                              (let ((_%tl193269193390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193271193385%_)))
                                                    (_%hd193270193388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193271193385%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193269193390%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193263193374%_))
                                                        (_%__kont194614194615%_
                                                         _%hd193270193388%_
                                                         _%hd193261193364%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193247193287%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193263193374%_))
                                                        (_%__kont194616194617%_
                                                         _%hd193264193372%_
                                                         _%hd193255193348%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193247193287%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193263193374%_))
                                                (_%__kont194616194617%_
                                                 _%hd193264193372%_
                                                 _%hd193255193348%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193247193287%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193263193374%_))
                                            (_%__kont194616194617%_
                                             _%hd193264193372%_
                                             _%hd193255193348%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193247193287%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193263193374%_))
                                        (_%__kont194616194617%_
                                         _%hd193264193372%_
                                         _%hd193255193348%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g193247193287%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl193263193374%_))
                                (_%__kont194616194617%_
                                 _%hd193264193372%_
                                 _%hd193255193348%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g193247193287%_))))))
                    (let () (declare (not safe)) (_%g193247193287%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl193254193350%_))
                    (let ((_%e193282193308%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193254193350%_))))
                      (let ((_%tl193280193313%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193282193308%_)))
                            (_%hd193281193311%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193282193308%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193280193313%_))
                            (_%__kont194616194617%_
                             _%hd193281193311%_
                             _%hd193255193348%_)
                            (let ()
                              (declare (not safe))
                              (_%g193247193287%_)))))
                    (let () (declare (not safe)) (_%g193247193287%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl193254193350%_))
                                                    (let ((_%e193282193308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl193254193350%_))))
                                                      (let ((_%tl193280193313%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e193282193308%_)))
                    (_%hd193281193311%_
                     (let () (declare (not safe)) (##car _%e193282193308%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193280193313%_))
                    (_%__kont194616194617%_
                     _%hd193281193311%_
                     _%hd193255193348%_)
                    (let () (declare (not safe)) (_%g193247193287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193247193287%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193254193350%_))
                                                (let ((_%e193282193308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193254193350%_))))
                                                  (let ((_%tl193280193313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193282193308%_)))
                                                        (_%hd193281193311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193282193308%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193280193313%_))
                                                        (_%__kont194616194617%_
                                                         _%hd193281193311%_
                                                         _%hd193255193348%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193247193287%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193247193287%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193254193350%_))
                                            (let ((_%e193282193308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193254193350%_))))
                                              (let ((_%tl193280193313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193282193308%_)))
                                                    (_%hd193281193311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193282193308%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193280193313%_))
                                                    (_%__kont194616194617%_
                                                     _%hd193281193311%_
                                                     _%hd193255193348%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193247193287%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g193247193287%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl193254193350%_))
                                    (let ((_%e193282193308%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl193254193350%_))))
                                      (let ((_%tl193280193313%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193282193308%_)))
                                            (_%hd193281193311%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193282193308%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193280193313%_))
                                            (_%__kont194616194617%_
                                             _%hd193281193311%_
                                             _%hd193255193348%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193247193287%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g193247193287%_))))))
                        (let () (declare (not safe)) (_%g193247193287%_)))))
                (let () (declare (not safe)) (_%g193247193287%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self193230%_)
        (let ((_%self193233%_ _%self193230%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193233%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self193003%_)
        (let ((_%self193006%_ _%self193003%_))
          (let* ((_%self193015193031%_ _%self193006%_)
                 (_%E193017193035%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self193015193031%_
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
                 (_%K193018193050%_
                  (lambda (_%methods193038%_
                           _%metaclass193039%_
                           _%system?193040%_
                           _%final?193041%_
                           _%struct?193042%_
                           _%constructor193043%_
                           _%fields193044%_
                           _%slots193045%_
                           _%precendence-list193046%_
                           _%super193047%_
                           _%id193048%_)
                    (cons '@class
                          (cons _%id193048%_
                                (cons _%super193047%_
                                      (cons _%precendence-list193046%_
                                            (cons _%slots193045%_
                                                  (cons _%fields193044%_
                                                        (cons _%constructor193043%_
                                                              (cons _%struct?193042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%final?193041%_
                                  (cons _%system?193040%_
                                        (cons _%metaclass193039%_
                                              (cons (if _%methods193038%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash->list
                                                           _%methods193038%_))
                                                        '#f)
                                                    '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (if '#t
                (let* ((_%e193019193053%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '1
                           '#f
                           '#f)))
                       (_%id193056%_ _%e193019193053%_)
                       (_%e193020193058%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '2
                           '#f
                           '#f)))
                       (_%super193061%_ _%e193020193058%_)
                       (_%e193021193063%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '3
                           '#f
                           '#f)))
                       (_%precendence-list193066%_ _%e193021193063%_)
                       (_%e193022193068%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '4
                           '#f
                           '#f)))
                       (_%slots193071%_ _%e193022193068%_)
                       (_%e193023193073%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '5
                           '#f
                           '#f)))
                       (_%fields193076%_ _%e193023193073%_)
                       (_%e193024193078%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '6
                           '#f
                           '#f)))
                       (_%constructor193081%_ _%e193024193078%_)
                       (_%e193025193083%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '7
                           '#f
                           '#f)))
                       (_%struct?193086%_ _%e193025193083%_)
                       (_%e193026193088%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '8
                           '#f
                           '#f)))
                       (_%final?193091%_ _%e193026193088%_)
                       (_%e193027193093%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '9
                           '#f
                           '#f)))
                       (_%system?193096%_ _%e193027193093%_)
                       (_%e193028193098%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '10
                           '#f
                           '#f)))
                       (_%metaclass193101%_ _%e193028193098%_)
                       (_%e193029193103%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193015193031%_
                           '11
                           '#f
                           '#f)))
                       (_%methods193106%_ _%e193029193103%_))
                  (declare (not safe))
                  (_%K193018193050%_
                   _%methods193106%_
                   _%metaclass193101%_
                   _%system?193096%_
                   _%final?193091%_
                   _%struct?193086%_
                   _%constructor193081%_
                   _%fields193076%_
                   _%slots193071%_
                   _%precendence-list193066%_
                   _%super193061%_
                   _%id193056%_))
                (let () (declare (not safe)) (_%E193017193035%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self192868%_)
        (let ((_%self192871%_ _%self192868%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192871%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self192733%_)
        (let ((_%self192736%_ _%self192733%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192736%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self192598%_)
        (let ((_%self192601%_ _%self192598%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192601%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192601%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192601%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self192463%_)
        (let ((_%self192466%_ _%self192463%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192466%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192466%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192466%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self192328%_)
        (let ((_%self192331%_ _%self192328%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192331%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192331%_
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
      (lambda (_%self192141%_)
        (let ((_%self192144%_ _%self192141%_))
          (let* ((_%self192153192162%_ _%self192144%_)
                 (_%E192155192166%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self192153192162%_
                             '((!lambda _ signature arity dispatch))))
                    '#!void))
                 (_%K192156192185%_
                  (lambda (_%dispatch192169%_
                           _%arity192170%_
                           _%signature192171%_)
                    (if _%signature192171%_
                        (let ((_%signature192173%_ _%signature192171%_))
                          (cons '@lambda
                                (cons _%arity192170%_
                                      (cons _%dispatch192169%_
                                            (cons 'signature:
                                                  (cons (cons 'return:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature192173%_
                               '1
                               '#f
                               '#f))
                            (cons 'effect:
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%signature192173%_
                                           '2
                                           '#f
                                           '#f))
                                        (cons 'arguments:
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%signature192173%_
                                                       '3
                                                       '#f
                                                       '#f))
                                                    (cons 'unchecked:
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%signature192173%_
                           '4
                           '#f
                           '#f))
                        (cons 'origin:
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%signature192173%_
                                       '5
                                       '#f
                                       '#f))
                                    '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (cons '@lambda
                              (cons _%arity192170%_
                                    (cons _%dispatch192169%_ '())))))))
            (if '#t
                (let* ((_%e192157192188%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192153192162%_
                           '1
                           '#f
                           '#f)))
                       (_%e192158192191%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192153192162%_
                           '2
                           '#f
                           '#f)))
                       (_%signature192194%_ _%e192158192191%_)
                       (_%e192159192196%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192153192162%_
                           '3
                           '#f
                           '#f)))
                       (_%arity192199%_ _%e192159192196%_)
                       (_%e192160192201%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192153192162%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch192204%_ _%e192160192201%_))
                  (declare (not safe))
                  (_%K192156192185%_
                   _%dispatch192204%_
                   _%arity192199%_
                   _%signature192194%_))
                (let () (declare (not safe)) (_%E192155192166%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self192002%_)
        (let ((_%self192005%_ _%self192002%_))
          (letrec ((_%clause-e192015%_
                    (lambda (_%clause192017%_)
                      (cdr (let ((__method194700
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause192017%_
                                     'typedecl))))
                             (if __method194700
                                 (__method194700 _%clause192017%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause192017%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e192015%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192005%_
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
      (lambda (_%self191867%_)
        (let ((_%self191870%_ _%self191867%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191870%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191870%_
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
      (lambda (_%self191732%_)
        (let ((_%self191735%_ _%self191732%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191735%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191735%_
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
      (lambda (_%self191597%_)
        (let ((_%self191600%_ _%self191597%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191600%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
