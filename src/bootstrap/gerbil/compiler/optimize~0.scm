(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1771030496)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp257264
                   (let ((__obj257258
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
                       (gxc#optimizer-info:::init! __obj257258))
                     __obj257258)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp257264)))))
    (define gxc#optimize!
      (lambda (_%ctx256866%_)
        (let ((__tmp257266
               (lambda ()
                 (let ((__tmp257268
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx256866%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx256866%_)
                          (let ((__tmp257270
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp257269
                                 (##structure-ref
                                  _%ctx256866%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp257270 __tmp257269 '#t))
                          (let ((_%code256870%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx256866%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx256866%_
                             _%code256870%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp257267
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp257268
                    gxc#current-compile-local-type
                    __tmp257267))))
              (__tmp257265 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257266
           gxc#current-compile-mutators
           __tmp257265))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx256852%_)
        (letrec ((_%load-it!256854%_
                  (lambda (_%id256864%_)
                    (if (let ((__tmp257271
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp257271 _%id256864%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id256864%_)
                          (let ((__tmp257272
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp257272 _%id256864%_ '#t)))))))
          (let* ((_%modid256856%_
                  (##structure-ref
                   _%ctx256852%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str256858%_ (symbol->string _%modid256856%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str256858%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str256858%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!256854%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!256854%_
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
      (lambda (_%ctx256789%_)
        (letrec* ((_%deps256791%_
                   (let* ((_%imports256842%_
                           (##structure-ref
                            _%ctx256789%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e256844%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx256789%_))))
                     (if _%$e256844%_
                         ((lambda (_%g256846256848%_)
                            (cons _%g256846256848%_ _%imports256842%_))
                          _%$e256844%_)
                         _%imports256842%_))))
          (let _%lp256793%_ ((_%rest256795%_ _%deps256791%_))
            (let* ((_%rest256796256804%_ _%rest256795%_)
                   (_%else256798256812%_ (lambda () '#!void))
                   (_%K256800256830%_
                    (lambda (_%rest256815%_ _%hd256816%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd256816%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp257274
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp257273
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd256816%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp257274 __tmp257273))
                                '#!void
                                (begin
                                  (let ((_%$e256819%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd256816%_))))
                                    (if _%$e256819%_
                                        ((lambda (_%pre256822%_)
                                           (_%lp256793%_
                                            (cons _%pre256822%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd256816%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e256819%_)
                                        (_%lp256793%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd256816%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd256816%_)))
                            (_%lp256793%_ _%rest256815%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd256816%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp257276
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp257275
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd256816%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp257276 __tmp257275))
                                    '#!void
                                    (begin
                                      (_%lp256793%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd256816%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd256816%_)))
                                (_%lp256793%_ _%rest256815%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd256816%_
                                     'gx#module-import::t))
                                  (_%lp256793%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd256816%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest256815%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd256816%_
                                         'gx#module-export::t))
                                      (_%lp256793%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd256816%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest256815%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd256816%_
                                             'gx#import-set::t))
                                          (_%lp256793%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd256816%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest256815%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd256816%_))))))))))
              (if (pair? _%rest256796256804%_)
                  (let ((_%hd256801256833%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest256796256804%_)))
                        (_%tl256802256835%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest256796256804%_))))
                    (let* ((_%hd256838%_ _%hd256801256833%_)
                           (_%rest256840%_ _%tl256802256835%_))
                      (_%K256800256830%_ _%rest256840%_ _%hd256838%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx256769%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx256769%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx256769%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht256771%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id256773%_
                    (##structure-ref
                     _%ctx256769%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod256775%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht256771%_ _%id256773%_)))
                   (_%$e256778%_ _%mod256775%_))
              (if _%$e256778%_
                  _%$e256778%_
                  (let* ((_%mod256781%_
                          (gxc#optimizer-import-ssxi _%ctx256769%_))
                         (_%val256786%_
                          (let ((_%$e256783%_ _%mod256781%_))
                            (if _%$e256783%_ _%$e256783%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht256771%_ _%id256773%_ _%val256786%_))
                    _%val256786%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx256767%_)
        (if (##structure-ref _%ctx256767%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx256767%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id256745%_)
        (letrec ((_%catch-e256747%_
                  (lambda (_%exn256765%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn256765%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn256765%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id256745%_))))
                    '#f))
                 (_%import-e256748%_
                  (lambda ()
                    (let* ((_%str-id256751%_
                            (let ((__tmp257277
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id256745%_))))
                              (declare (not safe))
                              (##string-append __tmp257277 '".ssxi")))
                           (_%artefact-path256758%_
                            (let ((_%odir256752256754%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir256752256754%_
                                  (let ((_%odir256756%_ _%odir256752256754%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id256751%_
                                        '".ss"))
                                     _%odir256756%_))
                                  '#f)))
                           (_%library-path256760%_
                            (let ((__tmp257278
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id256751%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp257278)))
                           (_%ssxi-path256762%_
                            (if (and _%artefact-path256758%_
                                     (file-exists? _%artefact-path256758%_))
                                _%artefact-path256758%_
                                _%library-path256760%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path256762%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path256762%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e256747%_ _%import-e256748%_)))))
    (define gxc#optimize-source
      (lambda (_%stx256730%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx256730%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx256730%_))
        (let* ((_%stx256732%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx256730%_)))
               (_%stx256734%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx256732%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx256734%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx256734%_))
          (let _%fixpoint256737%_ ((_%current256739%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx256734%_))
            (let ((_%refined256741%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current256739%_ _%refined256741%_)
                  '#!void
                  (_%fixpoint256737%_ _%refined256741%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx256734%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx256734%_))
          (let ((_%stx256743%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx256734%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx256743%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp257280 (list gxc#::generate-runtime-empty::t))
            (__tmp257279 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp257280
         '()
         __tmp257279
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args256727%_
        (apply make-instance gxc#::generate-ssxi::t _%$args256727%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp257281
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
        (__make-atomic-promise __tmp257281)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx256719%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self256722%_
                (let ((__obj257260
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj257260))
               (__tmp257282
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self256722%_ _%stx256719%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257282
           gxc#current-compile-method
           _%self256722%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self256679%_ _%stx256680%_)
        (let* ((_%g256682256692%_
                (lambda (_%g256683256689%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g256683256689%_))))
               (_%g256681256716%_
                (lambda (_%g256683256695%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g256683256695%_))
                      (let ((_%e256685256697%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g256683256695%_))))
                        (let ((_%hd256686256700%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256685256697%_)))
                              (_%tl256687256702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256685256697%_))))
                          ((lambda (_%g256684256705%_)
                             (let ((__tmp257285
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self256679%_
                                         _%stx256680%_))))
                                   (__tmp257283
                                    (let ((__tmp257284
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp257284 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp257285
                                gx#current-expander-phi
                                __tmp257283)))
                           _%tl256687256702%_)))
                      (_%g256682256692%_ _%g256683256695%_)))))
          (_%g256681256716%_ _%stx256680%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self256618%_ _%stx256619%_)
        (let* ((_%g256621256635%_
                (lambda (_%g256622256632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g256622256632%_))))
               (_%g256620256676%_
                (lambda (_%g256622256638%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g256622256638%_))
                      (let ((_%e256625256640%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g256622256638%_))))
                        (let ((_%hd256626256643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256625256640%_)))
                              (_%tl256627256645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256625256640%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl256627256645%_))
                              (let ((_%e256628256648%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl256627256645%_))))
                                (let ((_%hd256629256651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256628256648%_)))
                                      (_%tl256630256653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256628256648%_))))
                                  ((lambda (_%g256623256656%_
                                            _%g256624256657%_)
                                     (let* ((_%ctx256670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g256624256657%_)))
                                            (_%code256672%_
                                             (##structure-ref
                                              _%ctx256670%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp257286
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self256618%_
                                                  _%code256672%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp257286
                                        gx#current-expander-context
                                        _%ctx256670%_)))
                                   _%tl256630256653%_
                                   _%hd256629256651%_)))
                              (_%g256621256635%_ _%g256622256638%_))))
                      (_%g256621256635%_ _%g256622256638%_)))))
          (_%g256620256676%_ _%stx256619%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self256425%_ _%stx256426%_)
        (letrec ((_%generate-e256428%_
                  (lambda (_%id256603%_)
                    (let* ((_%sym256605%_
                            (if (let ((__tmp257287
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp257287))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id256603%_))
                                '#f))
                           (_%$e256607%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym256605%_))))
                      (if _%$e256607%_
                          ((lambda (_%klass256610%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym256605%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym256605%_
                                                     (cons (let ((__method257261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass256610%_ 'typedecl))))
                     (if __method257261
                         (let ()
                           (declare (not safe))
                           (__method257261 _%klass256610%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass256610%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym256605%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym256605%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e256607%_)
                          (let ((_%$e256612%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym256605%_))))
                            (if _%$e256612%_
                                ((lambda (_%type256615%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym256605%_
                                      '" "
                                      _%type256615%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type256615%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym256605%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym256605%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type256615%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym256605%_
                                                   (cons (let ((__method257262
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type256615%_ 'typedecl))))
                   (if __method257262
                       (let ()
                         (declare (not safe))
                         (__method257262 _%type256615%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type256615%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e256612%_)
                                '(begin))))))))
          (let* ((_%__stx256873256874%_ _%stx256426%_)
                 (_%g256431256469%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx256873256874%_)))))
            (let ((_%__kont256875256876%_
                   (lambda (_%g256433256585%_)
                     (_%generate-e256428%_ _%g256433256585%_)))
                  (_%__kont256877256878%_
                   (lambda (_%g256446256520%_)
                     (let ((_%types256546%_
                            (map _%generate-e256428%_
                                 (let ((__tmp257288
                                        (lambda (_%g256538256541%_
                                                 _%g256539256543%_)
                                          (cons _%g256538256541%_
                                                _%g256539256543%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp257288
                                    '()
                                    _%g256446256520%_)))))
                       (cons 'begin _%types256546%_)))))
              (let ((_%__match256928256929%_
                     (lambda (_%e256447256474%_
                              _%hd256448256477%_
                              _%tl256449256479%_
                              _%e256450256482%_
                              _%hd256451256485%_
                              _%tl256452256487%_
                              _%__splice256879256880%_
                              _%target256453256490%_
                              _%tl256455256492%_)
                       (letrec ((_%loop256456256495%_
                                 (lambda (_%hd256454256498%_
                                          _%id256460256500%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd256454256498%_))
                                       (let ((_%e256457256502%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd256454256498%_))))
                                         (let ((_%lp-tl256459256507%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e256457256502%_)))
                                               (_%lp-hd256458256505%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e256457256502%_))))
                                           (_%loop256456256495%_
                                            _%lp-tl256459256507%_
                                            (cons _%lp-hd256458256505%_
                                                  _%id256460256500%_))))
                                       (let ((_%id256461256510%_
                                              (reverse _%id256460256500%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl256452256487%_))
                                             (let ((_%e256462256512%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl256452256487%_))))
                                               (let ((_%tl256464256517%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e256462256512%_)))
                                                     (_%hd256463256515%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e256462256512%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl256464256517%_))
                                                     (_%__kont256877256878%_
                                                      _%id256461256510%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g256431256469%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g256431256469%_))))))))
                         (_%loop256456256495%_ _%target256453256490%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx256873256874%_))
                    (let ((_%e256434256553%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx256873256874%_))))
                      (let ((_%tl256436256558%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256434256553%_)))
                            (_%hd256435256556%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256434256553%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl256436256558%_))
                            (let ((_%e256437256561%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl256436256558%_))))
                              (let ((_%tl256439256566%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e256437256561%_)))
                                    (_%hd256438256564%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e256437256561%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd256438256564%_))
                                    (let ((_%e256440256569%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd256438256564%_))))
                                      (let ((_%tl256442256574%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e256440256569%_)))
                                            (_%hd256441256572%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e256440256569%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256442256574%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256439256566%_))
                                                (let ((_%e256443256577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256439256566%_))))
                                                  (let ((_%tl256445256582%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256443256577%_)))
                                                        (_%hd256444256580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256443256577%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256445256582%_))
                                                        (_%__kont256875256876%_
                                                         _%hd256441256572%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd256438256564%_))
                                                            (let ((_%__splice256879256880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd256438256564%_
                              '0))))
                      (let ((_%tl256455256492%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice256879256880%_ '1)))
                            (_%target256453256490%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice256879256880%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl256455256492%_))
                            (_%__match256928256929%_
                             _%e256434256553%_
                             _%hd256435256556%_
                             _%tl256436256558%_
                             _%e256437256561%_
                             _%hd256438256564%_
                             _%tl256439256566%_
                             _%__splice256879256880%_
                             _%target256453256490%_
                             _%tl256455256492%_)
                            (let ()
                              (declare (not safe))
                              (_%g256431256469%_)))))
                    (let () (declare (not safe)) (_%g256431256469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd256438256564%_))
                                                    (let ((_%__splice256879256880%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd256438256564%_
                                                              '0))))
                                                      (let ((_%tl256455256492%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice256879256880%_ '1)))
                    (_%target256453256490%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice256879256880%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl256455256492%_))
                    (_%__match256928256929%_
                     _%e256434256553%_
                     _%hd256435256556%_
                     _%tl256436256558%_
                     _%e256437256561%_
                     _%hd256438256564%_
                     _%tl256439256566%_
                     _%__splice256879256880%_
                     _%target256453256490%_
                     _%tl256455256492%_)
                    (let () (declare (not safe)) (_%g256431256469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256431256469%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd256438256564%_))
                                                (let ((_%__splice256879256880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd256438256564%_
                                                          '0))))
                                                  (let ((_%tl256455256492%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice256879256880%_
                                                            '1)))
                                                        (_%target256453256490%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice256879256880%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256455256492%_))
                                                        (_%__match256928256929%_
                                                         _%e256434256553%_
                                                         _%hd256435256556%_
                                                         _%tl256436256558%_
                                                         _%e256437256561%_
                                                         _%hd256438256564%_
                                                         _%tl256439256566%_
                                                         _%__splice256879256880%_
                                                         _%target256453256490%_
                                                         _%tl256455256492%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256431256469%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256431256469%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd256438256564%_))
                                        (let ((_%__splice256879256880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd256438256564%_
                                                  '0))))
                                          (let ((_%tl256455256492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice256879256880%_
                                                    '1)))
                                                (_%target256453256490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice256879256880%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl256455256492%_))
                                                (_%__match256928256929%_
                                                 _%e256434256553%_
                                                 _%hd256435256556%_
                                                 _%tl256436256558%_
                                                 _%e256437256561%_
                                                 _%hd256438256564%_
                                                 _%tl256439256566%_
                                                 _%__splice256879256880%_
                                                 _%target256453256490%_
                                                 _%tl256455256492%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256431256469%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g256431256469%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g256431256469%_)))))
                    (let () (declare (not safe)) (_%g256431256469%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self255978%_ _%stx255979%_)
        (let* ((_%__stx256931256932%_ _%stx255979%_)
               (_%g255983256085%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx256931256932%_)))))
          (let ((_%__kont256933256934%_
                 (lambda (_%g255985256375%_
                          _%g255986256376%_
                          _%g255987256377%_
                          _%g255988256378%_
                          _%g255989256379%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g255988256378%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g255987256377%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g255986256376%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g255985256375%_))
                                                 '())))))))
                (_%__kont256935256936%_
                 (lambda (_%g256038256201%_
                          _%g256039256202%_
                          _%g256040256203%_
                          _%g256041256204%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256040256203%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g256039256202%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g256038256201%_))
                                           (cons '#f '())))))))
                (_%__kont256937256938%_ (lambda () '(begin))))
            (let ((_%__match257066257067%_
                   (lambda (_%e255990256247%_
                            _%hd255991256250%_
                            _%tl255992256252%_
                            _%e255993256255%_
                            _%hd255994256258%_
                            _%tl255995256260%_
                            _%e255996256263%_
                            _%hd255997256266%_
                            _%tl255998256268%_
                            _%e255999256271%_
                            _%hd256000256274%_
                            _%tl256001256276%_
                            _%e256002256279%_
                            _%hd256003256282%_
                            _%tl256004256284%_
                            _%e256005256287%_
                            _%hd256006256290%_
                            _%tl256007256292%_
                            _%e256008256295%_
                            _%hd256009256298%_
                            _%tl256010256300%_
                            _%e256011256303%_
                            _%hd256012256306%_
                            _%tl256013256308%_
                            _%e256014256311%_
                            _%hd256015256314%_
                            _%tl256016256316%_
                            _%e256017256319%_
                            _%hd256018256322%_
                            _%tl256019256324%_
                            _%e256020256327%_
                            _%hd256021256330%_
                            _%tl256022256332%_
                            _%e256023256335%_
                            _%hd256024256338%_
                            _%tl256025256340%_
                            _%e256026256343%_
                            _%hd256027256346%_
                            _%tl256028256348%_
                            _%e256029256351%_
                            _%hd256030256354%_
                            _%tl256031256356%_
                            _%e256032256359%_
                            _%hd256033256362%_
                            _%tl256034256364%_
                            _%e256035256367%_
                            _%hd256036256370%_
                            _%tl256037256372%_)
                     (let ((_%g255985256375%_ _%hd256036256370%_)
                           (_%g255986256376%_ _%hd256027256346%_)
                           (_%g255987256377%_ _%hd256018256322%_)
                           (_%g255988256378%_ _%hd256009256298%_)
                           (_%g255989256379%_ _%hd256000256274%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g255989256379%_
                              'bind-method!))
                           (_%__kont256933256934%_
                            _%g255985256375%_
                            _%g255986256376%_
                            _%g255987256377%_
                            _%g255988256378%_
                            _%g255989256379%_)
                           (_%__kont256937256938%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx256931256932%_))
                  (let ((_%e255990256247%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx256931256932%_))))
                    (let ((_%tl255992256252%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e255990256247%_)))
                          (_%hd255991256250%_
                           (let ()
                             (declare (not safe))
                             (##car _%e255990256247%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl255992256252%_))
                          (let ((_%e255993256255%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl255992256252%_))))
                            (let ((_%tl255995256260%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e255993256255%_)))
                                  (_%hd255994256258%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e255993256255%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd255994256258%_))
                                  (let ((_%e255996256263%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd255994256258%_))))
                                    (let ((_%tl255998256268%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e255996256263%_)))
                                          (_%hd255997256266%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e255996256263%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd255997256266%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd255997256266%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl255998256268%_))
                                                  (let ((_%e255999256271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl255998256268%_))))
                                                    (let ((_%tl256001256276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e255999256271%_)))
                                                          (_%hd256000256274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e255999256271%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl256001256276%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl255995256260%_))
                      (let ((_%e256002256279%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl255995256260%_))))
                        (let ((_%tl256004256284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256002256279%_)))
                              (_%hd256003256282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256002256279%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd256003256282%_))
                              (let ((_%e256005256287%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd256003256282%_))))
                                (let ((_%tl256007256292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256005256287%_)))
                                      (_%hd256006256290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256005256287%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd256006256290%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd256006256290%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl256007256292%_))
                                              (let ((_%e256008256295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl256007256292%_))))
                                                (let ((_%tl256010256300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e256008256295%_)))
                                                      (_%hd256009256298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e256008256295%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl256010256300%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl256004256284%_))
                                                          (let ((_%e256011256303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl256004256284%_))))
                    (let ((_%tl256013256308%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256011256303%_)))
                          (_%hd256012256306%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256011256303%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd256012256306%_))
                          (let ((_%e256014256311%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd256012256306%_))))
                            (let ((_%tl256016256316%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e256014256311%_)))
                                  (_%hd256015256314%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e256014256311%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd256015256314%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd256015256314%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl256016256316%_))
                                          (let ((_%e256017256319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl256016256316%_))))
                                            (let ((_%tl256019256324%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e256017256319%_)))
                                                  (_%hd256018256322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e256017256319%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl256019256324%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl256013256308%_))
                                                      (let ((_%e256020256327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl256013256308%_))))
                (let ((_%tl256022256332%_
                       (let () (declare (not safe)) (##cdr _%e256020256327%_)))
                      (_%hd256021256330%_
                       (let ()
                         (declare (not safe))
                         (##car _%e256020256327%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd256021256330%_))
                      (let ((_%e256023256335%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd256021256330%_))))
                        (let ((_%tl256025256340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256023256335%_)))
                              (_%hd256024256338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256023256335%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd256024256338%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd256024256338%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl256025256340%_))
                                      (let ((_%e256026256343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl256025256340%_))))
                                        (let ((_%tl256028256348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256026256343%_)))
                                              (_%hd256027256346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256026256343%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256028256348%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl256022256332%_))
                                                  (let ((_%e256029256351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl256022256332%_))))
                                                    (let ((_%tl256031256356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e256029256351%_)))
                                                          (_%hd256030256354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e256029256351%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd256030256354%_))
                                                          (let ((_%e256032256359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd256030256354%_))))
                    (let ((_%tl256034256364%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256032256359%_)))
                          (_%hd256033256362%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256032256359%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd256033256362%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd256033256362%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl256034256364%_))
                                  (let ((_%e256035256367%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl256034256364%_))))
                                    (let ((_%tl256037256372%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e256035256367%_)))
                                          (_%hd256036256370%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e256035256367%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl256037256372%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256031256356%_))
                                              (_%__match257066257067%_
                                               _%e255990256247%_
                                               _%hd255991256250%_
                                               _%tl255992256252%_
                                               _%e255993256255%_
                                               _%hd255994256258%_
                                               _%tl255995256260%_
                                               _%e255996256263%_
                                               _%hd255997256266%_
                                               _%tl255998256268%_
                                               _%e255999256271%_
                                               _%hd256000256274%_
                                               _%tl256001256276%_
                                               _%e256002256279%_
                                               _%hd256003256282%_
                                               _%tl256004256284%_
                                               _%e256005256287%_
                                               _%hd256006256290%_
                                               _%tl256007256292%_
                                               _%e256008256295%_
                                               _%hd256009256298%_
                                               _%tl256010256300%_
                                               _%e256011256303%_
                                               _%hd256012256306%_
                                               _%tl256013256308%_
                                               _%e256014256311%_
                                               _%hd256015256314%_
                                               _%tl256016256316%_
                                               _%e256017256319%_
                                               _%hd256018256322%_
                                               _%tl256019256324%_
                                               _%e256020256327%_
                                               _%hd256021256330%_
                                               _%tl256022256332%_
                                               _%e256023256335%_
                                               _%hd256024256338%_
                                               _%tl256025256340%_
                                               _%e256026256343%_
                                               _%hd256027256346%_
                                               _%tl256028256348%_
                                               _%e256029256351%_
                                               _%hd256030256354%_
                                               _%tl256031256356%_
                                               _%e256032256359%_
                                               _%hd256033256362%_
                                               _%tl256034256364%_
                                               _%e256035256367%_
                                               _%hd256036256370%_
                                               _%tl256037256372%_)
                                              (_%__kont256937256938%_))
                                          (_%__kont256937256938%_))))
                                  (_%__kont256937256938%_))
                              (_%__kont256937256938%_))
                          (_%__kont256937256938%_))))
                  (_%__kont256937256938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl256022256332%_))
                                                      (if (let ((__tmp257289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp257289 'bind-method!))
                  (let ((_%g256038256201%_ _%hd256027256346%_)
                        (_%g256039256202%_ _%hd256018256322%_)
                        (_%g256040256203%_ _%hd256009256298%_)
                        (_%g256041256204%_ _%hd256000256274%_))
                    (_%__kont256935256936%_
                     _%g256038256201%_
                     _%g256039256202%_
                     _%g256040256203%_
                     _%g256041256204%_))
                  (_%__kont256937256938%_))
              (_%__kont256937256938%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont256937256938%_))))
                                      (_%__kont256937256938%_))
                                  (_%__kont256937256938%_))
                              (_%__kont256937256938%_))))
                      (_%__kont256937256938%_))))
              (_%__kont256937256938%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont256937256938%_))))
                                          (_%__kont256937256938%_))
                                      (_%__kont256937256938%_))
                                  (_%__kont256937256938%_))))
                          (_%__kont256937256938%_))))
                  (_%__kont256937256938%_))
              (_%__kont256937256938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont256937256938%_))
                                          (_%__kont256937256938%_))
                                      (_%__kont256937256938%_))))
                              (_%__kont256937256938%_))))
                      (_%__kont256937256938%_))
                  (_%__kont256937256938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont256937256938%_))
                                              (_%__kont256937256938%_))
                                          (_%__kont256937256938%_))))
                                  (_%__kont256937256938%_))))
                          (_%__kont256937256938%_))))
                  (_%__kont256937256938%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self255802%_ _%stx255803%_)
        (let* ((_%__stx257175257176%_ _%stx255803%_)
               (_%g255806255846%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257175257176%_)))))
          (let ((_%__kont257177257178%_
                 (lambda (_%g255808255952%_ _%g255809255953%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g255809255953%_))
                               (cons _%g255808255952%_ '())))))
                (_%__kont257179257180%_
                 (lambda (_%g255831255875%_ _%g255832255876%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx257175257176%_))
                (let ((_%e255810255896%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx257175257176%_))))
                  (let ((_%tl255812255901%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e255810255896%_)))
                        (_%hd255811255899%_
                         (let ()
                           (declare (not safe))
                           (##car _%e255810255896%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl255812255901%_))
                        (let ((_%e255813255904%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl255812255901%_))))
                          (let ((_%tl255815255909%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e255813255904%_)))
                                (_%hd255814255907%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e255813255904%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd255814255907%_))
                                (let ((_%e255816255912%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd255814255907%_))))
                                  (let ((_%tl255818255917%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e255816255912%_)))
                                        (_%hd255817255915%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e255816255912%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd255817255915%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd255817255915%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl255818255917%_))
                                                (let ((_%e255819255920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl255818255917%_))))
                                                  (let ((_%tl255821255925%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e255819255920%_)))
                                                        (_%hd255820255923%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e255819255920%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255821255925%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl255815255909%_))
                                                            (let ((_%e255822255928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl255815255909%_))))
                      (let ((_%tl255824255933%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e255822255928%_)))
                            (_%hd255823255931%_
                             (let ()
                               (declare (not safe))
                               (##car _%e255822255928%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd255823255931%_))
                            (let ((_%e255825255936%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd255823255931%_))))
                              (let ((_%tl255827255941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e255825255936%_)))
                                    (_%hd255826255939%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e255825255936%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd255826255939%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd255826255939%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl255827255941%_))
                                            (let ((_%e255828255944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl255827255941%_))))
                                              (let ((_%tl255830255949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e255828255944%_)))
                                                    (_%hd255829255947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e255828255944%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl255830255949%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255824255933%_))
                                                        (_%__kont257177257178%_
                                                         _%hd255829255947%_
                                                         _%hd255820255923%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g255806255846%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255824255933%_))
                                                        (_%__kont257179257180%_
                                                         _%hd255823255931%_
                                                         _%hd255814255907%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g255806255846%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl255824255933%_))
                                                (_%__kont257179257180%_
                                                 _%hd255823255931%_
                                                 _%hd255814255907%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g255806255846%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl255824255933%_))
                                            (_%__kont257179257180%_
                                             _%hd255823255931%_
                                             _%hd255814255907%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g255806255846%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl255824255933%_))
                                        (_%__kont257179257180%_
                                         _%hd255823255931%_
                                         _%hd255814255907%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g255806255846%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl255824255933%_))
                                (_%__kont257179257180%_
                                 _%hd255823255931%_
                                 _%hd255814255907%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g255806255846%_))))))
                    (let () (declare (not safe)) (_%g255806255846%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl255815255909%_))
                    (let ((_%e255839255867%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl255815255909%_))))
                      (let ((_%tl255841255872%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e255839255867%_)))
                            (_%hd255840255870%_
                             (let ()
                               (declare (not safe))
                               (##car _%e255839255867%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl255841255872%_))
                            (_%__kont257179257180%_
                             _%hd255840255870%_
                             _%hd255814255907%_)
                            (let ()
                              (declare (not safe))
                              (_%g255806255846%_)))))
                    (let () (declare (not safe)) (_%g255806255846%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl255815255909%_))
                                                    (let ((_%e255839255867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl255815255909%_))))
                                                      (let ((_%tl255841255872%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e255839255867%_)))
                    (_%hd255840255870%_
                     (let () (declare (not safe)) (##car _%e255839255867%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl255841255872%_))
                    (_%__kont257179257180%_
                     _%hd255840255870%_
                     _%hd255814255907%_)
                    (let () (declare (not safe)) (_%g255806255846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g255806255846%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl255815255909%_))
                                                (let ((_%e255839255867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl255815255909%_))))
                                                  (let ((_%tl255841255872%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e255839255867%_)))
                                                        (_%hd255840255870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e255839255867%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255841255872%_))
                                                        (_%__kont257179257180%_
                                                         _%hd255840255870%_
                                                         _%hd255814255907%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g255806255846%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g255806255846%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl255815255909%_))
                                            (let ((_%e255839255867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl255815255909%_))))
                                              (let ((_%tl255841255872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e255839255867%_)))
                                                    (_%hd255840255870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e255839255867%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl255841255872%_))
                                                    (_%__kont257179257180%_
                                                     _%hd255840255870%_
                                                     _%hd255814255907%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g255806255846%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g255806255846%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl255815255909%_))
                                    (let ((_%e255839255867%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl255815255909%_))))
                                      (let ((_%tl255841255872%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e255839255867%_)))
                                            (_%hd255840255870%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e255839255867%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl255841255872%_))
                                            (_%__kont257179257180%_
                                             _%hd255840255870%_
                                             _%hd255814255907%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g255806255846%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g255806255846%_))))))
                        (let () (declare (not safe)) (_%g255806255846%_)))))
                (let () (declare (not safe)) (_%g255806255846%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self255789%_)
        (let ((_%self255792%_ _%self255789%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255792%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self255563%_)
        (let* ((_%self255566%_ _%self255563%_)
               (_%self255575255591%_ _%self255566%_)
               (_%E255577255594%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self255575255591%_
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
               (_%K255578255609%_
                (lambda (_%methods255597%_
                         _%metaclass255598%_
                         _%system?255599%_
                         _%final?255600%_
                         _%struct?255601%_
                         _%constructor255602%_
                         _%fields255603%_
                         _%slots255604%_
                         _%precendence-list255605%_
                         _%super255606%_
                         _%id255607%_)
                  (cons '@class
                        (cons _%id255607%_
                              (cons _%super255606%_
                                    (cons _%precendence-list255605%_
                                          (cons _%slots255604%_
                                                (cons _%fields255603%_
                                                      (cons _%constructor255602%_
                                                            (cons _%struct?255601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?255600%_
                                (cons _%system?255599%_
                                      (cons _%metaclass255598%_
                                            (cons (if _%methods255597%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods255597%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e255579255612%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255575255591%_ '1 '#f '#f)))
               (_%id255615%_ _%e255579255612%_)
               (_%e255580255617%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255575255591%_ '2 '#f '#f)))
               (_%super255620%_ _%e255580255617%_)
               (_%e255581255622%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255575255591%_ '3 '#f '#f)))
               (_%precendence-list255625%_ _%e255581255622%_)
               (_%e255582255627%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255575255591%_ '4 '#f '#f)))
               (_%slots255630%_ _%e255582255627%_)
               (_%e255583255632%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255575255591%_ '5 '#f '#f)))
               (_%fields255635%_ _%e255583255632%_)
               (_%e255584255637%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255575255591%_ '6 '#f '#f)))
               (_%constructor255640%_ _%e255584255637%_)
               (_%e255585255642%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255575255591%_ '7 '#f '#f)))
               (_%struct?255645%_ _%e255585255642%_)
               (_%e255586255647%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255575255591%_ '8 '#f '#f)))
               (_%final?255650%_ _%e255586255647%_)
               (_%e255587255652%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255575255591%_ '9 '#f '#f)))
               (_%system?255655%_ _%e255587255652%_)
               (_%e255588255657%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self255575255591%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass255660%_ _%e255588255657%_)
               (_%e255589255662%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self255575255591%_
                   '11
                   '#f
                   '#f)))
               (_%methods255665%_ _%e255589255662%_))
          (_%K255578255609%_
           _%methods255665%_
           _%metaclass255660%_
           _%system?255655%_
           _%final?255650%_
           _%struct?255645%_
           _%constructor255640%_
           _%fields255635%_
           _%slots255630%_
           _%precendence-list255625%_
           _%super255620%_
           _%id255615%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self255428%_)
        (let ((_%self255431%_ _%self255428%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255431%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self255293%_)
        (let ((_%self255296%_ _%self255293%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255296%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self255158%_)
        (let ((_%self255161%_ _%self255158%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255161%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255161%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self255161%_
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
      (lambda (_%self255023%_)
        (let ((_%self255026%_ _%self255023%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255026%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255026%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self255026%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self254888%_)
        (let ((_%self254891%_ _%self254888%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254891%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self254891%_
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
      (lambda (_%self254702%_)
        (let* ((_%self254705%_ _%self254702%_)
               (_%self254714254723%_ _%self254705%_)
               (_%E254716254726%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self254714254723%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K254717254745%_
                (lambda (_%dispatch254729%_
                         _%arity254730%_
                         _%signature254731%_)
                  (if _%signature254731%_
                      (let ((_%signature254733%_ _%signature254731%_))
                        (cons '@lambda
                              (cons _%arity254730%_
                                    (cons _%dispatch254729%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature254733%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature254733%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature254733%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature254733%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature254733%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity254730%_
                                  (cons _%dispatch254729%_ '()))))))
               (_%e254718254748%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254714254723%_ '1 '#f '#f)))
               (_%e254719254751%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254714254723%_ '2 '#f '#f)))
               (_%signature254754%_ _%e254719254751%_)
               (_%e254720254756%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254714254723%_ '3 '#f '#f)))
               (_%arity254759%_ _%e254720254756%_)
               (_%e254721254761%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254714254723%_ '4 '#f '#f)))
               (_%dispatch254764%_ _%e254721254761%_))
          (_%K254717254745%_
           _%dispatch254764%_
           _%arity254759%_
           _%signature254754%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self254562%_)
        (let ((_%self254565%_ _%self254562%_))
          (letrec ((_%clause-e254576%_
                    (lambda (_%clause254578%_)
                      (cdr (let ((__method257263
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause254578%_
                                     'typedecl))))
                             (if __method257263
                                 (let ()
                                   (declare (not safe))
                                   (__method257263 _%clause254578%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause254578%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e254576%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self254565%_
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
      (lambda (_%self254427%_)
        (let ((_%self254430%_ _%self254427%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254430%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self254430%_
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
      (lambda (_%self254292%_)
        (let ((_%self254295%_ _%self254292%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254295%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self254295%_
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
      (lambda (_%self254157%_)
        (let ((_%self254160%_ _%self254157%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254160%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
