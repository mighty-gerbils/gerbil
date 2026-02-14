(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1771093456)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp257858
                   (let ((__obj257852
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
                       (gxc#optimizer-info:::init! __obj257852))
                     __obj257852)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp257858)))))
    (define gxc#optimize!
      (lambda (_%ctx257460%_)
        (let ((__tmp257860
               (lambda ()
                 (let ((__tmp257862
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx257460%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx257460%_)
                          (let ((__tmp257864
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp257863
                                 (##structure-ref
                                  _%ctx257460%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp257864 __tmp257863 '#t))
                          (let ((_%code257464%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx257460%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx257460%_
                             _%code257464%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp257861
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp257862
                    gxc#current-compile-local-type
                    __tmp257861))))
              (__tmp257859 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257860
           gxc#current-compile-mutators
           __tmp257859))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx257446%_)
        (letrec ((_%load-it!257448%_
                  (lambda (_%id257458%_)
                    (if (let ((__tmp257865
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp257865 _%id257458%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id257458%_)
                          (let ((__tmp257866
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp257866 _%id257458%_ '#t)))))))
          (let* ((_%modid257450%_
                  (##structure-ref
                   _%ctx257446%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str257452%_ (symbol->string _%modid257450%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str257452%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str257452%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!257448%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!257448%_
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
      (lambda (_%ctx257383%_)
        (letrec* ((_%deps257385%_
                   (let* ((_%imports257436%_
                           (##structure-ref
                            _%ctx257383%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e257438%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx257383%_))))
                     (if _%$e257438%_
                         ((lambda (_%g257440257442%_)
                            (cons _%g257440257442%_ _%imports257436%_))
                          _%$e257438%_)
                         _%imports257436%_))))
          (let _%lp257387%_ ((_%rest257389%_ _%deps257385%_))
            (let* ((_%rest257390257398%_ _%rest257389%_)
                   (_%else257392257406%_ (lambda () '#!void))
                   (_%K257394257424%_
                    (lambda (_%rest257409%_ _%hd257410%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd257410%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp257868
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp257867
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd257410%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp257868 __tmp257867))
                                '#!void
                                (begin
                                  (let ((_%$e257413%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd257410%_))))
                                    (if _%$e257413%_
                                        ((lambda (_%pre257416%_)
                                           (_%lp257387%_
                                            (cons _%pre257416%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd257410%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e257413%_)
                                        (_%lp257387%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd257410%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd257410%_)))
                            (_%lp257387%_ _%rest257409%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd257410%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp257870
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp257869
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd257410%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp257870 __tmp257869))
                                    '#!void
                                    (begin
                                      (_%lp257387%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd257410%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd257410%_)))
                                (_%lp257387%_ _%rest257409%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd257410%_
                                     'gx#module-import::t))
                                  (_%lp257387%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd257410%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest257409%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd257410%_
                                         'gx#module-export::t))
                                      (_%lp257387%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd257410%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest257409%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd257410%_
                                             'gx#import-set::t))
                                          (_%lp257387%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd257410%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest257409%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd257410%_))))))))))
              (if (pair? _%rest257390257398%_)
                  (let ((_%hd257395257427%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest257390257398%_)))
                        (_%tl257396257429%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest257390257398%_))))
                    (let* ((_%hd257432%_ _%hd257395257427%_)
                           (_%rest257434%_ _%tl257396257429%_))
                      (_%K257394257424%_ _%rest257434%_ _%hd257432%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx257363%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx257363%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx257363%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht257365%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id257367%_
                    (##structure-ref
                     _%ctx257363%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod257369%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht257365%_ _%id257367%_)))
                   (_%$e257372%_ _%mod257369%_))
              (if _%$e257372%_
                  _%$e257372%_
                  (let* ((_%mod257375%_
                          (gxc#optimizer-import-ssxi _%ctx257363%_))
                         (_%val257380%_
                          (let ((_%$e257377%_ _%mod257375%_))
                            (if _%$e257377%_ _%$e257377%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht257365%_ _%id257367%_ _%val257380%_))
                    _%val257380%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx257361%_)
        (if (##structure-ref _%ctx257361%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx257361%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id257339%_)
        (letrec ((_%catch-e257341%_
                  (lambda (_%exn257359%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn257359%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn257359%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id257339%_))))
                    '#f))
                 (_%import-e257342%_
                  (lambda ()
                    (let* ((_%str-id257345%_
                            (let ((__tmp257871
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id257339%_))))
                              (declare (not safe))
                              (##string-append __tmp257871 '".ssxi")))
                           (_%artefact-path257352%_
                            (let ((_%odir257346257348%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir257346257348%_
                                  (let ((_%odir257350%_ _%odir257346257348%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id257345%_
                                        '".ss"))
                                     _%odir257350%_))
                                  '#f)))
                           (_%library-path257354%_
                            (let ((__tmp257872
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id257345%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp257872)))
                           (_%ssxi-path257356%_
                            (if (and _%artefact-path257352%_
                                     (file-exists? _%artefact-path257352%_))
                                _%artefact-path257352%_
                                _%library-path257354%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path257356%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path257356%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e257341%_ _%import-e257342%_)))))
    (define gxc#optimize-source
      (lambda (_%stx257324%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx257324%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx257324%_))
        (let* ((_%stx257326%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx257324%_)))
               (_%stx257328%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx257326%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx257328%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx257328%_))
          (let _%fixpoint257331%_ ((_%current257333%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx257328%_))
            (let ((_%refined257335%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current257333%_ _%refined257335%_)
                  '#!void
                  (_%fixpoint257331%_ _%refined257335%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx257328%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx257328%_))
          (let ((_%stx257337%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx257328%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx257337%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp257874 (list gxc#::generate-runtime-empty::t))
            (__tmp257873 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp257874
         '()
         __tmp257873
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args257321%_
        (apply make-instance gxc#::generate-ssxi::t _%$args257321%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp257875
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
        (__make-atomic-promise __tmp257875)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx257313%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self257316%_
                (let ((__obj257854
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj257854))
               (__tmp257876
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self257316%_ _%stx257313%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257876
           gxc#current-compile-method
           _%self257316%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self257273%_ _%stx257274%_)
        (let* ((_%g257276257286%_
                (lambda (_%g257277257283%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257277257283%_))))
               (_%g257275257310%_
                (lambda (_%g257277257289%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257277257289%_))
                      (let ((_%e257279257291%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g257277257289%_))))
                        (let ((_%hd257280257294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257279257291%_)))
                              (_%tl257281257296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257279257291%_))))
                          ((lambda (_%g257278257299%_)
                             (let ((__tmp257879
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self257273%_
                                         _%stx257274%_))))
                                   (__tmp257877
                                    (let ((__tmp257878
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp257878 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp257879
                                gx#current-expander-phi
                                __tmp257877)))
                           _%tl257281257296%_)))
                      (_%g257276257286%_ _%g257277257289%_)))))
          (_%g257275257310%_ _%stx257274%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self257212%_ _%stx257213%_)
        (let* ((_%g257215257229%_
                (lambda (_%g257216257226%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257216257226%_))))
               (_%g257214257270%_
                (lambda (_%g257216257232%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257216257232%_))
                      (let ((_%e257219257234%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g257216257232%_))))
                        (let ((_%hd257220257237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257219257234%_)))
                              (_%tl257221257239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257219257234%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257221257239%_))
                              (let ((_%e257222257242%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl257221257239%_))))
                                (let ((_%hd257223257245%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257222257242%_)))
                                      (_%tl257224257247%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257222257242%_))))
                                  ((lambda (_%g257217257250%_
                                            _%g257218257251%_)
                                     (let* ((_%ctx257264%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g257218257251%_)))
                                            (_%code257266%_
                                             (##structure-ref
                                              _%ctx257264%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp257880
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self257212%_
                                                  _%code257266%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp257880
                                        gx#current-expander-context
                                        _%ctx257264%_)))
                                   _%tl257224257247%_
                                   _%hd257223257245%_)))
                              (_%g257215257229%_ _%g257216257232%_))))
                      (_%g257215257229%_ _%g257216257232%_)))))
          (_%g257214257270%_ _%stx257213%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self257019%_ _%stx257020%_)
        (letrec ((_%generate-e257022%_
                  (lambda (_%id257197%_)
                    (let* ((_%sym257199%_
                            (if (let ((__tmp257881
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp257881))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id257197%_))
                                '#f))
                           (_%$e257201%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym257199%_))))
                      (if _%$e257201%_
                          ((lambda (_%klass257204%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym257199%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym257199%_
                                                     (cons (let ((__method257855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass257204%_ 'typedecl))))
                     (if __method257855
                         (let ()
                           (declare (not safe))
                           (__method257855 _%klass257204%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass257204%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym257199%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym257199%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e257201%_)
                          (let ((_%$e257206%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym257199%_))))
                            (if _%$e257206%_
                                ((lambda (_%type257209%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym257199%_
                                      '" "
                                      _%type257209%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type257209%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym257199%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym257199%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type257209%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym257199%_
                                                   (cons (let ((__method257856
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type257209%_ 'typedecl))))
                   (if __method257856
                       (let ()
                         (declare (not safe))
                         (__method257856 _%type257209%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type257209%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e257206%_)
                                '(begin))))))))
          (let* ((_%__stx257467257468%_ _%stx257020%_)
                 (_%g257025257063%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx257467257468%_)))))
            (let ((_%__kont257469257470%_
                   (lambda (_%g257027257179%_)
                     (_%generate-e257022%_ _%g257027257179%_)))
                  (_%__kont257471257472%_
                   (lambda (_%g257040257114%_)
                     (let ((_%types257140%_
                            (map _%generate-e257022%_
                                 (let ((__tmp257882
                                        (lambda (_%g257132257135%_
                                                 _%g257133257137%_)
                                          (cons _%g257132257135%_
                                                _%g257133257137%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp257882
                                    '()
                                    _%g257040257114%_)))))
                       (cons 'begin _%types257140%_)))))
              (let ((_%__match257522257523%_
                     (lambda (_%e257041257068%_
                              _%hd257042257071%_
                              _%tl257043257073%_
                              _%e257044257076%_
                              _%hd257045257079%_
                              _%tl257046257081%_
                              _%__splice257473257474%_
                              _%target257047257084%_
                              _%tl257049257086%_)
                       (letrec ((_%loop257050257089%_
                                 (lambda (_%hd257048257092%_
                                          _%id257054257094%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd257048257092%_))
                                       (let ((_%e257051257096%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd257048257092%_))))
                                         (let ((_%lp-tl257053257101%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e257051257096%_)))
                                               (_%lp-hd257052257099%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e257051257096%_))))
                                           (_%loop257050257089%_
                                            _%lp-tl257053257101%_
                                            (cons _%lp-hd257052257099%_
                                                  _%id257054257094%_))))
                                       (let ((_%id257055257104%_
                                              (reverse _%id257054257094%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl257046257081%_))
                                             (let ((_%e257056257106%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl257046257081%_))))
                                               (let ((_%tl257058257111%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e257056257106%_)))
                                                     (_%hd257057257109%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e257056257106%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl257058257111%_))
                                                     (_%__kont257471257472%_
                                                      _%id257055257104%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g257025257063%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g257025257063%_))))))))
                         (_%loop257050257089%_ _%target257047257084%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx257467257468%_))
                    (let ((_%e257028257147%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx257467257468%_))))
                      (let ((_%tl257030257152%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257028257147%_)))
                            (_%hd257029257150%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257028257147%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl257030257152%_))
                            (let ((_%e257031257155%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl257030257152%_))))
                              (let ((_%tl257033257160%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e257031257155%_)))
                                    (_%hd257032257158%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e257031257155%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd257032257158%_))
                                    (let ((_%e257034257163%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd257032257158%_))))
                                      (let ((_%tl257036257168%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e257034257163%_)))
                                            (_%hd257035257166%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e257034257163%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257036257168%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257033257160%_))
                                                (let ((_%e257037257171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257033257160%_))))
                                                  (let ((_%tl257039257176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257037257171%_)))
                                                        (_%hd257038257174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257037257171%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257039257176%_))
                                                        (_%__kont257469257470%_
                                                         _%hd257035257166%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd257032257158%_))
                                                            (let ((_%__splice257473257474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd257032257158%_
                              '0))))
                      (let ((_%tl257049257086%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice257473257474%_ '1)))
                            (_%target257047257084%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice257473257474%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl257049257086%_))
                            (_%__match257522257523%_
                             _%e257028257147%_
                             _%hd257029257150%_
                             _%tl257030257152%_
                             _%e257031257155%_
                             _%hd257032257158%_
                             _%tl257033257160%_
                             _%__splice257473257474%_
                             _%target257047257084%_
                             _%tl257049257086%_)
                            (let ()
                              (declare (not safe))
                              (_%g257025257063%_)))))
                    (let () (declare (not safe)) (_%g257025257063%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd257032257158%_))
                                                    (let ((_%__splice257473257474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd257032257158%_
                                                              '0))))
                                                      (let ((_%tl257049257086%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice257473257474%_ '1)))
                    (_%target257047257084%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice257473257474%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl257049257086%_))
                    (_%__match257522257523%_
                     _%e257028257147%_
                     _%hd257029257150%_
                     _%tl257030257152%_
                     _%e257031257155%_
                     _%hd257032257158%_
                     _%tl257033257160%_
                     _%__splice257473257474%_
                     _%target257047257084%_
                     _%tl257049257086%_)
                    (let () (declare (not safe)) (_%g257025257063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257025257063%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd257032257158%_))
                                                (let ((_%__splice257473257474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd257032257158%_
                                                          '0))))
                                                  (let ((_%tl257049257086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice257473257474%_
                                                            '1)))
                                                        (_%target257047257084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice257473257474%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257049257086%_))
                                                        (_%__match257522257523%_
                                                         _%e257028257147%_
                                                         _%hd257029257150%_
                                                         _%tl257030257152%_
                                                         _%e257031257155%_
                                                         _%hd257032257158%_
                                                         _%tl257033257160%_
                                                         _%__splice257473257474%_
                                                         _%target257047257084%_
                                                         _%tl257049257086%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257025257063%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257025257063%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd257032257158%_))
                                        (let ((_%__splice257473257474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd257032257158%_
                                                  '0))))
                                          (let ((_%tl257049257086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice257473257474%_
                                                    '1)))
                                                (_%target257047257084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice257473257474%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257049257086%_))
                                                (_%__match257522257523%_
                                                 _%e257028257147%_
                                                 _%hd257029257150%_
                                                 _%tl257030257152%_
                                                 _%e257031257155%_
                                                 _%hd257032257158%_
                                                 _%tl257033257160%_
                                                 _%__splice257473257474%_
                                                 _%target257047257084%_
                                                 _%tl257049257086%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257025257063%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g257025257063%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g257025257063%_)))))
                    (let () (declare (not safe)) (_%g257025257063%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self256572%_ _%stx256573%_)
        (let* ((_%__stx257525257526%_ _%stx256573%_)
               (_%g256577256679%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257525257526%_)))))
          (let ((_%__kont257527257528%_
                 (lambda (_%g256579256969%_
                          _%g256580256970%_
                          _%g256581256971%_
                          _%g256582256972%_
                          _%g256583256973%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256582256972%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g256581256971%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g256580256970%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g256579256969%_))
                                                 '())))))))
                (_%__kont257529257530%_
                 (lambda (_%g256632256795%_
                          _%g256633256796%_
                          _%g256634256797%_
                          _%g256635256798%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256634256797%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g256633256796%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g256632256795%_))
                                           (cons '#f '())))))))
                (_%__kont257531257532%_ (lambda () '(begin))))
            (let ((_%__match257660257661%_
                   (lambda (_%e256584256841%_
                            _%hd256585256844%_
                            _%tl256586256846%_
                            _%e256587256849%_
                            _%hd256588256852%_
                            _%tl256589256854%_
                            _%e256590256857%_
                            _%hd256591256860%_
                            _%tl256592256862%_
                            _%e256593256865%_
                            _%hd256594256868%_
                            _%tl256595256870%_
                            _%e256596256873%_
                            _%hd256597256876%_
                            _%tl256598256878%_
                            _%e256599256881%_
                            _%hd256600256884%_
                            _%tl256601256886%_
                            _%e256602256889%_
                            _%hd256603256892%_
                            _%tl256604256894%_
                            _%e256605256897%_
                            _%hd256606256900%_
                            _%tl256607256902%_
                            _%e256608256905%_
                            _%hd256609256908%_
                            _%tl256610256910%_
                            _%e256611256913%_
                            _%hd256612256916%_
                            _%tl256613256918%_
                            _%e256614256921%_
                            _%hd256615256924%_
                            _%tl256616256926%_
                            _%e256617256929%_
                            _%hd256618256932%_
                            _%tl256619256934%_
                            _%e256620256937%_
                            _%hd256621256940%_
                            _%tl256622256942%_
                            _%e256623256945%_
                            _%hd256624256948%_
                            _%tl256625256950%_
                            _%e256626256953%_
                            _%hd256627256956%_
                            _%tl256628256958%_
                            _%e256629256961%_
                            _%hd256630256964%_
                            _%tl256631256966%_)
                     (let ((_%g256579256969%_ _%hd256630256964%_)
                           (_%g256580256970%_ _%hd256621256940%_)
                           (_%g256581256971%_ _%hd256612256916%_)
                           (_%g256582256972%_ _%hd256603256892%_)
                           (_%g256583256973%_ _%hd256594256868%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g256583256973%_
                              'bind-method!))
                           (_%__kont257527257528%_
                            _%g256579256969%_
                            _%g256580256970%_
                            _%g256581256971%_
                            _%g256582256972%_
                            _%g256583256973%_)
                           (_%__kont257531257532%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257525257526%_))
                  (let ((_%e256584256841%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257525257526%_))))
                    (let ((_%tl256586256846%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256584256841%_)))
                          (_%hd256585256844%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256584256841%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl256586256846%_))
                          (let ((_%e256587256849%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl256586256846%_))))
                            (let ((_%tl256589256854%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e256587256849%_)))
                                  (_%hd256588256852%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e256587256849%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd256588256852%_))
                                  (let ((_%e256590256857%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd256588256852%_))))
                                    (let ((_%tl256592256862%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e256590256857%_)))
                                          (_%hd256591256860%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e256590256857%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd256591256860%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd256591256860%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl256592256862%_))
                                                  (let ((_%e256593256865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl256592256862%_))))
                                                    (let ((_%tl256595256870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e256593256865%_)))
                                                          (_%hd256594256868%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e256593256865%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl256595256870%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl256589256854%_))
                      (let ((_%e256596256873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl256589256854%_))))
                        (let ((_%tl256598256878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256596256873%_)))
                              (_%hd256597256876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256596256873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd256597256876%_))
                              (let ((_%e256599256881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd256597256876%_))))
                                (let ((_%tl256601256886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256599256881%_)))
                                      (_%hd256600256884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256599256881%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd256600256884%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd256600256884%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl256601256886%_))
                                              (let ((_%e256602256889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl256601256886%_))))
                                                (let ((_%tl256604256894%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e256602256889%_)))
                                                      (_%hd256603256892%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e256602256889%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl256604256894%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl256598256878%_))
                                                          (let ((_%e256605256897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl256598256878%_))))
                    (let ((_%tl256607256902%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256605256897%_)))
                          (_%hd256606256900%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256605256897%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd256606256900%_))
                          (let ((_%e256608256905%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd256606256900%_))))
                            (let ((_%tl256610256910%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e256608256905%_)))
                                  (_%hd256609256908%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e256608256905%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd256609256908%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd256609256908%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl256610256910%_))
                                          (let ((_%e256611256913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl256610256910%_))))
                                            (let ((_%tl256613256918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e256611256913%_)))
                                                  (_%hd256612256916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e256611256913%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl256613256918%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl256607256902%_))
                                                      (let ((_%e256614256921%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl256607256902%_))))
                (let ((_%tl256616256926%_
                       (let () (declare (not safe)) (##cdr _%e256614256921%_)))
                      (_%hd256615256924%_
                       (let ()
                         (declare (not safe))
                         (##car _%e256614256921%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd256615256924%_))
                      (let ((_%e256617256929%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd256615256924%_))))
                        (let ((_%tl256619256934%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256617256929%_)))
                              (_%hd256618256932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256617256929%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd256618256932%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd256618256932%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl256619256934%_))
                                      (let ((_%e256620256937%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl256619256934%_))))
                                        (let ((_%tl256622256942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256620256937%_)))
                                              (_%hd256621256940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256620256937%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256622256942%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl256616256926%_))
                                                  (let ((_%e256623256945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl256616256926%_))))
                                                    (let ((_%tl256625256950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e256623256945%_)))
                                                          (_%hd256624256948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e256623256945%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd256624256948%_))
                                                          (let ((_%e256626256953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd256624256948%_))))
                    (let ((_%tl256628256958%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256626256953%_)))
                          (_%hd256627256956%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256626256953%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd256627256956%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd256627256956%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl256628256958%_))
                                  (let ((_%e256629256961%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl256628256958%_))))
                                    (let ((_%tl256631256966%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e256629256961%_)))
                                          (_%hd256630256964%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e256629256961%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl256631256966%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256625256950%_))
                                              (_%__match257660257661%_
                                               _%e256584256841%_
                                               _%hd256585256844%_
                                               _%tl256586256846%_
                                               _%e256587256849%_
                                               _%hd256588256852%_
                                               _%tl256589256854%_
                                               _%e256590256857%_
                                               _%hd256591256860%_
                                               _%tl256592256862%_
                                               _%e256593256865%_
                                               _%hd256594256868%_
                                               _%tl256595256870%_
                                               _%e256596256873%_
                                               _%hd256597256876%_
                                               _%tl256598256878%_
                                               _%e256599256881%_
                                               _%hd256600256884%_
                                               _%tl256601256886%_
                                               _%e256602256889%_
                                               _%hd256603256892%_
                                               _%tl256604256894%_
                                               _%e256605256897%_
                                               _%hd256606256900%_
                                               _%tl256607256902%_
                                               _%e256608256905%_
                                               _%hd256609256908%_
                                               _%tl256610256910%_
                                               _%e256611256913%_
                                               _%hd256612256916%_
                                               _%tl256613256918%_
                                               _%e256614256921%_
                                               _%hd256615256924%_
                                               _%tl256616256926%_
                                               _%e256617256929%_
                                               _%hd256618256932%_
                                               _%tl256619256934%_
                                               _%e256620256937%_
                                               _%hd256621256940%_
                                               _%tl256622256942%_
                                               _%e256623256945%_
                                               _%hd256624256948%_
                                               _%tl256625256950%_
                                               _%e256626256953%_
                                               _%hd256627256956%_
                                               _%tl256628256958%_
                                               _%e256629256961%_
                                               _%hd256630256964%_
                                               _%tl256631256966%_)
                                              (_%__kont257531257532%_))
                                          (_%__kont257531257532%_))))
                                  (_%__kont257531257532%_))
                              (_%__kont257531257532%_))
                          (_%__kont257531257532%_))))
                  (_%__kont257531257532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl256616256926%_))
                                                      (if (let ((__tmp257883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp257883 'bind-method!))
                  (let ((_%g256632256795%_ _%hd256621256940%_)
                        (_%g256633256796%_ _%hd256612256916%_)
                        (_%g256634256797%_ _%hd256603256892%_)
                        (_%g256635256798%_ _%hd256594256868%_))
                    (_%__kont257529257530%_
                     _%g256632256795%_
                     _%g256633256796%_
                     _%g256634256797%_
                     _%g256635256798%_))
                  (_%__kont257531257532%_))
              (_%__kont257531257532%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont257531257532%_))))
                                      (_%__kont257531257532%_))
                                  (_%__kont257531257532%_))
                              (_%__kont257531257532%_))))
                      (_%__kont257531257532%_))))
              (_%__kont257531257532%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257531257532%_))))
                                          (_%__kont257531257532%_))
                                      (_%__kont257531257532%_))
                                  (_%__kont257531257532%_))))
                          (_%__kont257531257532%_))))
                  (_%__kont257531257532%_))
              (_%__kont257531257532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont257531257532%_))
                                          (_%__kont257531257532%_))
                                      (_%__kont257531257532%_))))
                              (_%__kont257531257532%_))))
                      (_%__kont257531257532%_))
                  (_%__kont257531257532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257531257532%_))
                                              (_%__kont257531257532%_))
                                          (_%__kont257531257532%_))))
                                  (_%__kont257531257532%_))))
                          (_%__kont257531257532%_))))
                  (_%__kont257531257532%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self256396%_ _%stx256397%_)
        (let* ((_%__stx257769257770%_ _%stx256397%_)
               (_%g256400256440%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257769257770%_)))))
          (let ((_%__kont257771257772%_
                 (lambda (_%g256402256546%_ _%g256403256547%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256403256547%_))
                               (cons _%g256402256546%_ '())))))
                (_%__kont257773257774%_
                 (lambda (_%g256425256469%_ _%g256426256470%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx257769257770%_))
                (let ((_%e256404256490%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx257769257770%_))))
                  (let ((_%tl256406256495%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e256404256490%_)))
                        (_%hd256405256493%_
                         (let ()
                           (declare (not safe))
                           (##car _%e256404256490%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl256406256495%_))
                        (let ((_%e256407256498%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl256406256495%_))))
                          (let ((_%tl256409256503%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e256407256498%_)))
                                (_%hd256408256501%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e256407256498%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd256408256501%_))
                                (let ((_%e256410256506%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd256408256501%_))))
                                  (let ((_%tl256412256511%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e256410256506%_)))
                                        (_%hd256411256509%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e256410256506%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd256411256509%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd256411256509%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256412256511%_))
                                                (let ((_%e256413256514%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256412256511%_))))
                                                  (let ((_%tl256415256519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256413256514%_)))
                                                        (_%hd256414256517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256413256514%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256415256519%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl256409256503%_))
                                                            (let ((_%e256416256522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl256409256503%_))))
                      (let ((_%tl256418256527%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256416256522%_)))
                            (_%hd256417256525%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256416256522%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd256417256525%_))
                            (let ((_%e256419256530%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd256417256525%_))))
                              (let ((_%tl256421256535%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e256419256530%_)))
                                    (_%hd256420256533%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e256419256530%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd256420256533%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd256420256533%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256421256535%_))
                                            (let ((_%e256422256538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256421256535%_))))
                                              (let ((_%tl256424256543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256422256538%_)))
                                                    (_%hd256423256541%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256422256538%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256424256543%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256418256527%_))
                                                        (_%__kont257771257772%_
                                                         _%hd256423256541%_
                                                         _%hd256414256517%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256400256440%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256418256527%_))
                                                        (_%__kont257773257774%_
                                                         _%hd256417256525%_
                                                         _%hd256408256501%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256400256440%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl256418256527%_))
                                                (_%__kont257773257774%_
                                                 _%hd256417256525%_
                                                 _%hd256408256501%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256400256440%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256418256527%_))
                                            (_%__kont257773257774%_
                                             _%hd256417256525%_
                                             _%hd256408256501%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g256400256440%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl256418256527%_))
                                        (_%__kont257773257774%_
                                         _%hd256417256525%_
                                         _%hd256408256501%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g256400256440%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl256418256527%_))
                                (_%__kont257773257774%_
                                 _%hd256417256525%_
                                 _%hd256408256501%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g256400256440%_))))))
                    (let () (declare (not safe)) (_%g256400256440%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl256409256503%_))
                    (let ((_%e256433256461%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl256409256503%_))))
                      (let ((_%tl256435256466%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256433256461%_)))
                            (_%hd256434256464%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256433256461%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl256435256466%_))
                            (_%__kont257773257774%_
                             _%hd256434256464%_
                             _%hd256408256501%_)
                            (let ()
                              (declare (not safe))
                              (_%g256400256440%_)))))
                    (let () (declare (not safe)) (_%g256400256440%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl256409256503%_))
                                                    (let ((_%e256433256461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl256409256503%_))))
                                                      (let ((_%tl256435256466%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e256433256461%_)))
                    (_%hd256434256464%_
                     (let () (declare (not safe)) (##car _%e256433256461%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl256435256466%_))
                    (_%__kont257773257774%_
                     _%hd256434256464%_
                     _%hd256408256501%_)
                    (let () (declare (not safe)) (_%g256400256440%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256400256440%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256409256503%_))
                                                (let ((_%e256433256461%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256409256503%_))))
                                                  (let ((_%tl256435256466%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256433256461%_)))
                                                        (_%hd256434256464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256433256461%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256435256466%_))
                                                        (_%__kont257773257774%_
                                                         _%hd256434256464%_
                                                         _%hd256408256501%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256400256440%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256400256440%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256409256503%_))
                                            (let ((_%e256433256461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256409256503%_))))
                                              (let ((_%tl256435256466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256433256461%_)))
                                                    (_%hd256434256464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256433256461%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256435256466%_))
                                                    (_%__kont257773257774%_
                                                     _%hd256434256464%_
                                                     _%hd256408256501%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256400256440%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g256400256440%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl256409256503%_))
                                    (let ((_%e256433256461%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl256409256503%_))))
                                      (let ((_%tl256435256466%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e256433256461%_)))
                                            (_%hd256434256464%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e256433256461%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256435256466%_))
                                            (_%__kont257773257774%_
                                             _%hd256434256464%_
                                             _%hd256408256501%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g256400256440%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g256400256440%_))))))
                        (let () (declare (not safe)) (_%g256400256440%_)))))
                (let () (declare (not safe)) (_%g256400256440%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self256383%_)
        (let ((_%self256386%_ _%self256383%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256386%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self256157%_)
        (let* ((_%self256160%_ _%self256157%_)
               (_%self256169256185%_ _%self256160%_)
               (_%E256171256188%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self256169256185%_
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
               (_%K256172256203%_
                (lambda (_%methods256191%_
                         _%metaclass256192%_
                         _%system?256193%_
                         _%final?256194%_
                         _%struct?256195%_
                         _%constructor256196%_
                         _%fields256197%_
                         _%slots256198%_
                         _%precendence-list256199%_
                         _%super256200%_
                         _%id256201%_)
                  (cons '@class
                        (cons _%id256201%_
                              (cons _%super256200%_
                                    (cons _%precendence-list256199%_
                                          (cons _%slots256198%_
                                                (cons _%fields256197%_
                                                      (cons _%constructor256196%_
                                                            (cons _%struct?256195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?256194%_
                                (cons _%system?256193%_
                                      (cons _%metaclass256192%_
                                            (cons (if _%methods256191%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods256191%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e256173256206%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256169256185%_ '1 '#f '#f)))
               (_%id256209%_ _%e256173256206%_)
               (_%e256174256211%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256169256185%_ '2 '#f '#f)))
               (_%super256214%_ _%e256174256211%_)
               (_%e256175256216%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256169256185%_ '3 '#f '#f)))
               (_%precendence-list256219%_ _%e256175256216%_)
               (_%e256176256221%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256169256185%_ '4 '#f '#f)))
               (_%slots256224%_ _%e256176256221%_)
               (_%e256177256226%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256169256185%_ '5 '#f '#f)))
               (_%fields256229%_ _%e256177256226%_)
               (_%e256178256231%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256169256185%_ '6 '#f '#f)))
               (_%constructor256234%_ _%e256178256231%_)
               (_%e256179256236%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256169256185%_ '7 '#f '#f)))
               (_%struct?256239%_ _%e256179256236%_)
               (_%e256180256241%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256169256185%_ '8 '#f '#f)))
               (_%final?256244%_ _%e256180256241%_)
               (_%e256181256246%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256169256185%_ '9 '#f '#f)))
               (_%system?256249%_ _%e256181256246%_)
               (_%e256182256251%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self256169256185%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass256254%_ _%e256182256251%_)
               (_%e256183256256%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self256169256185%_
                   '11
                   '#f
                   '#f)))
               (_%methods256259%_ _%e256183256256%_))
          (_%K256172256203%_
           _%methods256259%_
           _%metaclass256254%_
           _%system?256249%_
           _%final?256244%_
           _%struct?256239%_
           _%constructor256234%_
           _%fields256229%_
           _%slots256224%_
           _%precendence-list256219%_
           _%super256214%_
           _%id256209%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self256022%_)
        (let ((_%self256025%_ _%self256022%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256025%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self255887%_)
        (let ((_%self255890%_ _%self255887%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255890%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self255752%_)
        (let ((_%self255755%_ _%self255752%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255755%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255755%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self255755%_
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
      (lambda (_%self255617%_)
        (let ((_%self255620%_ _%self255617%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255620%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255620%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self255620%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self255482%_)
        (let ((_%self255485%_ _%self255482%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255485%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255485%_
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
      (lambda (_%self255296%_)
        (let* ((_%self255299%_ _%self255296%_)
               (_%self255308255317%_ _%self255299%_)
               (_%E255310255320%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self255308255317%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K255311255339%_
                (lambda (_%dispatch255323%_
                         _%arity255324%_
                         _%signature255325%_)
                  (if _%signature255325%_
                      (let ((_%signature255327%_ _%signature255325%_))
                        (cons '@lambda
                              (cons _%arity255324%_
                                    (cons _%dispatch255323%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature255327%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature255327%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature255327%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature255327%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature255327%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity255324%_
                                  (cons _%dispatch255323%_ '()))))))
               (_%e255312255342%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255308255317%_ '1 '#f '#f)))
               (_%e255313255345%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255308255317%_ '2 '#f '#f)))
               (_%signature255348%_ _%e255313255345%_)
               (_%e255314255350%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255308255317%_ '3 '#f '#f)))
               (_%arity255353%_ _%e255314255350%_)
               (_%e255315255355%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255308255317%_ '4 '#f '#f)))
               (_%dispatch255358%_ _%e255315255355%_))
          (_%K255311255339%_
           _%dispatch255358%_
           _%arity255353%_
           _%signature255348%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self255156%_)
        (let ((_%self255159%_ _%self255156%_))
          (letrec ((_%clause-e255170%_
                    (lambda (_%clause255172%_)
                      (cdr (let ((__method257857
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause255172%_
                                     'typedecl))))
                             (if __method257857
                                 (let ()
                                   (declare (not safe))
                                   (__method257857 _%clause255172%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause255172%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e255170%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self255159%_
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
      (lambda (_%self255021%_)
        (let ((_%self255024%_ _%self255021%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255024%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255024%_
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
      (lambda (_%self254886%_)
        (let ((_%self254889%_ _%self254886%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254889%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self254889%_
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
      (lambda (_%self254751%_)
        (let ((_%self254754%_ _%self254751%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254754%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
