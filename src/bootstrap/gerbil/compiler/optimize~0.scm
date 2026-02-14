(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1771092636)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp257854
                   (let ((__obj257848
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
                       (gxc#optimizer-info:::init! __obj257848))
                     __obj257848)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp257854)))))
    (define gxc#optimize!
      (lambda (_%ctx257456%_)
        (let ((__tmp257856
               (lambda ()
                 (let ((__tmp257858
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx257456%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx257456%_)
                          (let ((__tmp257860
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp257859
                                 (##structure-ref
                                  _%ctx257456%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp257860 __tmp257859 '#t))
                          (let ((_%code257460%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx257456%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx257456%_
                             _%code257460%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp257857
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp257858
                    gxc#current-compile-local-type
                    __tmp257857))))
              (__tmp257855 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257856
           gxc#current-compile-mutators
           __tmp257855))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx257442%_)
        (letrec ((_%load-it!257444%_
                  (lambda (_%id257454%_)
                    (if (let ((__tmp257861
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp257861 _%id257454%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id257454%_)
                          (let ((__tmp257862
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp257862 _%id257454%_ '#t)))))))
          (let* ((_%modid257446%_
                  (##structure-ref
                   _%ctx257442%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str257448%_ (symbol->string _%modid257446%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str257448%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str257448%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!257444%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!257444%_
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
      (lambda (_%ctx257379%_)
        (letrec* ((_%deps257381%_
                   (let* ((_%imports257432%_
                           (##structure-ref
                            _%ctx257379%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e257434%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx257379%_))))
                     (if _%$e257434%_
                         ((lambda (_%g257436257438%_)
                            (cons _%g257436257438%_ _%imports257432%_))
                          _%$e257434%_)
                         _%imports257432%_))))
          (let _%lp257383%_ ((_%rest257385%_ _%deps257381%_))
            (let* ((_%rest257386257394%_ _%rest257385%_)
                   (_%else257388257402%_ (lambda () '#!void))
                   (_%K257390257420%_
                    (lambda (_%rest257405%_ _%hd257406%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd257406%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp257864
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp257863
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd257406%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp257864 __tmp257863))
                                '#!void
                                (begin
                                  (let ((_%$e257409%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd257406%_))))
                                    (if _%$e257409%_
                                        ((lambda (_%pre257412%_)
                                           (_%lp257383%_
                                            (cons _%pre257412%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd257406%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e257409%_)
                                        (_%lp257383%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd257406%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd257406%_)))
                            (_%lp257383%_ _%rest257405%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd257406%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp257866
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp257865
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd257406%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp257866 __tmp257865))
                                    '#!void
                                    (begin
                                      (_%lp257383%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd257406%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd257406%_)))
                                (_%lp257383%_ _%rest257405%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd257406%_
                                     'gx#module-import::t))
                                  (_%lp257383%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd257406%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest257405%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd257406%_
                                         'gx#module-export::t))
                                      (_%lp257383%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd257406%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest257405%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd257406%_
                                             'gx#import-set::t))
                                          (_%lp257383%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd257406%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest257405%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd257406%_))))))))))
              (if (pair? _%rest257386257394%_)
                  (let ((_%hd257391257423%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest257386257394%_)))
                        (_%tl257392257425%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest257386257394%_))))
                    (let* ((_%hd257428%_ _%hd257391257423%_)
                           (_%rest257430%_ _%tl257392257425%_))
                      (_%K257390257420%_ _%rest257430%_ _%hd257428%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx257359%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx257359%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx257359%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht257361%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id257363%_
                    (##structure-ref
                     _%ctx257359%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod257365%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht257361%_ _%id257363%_)))
                   (_%$e257368%_ _%mod257365%_))
              (if _%$e257368%_
                  _%$e257368%_
                  (let* ((_%mod257371%_
                          (gxc#optimizer-import-ssxi _%ctx257359%_))
                         (_%val257376%_
                          (let ((_%$e257373%_ _%mod257371%_))
                            (if _%$e257373%_ _%$e257373%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht257361%_ _%id257363%_ _%val257376%_))
                    _%val257376%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx257357%_)
        (if (##structure-ref _%ctx257357%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx257357%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id257335%_)
        (letrec ((_%catch-e257337%_
                  (lambda (_%exn257355%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn257355%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn257355%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id257335%_))))
                    '#f))
                 (_%import-e257338%_
                  (lambda ()
                    (let* ((_%str-id257341%_
                            (let ((__tmp257867
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id257335%_))))
                              (declare (not safe))
                              (##string-append __tmp257867 '".ssxi")))
                           (_%artefact-path257348%_
                            (let ((_%odir257342257344%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir257342257344%_
                                  (let ((_%odir257346%_ _%odir257342257344%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id257341%_
                                        '".ss"))
                                     _%odir257346%_))
                                  '#f)))
                           (_%library-path257350%_
                            (let ((__tmp257868
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id257341%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp257868)))
                           (_%ssxi-path257352%_
                            (if (and _%artefact-path257348%_
                                     (file-exists? _%artefact-path257348%_))
                                _%artefact-path257348%_
                                _%library-path257350%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path257352%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path257352%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e257337%_ _%import-e257338%_)))))
    (define gxc#optimize-source
      (lambda (_%stx257320%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx257320%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx257320%_))
        (let* ((_%stx257322%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx257320%_)))
               (_%stx257324%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx257322%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx257324%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx257324%_))
          (let _%fixpoint257327%_ ((_%current257329%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx257324%_))
            (let ((_%refined257331%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current257329%_ _%refined257331%_)
                  '#!void
                  (_%fixpoint257327%_ _%refined257331%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx257324%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx257324%_))
          (let ((_%stx257333%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx257324%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx257333%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp257870 (list gxc#::generate-runtime-empty::t))
            (__tmp257869 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp257870
         '()
         __tmp257869
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args257317%_
        (apply make-instance gxc#::generate-ssxi::t _%$args257317%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp257871
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
        (__make-atomic-promise __tmp257871)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx257309%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self257312%_
                (let ((__obj257850
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj257850))
               (__tmp257872
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self257312%_ _%stx257309%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257872
           gxc#current-compile-method
           _%self257312%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self257269%_ _%stx257270%_)
        (let* ((_%g257272257282%_
                (lambda (_%g257273257279%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257273257279%_))))
               (_%g257271257306%_
                (lambda (_%g257273257285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257273257285%_))
                      (let ((_%e257275257287%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g257273257285%_))))
                        (let ((_%hd257276257290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257275257287%_)))
                              (_%tl257277257292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257275257287%_))))
                          ((lambda (_%g257274257295%_)
                             (let ((__tmp257875
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self257269%_
                                         _%stx257270%_))))
                                   (__tmp257873
                                    (let ((__tmp257874
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp257874 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp257875
                                gx#current-expander-phi
                                __tmp257873)))
                           _%tl257277257292%_)))
                      (_%g257272257282%_ _%g257273257285%_)))))
          (_%g257271257306%_ _%stx257270%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self257208%_ _%stx257209%_)
        (let* ((_%g257211257225%_
                (lambda (_%g257212257222%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257212257222%_))))
               (_%g257210257266%_
                (lambda (_%g257212257228%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257212257228%_))
                      (let ((_%e257215257230%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g257212257228%_))))
                        (let ((_%hd257216257233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257215257230%_)))
                              (_%tl257217257235%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257215257230%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257217257235%_))
                              (let ((_%e257218257238%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl257217257235%_))))
                                (let ((_%hd257219257241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257218257238%_)))
                                      (_%tl257220257243%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257218257238%_))))
                                  ((lambda (_%g257213257246%_
                                            _%g257214257247%_)
                                     (let* ((_%ctx257260%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g257214257247%_)))
                                            (_%code257262%_
                                             (##structure-ref
                                              _%ctx257260%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp257876
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self257208%_
                                                  _%code257262%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp257876
                                        gx#current-expander-context
                                        _%ctx257260%_)))
                                   _%tl257220257243%_
                                   _%hd257219257241%_)))
                              (_%g257211257225%_ _%g257212257228%_))))
                      (_%g257211257225%_ _%g257212257228%_)))))
          (_%g257210257266%_ _%stx257209%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self257015%_ _%stx257016%_)
        (letrec ((_%generate-e257018%_
                  (lambda (_%id257193%_)
                    (let* ((_%sym257195%_
                            (if (let ((__tmp257877
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp257877))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id257193%_))
                                '#f))
                           (_%$e257197%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym257195%_))))
                      (if _%$e257197%_
                          ((lambda (_%klass257200%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym257195%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym257195%_
                                                     (cons (let ((__method257851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass257200%_ 'typedecl))))
                     (if __method257851
                         (let ()
                           (declare (not safe))
                           (__method257851 _%klass257200%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass257200%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym257195%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym257195%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e257197%_)
                          (let ((_%$e257202%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym257195%_))))
                            (if _%$e257202%_
                                ((lambda (_%type257205%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym257195%_
                                      '" "
                                      _%type257205%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type257205%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym257195%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym257195%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type257205%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym257195%_
                                                   (cons (let ((__method257852
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type257205%_ 'typedecl))))
                   (if __method257852
                       (let ()
                         (declare (not safe))
                         (__method257852 _%type257205%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type257205%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e257202%_)
                                '(begin))))))))
          (let* ((_%__stx257463257464%_ _%stx257016%_)
                 (_%g257021257059%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx257463257464%_)))))
            (let ((_%__kont257465257466%_
                   (lambda (_%g257023257175%_)
                     (_%generate-e257018%_ _%g257023257175%_)))
                  (_%__kont257467257468%_
                   (lambda (_%g257036257110%_)
                     (let ((_%types257136%_
                            (map _%generate-e257018%_
                                 (let ((__tmp257878
                                        (lambda (_%g257128257131%_
                                                 _%g257129257133%_)
                                          (cons _%g257128257131%_
                                                _%g257129257133%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp257878
                                    '()
                                    _%g257036257110%_)))))
                       (cons 'begin _%types257136%_)))))
              (let ((_%__match257518257519%_
                     (lambda (_%e257037257064%_
                              _%hd257038257067%_
                              _%tl257039257069%_
                              _%e257040257072%_
                              _%hd257041257075%_
                              _%tl257042257077%_
                              _%__splice257469257470%_
                              _%target257043257080%_
                              _%tl257045257082%_)
                       (letrec ((_%loop257046257085%_
                                 (lambda (_%hd257044257088%_
                                          _%id257050257090%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd257044257088%_))
                                       (let ((_%e257047257092%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd257044257088%_))))
                                         (let ((_%lp-tl257049257097%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e257047257092%_)))
                                               (_%lp-hd257048257095%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e257047257092%_))))
                                           (_%loop257046257085%_
                                            _%lp-tl257049257097%_
                                            (cons _%lp-hd257048257095%_
                                                  _%id257050257090%_))))
                                       (let ((_%id257051257100%_
                                              (reverse _%id257050257090%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl257042257077%_))
                                             (let ((_%e257052257102%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl257042257077%_))))
                                               (let ((_%tl257054257107%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e257052257102%_)))
                                                     (_%hd257053257105%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e257052257102%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl257054257107%_))
                                                     (_%__kont257467257468%_
                                                      _%id257051257100%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g257021257059%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g257021257059%_))))))))
                         (_%loop257046257085%_ _%target257043257080%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx257463257464%_))
                    (let ((_%e257024257143%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx257463257464%_))))
                      (let ((_%tl257026257148%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257024257143%_)))
                            (_%hd257025257146%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257024257143%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl257026257148%_))
                            (let ((_%e257027257151%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl257026257148%_))))
                              (let ((_%tl257029257156%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e257027257151%_)))
                                    (_%hd257028257154%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e257027257151%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd257028257154%_))
                                    (let ((_%e257030257159%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd257028257154%_))))
                                      (let ((_%tl257032257164%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e257030257159%_)))
                                            (_%hd257031257162%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e257030257159%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257032257164%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257029257156%_))
                                                (let ((_%e257033257167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257029257156%_))))
                                                  (let ((_%tl257035257172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257033257167%_)))
                                                        (_%hd257034257170%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257033257167%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257035257172%_))
                                                        (_%__kont257465257466%_
                                                         _%hd257031257162%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd257028257154%_))
                                                            (let ((_%__splice257469257470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd257028257154%_
                              '0))))
                      (let ((_%tl257045257082%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice257469257470%_ '1)))
                            (_%target257043257080%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice257469257470%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl257045257082%_))
                            (_%__match257518257519%_
                             _%e257024257143%_
                             _%hd257025257146%_
                             _%tl257026257148%_
                             _%e257027257151%_
                             _%hd257028257154%_
                             _%tl257029257156%_
                             _%__splice257469257470%_
                             _%target257043257080%_
                             _%tl257045257082%_)
                            (let ()
                              (declare (not safe))
                              (_%g257021257059%_)))))
                    (let () (declare (not safe)) (_%g257021257059%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd257028257154%_))
                                                    (let ((_%__splice257469257470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd257028257154%_
                                                              '0))))
                                                      (let ((_%tl257045257082%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice257469257470%_ '1)))
                    (_%target257043257080%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice257469257470%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl257045257082%_))
                    (_%__match257518257519%_
                     _%e257024257143%_
                     _%hd257025257146%_
                     _%tl257026257148%_
                     _%e257027257151%_
                     _%hd257028257154%_
                     _%tl257029257156%_
                     _%__splice257469257470%_
                     _%target257043257080%_
                     _%tl257045257082%_)
                    (let () (declare (not safe)) (_%g257021257059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257021257059%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd257028257154%_))
                                                (let ((_%__splice257469257470%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd257028257154%_
                                                          '0))))
                                                  (let ((_%tl257045257082%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice257469257470%_
                                                            '1)))
                                                        (_%target257043257080%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice257469257470%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257045257082%_))
                                                        (_%__match257518257519%_
                                                         _%e257024257143%_
                                                         _%hd257025257146%_
                                                         _%tl257026257148%_
                                                         _%e257027257151%_
                                                         _%hd257028257154%_
                                                         _%tl257029257156%_
                                                         _%__splice257469257470%_
                                                         _%target257043257080%_
                                                         _%tl257045257082%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257021257059%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257021257059%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd257028257154%_))
                                        (let ((_%__splice257469257470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd257028257154%_
                                                  '0))))
                                          (let ((_%tl257045257082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice257469257470%_
                                                    '1)))
                                                (_%target257043257080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice257469257470%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257045257082%_))
                                                (_%__match257518257519%_
                                                 _%e257024257143%_
                                                 _%hd257025257146%_
                                                 _%tl257026257148%_
                                                 _%e257027257151%_
                                                 _%hd257028257154%_
                                                 _%tl257029257156%_
                                                 _%__splice257469257470%_
                                                 _%target257043257080%_
                                                 _%tl257045257082%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257021257059%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g257021257059%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g257021257059%_)))))
                    (let () (declare (not safe)) (_%g257021257059%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self256568%_ _%stx256569%_)
        (let* ((_%__stx257521257522%_ _%stx256569%_)
               (_%g256573256675%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257521257522%_)))))
          (let ((_%__kont257523257524%_
                 (lambda (_%g256575256965%_
                          _%g256576256966%_
                          _%g256577256967%_
                          _%g256578256968%_
                          _%g256579256969%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256578256968%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g256577256967%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g256576256966%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g256575256965%_))
                                                 '())))))))
                (_%__kont257525257526%_
                 (lambda (_%g256628256791%_
                          _%g256629256792%_
                          _%g256630256793%_
                          _%g256631256794%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256630256793%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g256629256792%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g256628256791%_))
                                           (cons '#f '())))))))
                (_%__kont257527257528%_ (lambda () '(begin))))
            (let ((_%__match257656257657%_
                   (lambda (_%e256580256837%_
                            _%hd256581256840%_
                            _%tl256582256842%_
                            _%e256583256845%_
                            _%hd256584256848%_
                            _%tl256585256850%_
                            _%e256586256853%_
                            _%hd256587256856%_
                            _%tl256588256858%_
                            _%e256589256861%_
                            _%hd256590256864%_
                            _%tl256591256866%_
                            _%e256592256869%_
                            _%hd256593256872%_
                            _%tl256594256874%_
                            _%e256595256877%_
                            _%hd256596256880%_
                            _%tl256597256882%_
                            _%e256598256885%_
                            _%hd256599256888%_
                            _%tl256600256890%_
                            _%e256601256893%_
                            _%hd256602256896%_
                            _%tl256603256898%_
                            _%e256604256901%_
                            _%hd256605256904%_
                            _%tl256606256906%_
                            _%e256607256909%_
                            _%hd256608256912%_
                            _%tl256609256914%_
                            _%e256610256917%_
                            _%hd256611256920%_
                            _%tl256612256922%_
                            _%e256613256925%_
                            _%hd256614256928%_
                            _%tl256615256930%_
                            _%e256616256933%_
                            _%hd256617256936%_
                            _%tl256618256938%_
                            _%e256619256941%_
                            _%hd256620256944%_
                            _%tl256621256946%_
                            _%e256622256949%_
                            _%hd256623256952%_
                            _%tl256624256954%_
                            _%e256625256957%_
                            _%hd256626256960%_
                            _%tl256627256962%_)
                     (let ((_%g256575256965%_ _%hd256626256960%_)
                           (_%g256576256966%_ _%hd256617256936%_)
                           (_%g256577256967%_ _%hd256608256912%_)
                           (_%g256578256968%_ _%hd256599256888%_)
                           (_%g256579256969%_ _%hd256590256864%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g256579256969%_
                              'bind-method!))
                           (_%__kont257523257524%_
                            _%g256575256965%_
                            _%g256576256966%_
                            _%g256577256967%_
                            _%g256578256968%_
                            _%g256579256969%_)
                           (_%__kont257527257528%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257521257522%_))
                  (let ((_%e256580256837%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257521257522%_))))
                    (let ((_%tl256582256842%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256580256837%_)))
                          (_%hd256581256840%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256580256837%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl256582256842%_))
                          (let ((_%e256583256845%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl256582256842%_))))
                            (let ((_%tl256585256850%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e256583256845%_)))
                                  (_%hd256584256848%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e256583256845%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd256584256848%_))
                                  (let ((_%e256586256853%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd256584256848%_))))
                                    (let ((_%tl256588256858%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e256586256853%_)))
                                          (_%hd256587256856%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e256586256853%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd256587256856%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd256587256856%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl256588256858%_))
                                                  (let ((_%e256589256861%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl256588256858%_))))
                                                    (let ((_%tl256591256866%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e256589256861%_)))
                                                          (_%hd256590256864%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e256589256861%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl256591256866%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl256585256850%_))
                      (let ((_%e256592256869%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl256585256850%_))))
                        (let ((_%tl256594256874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256592256869%_)))
                              (_%hd256593256872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256592256869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd256593256872%_))
                              (let ((_%e256595256877%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd256593256872%_))))
                                (let ((_%tl256597256882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256595256877%_)))
                                      (_%hd256596256880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256595256877%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd256596256880%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd256596256880%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl256597256882%_))
                                              (let ((_%e256598256885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl256597256882%_))))
                                                (let ((_%tl256600256890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e256598256885%_)))
                                                      (_%hd256599256888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e256598256885%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl256600256890%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl256594256874%_))
                                                          (let ((_%e256601256893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl256594256874%_))))
                    (let ((_%tl256603256898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256601256893%_)))
                          (_%hd256602256896%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256601256893%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd256602256896%_))
                          (let ((_%e256604256901%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd256602256896%_))))
                            (let ((_%tl256606256906%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e256604256901%_)))
                                  (_%hd256605256904%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e256604256901%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd256605256904%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd256605256904%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl256606256906%_))
                                          (let ((_%e256607256909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl256606256906%_))))
                                            (let ((_%tl256609256914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e256607256909%_)))
                                                  (_%hd256608256912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e256607256909%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl256609256914%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl256603256898%_))
                                                      (let ((_%e256610256917%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl256603256898%_))))
                (let ((_%tl256612256922%_
                       (let () (declare (not safe)) (##cdr _%e256610256917%_)))
                      (_%hd256611256920%_
                       (let ()
                         (declare (not safe))
                         (##car _%e256610256917%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd256611256920%_))
                      (let ((_%e256613256925%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd256611256920%_))))
                        (let ((_%tl256615256930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256613256925%_)))
                              (_%hd256614256928%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256613256925%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd256614256928%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd256614256928%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl256615256930%_))
                                      (let ((_%e256616256933%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl256615256930%_))))
                                        (let ((_%tl256618256938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256616256933%_)))
                                              (_%hd256617256936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256616256933%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256618256938%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl256612256922%_))
                                                  (let ((_%e256619256941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl256612256922%_))))
                                                    (let ((_%tl256621256946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e256619256941%_)))
                                                          (_%hd256620256944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e256619256941%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd256620256944%_))
                                                          (let ((_%e256622256949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd256620256944%_))))
                    (let ((_%tl256624256954%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256622256949%_)))
                          (_%hd256623256952%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256622256949%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd256623256952%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd256623256952%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl256624256954%_))
                                  (let ((_%e256625256957%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl256624256954%_))))
                                    (let ((_%tl256627256962%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e256625256957%_)))
                                          (_%hd256626256960%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e256625256957%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl256627256962%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256621256946%_))
                                              (_%__match257656257657%_
                                               _%e256580256837%_
                                               _%hd256581256840%_
                                               _%tl256582256842%_
                                               _%e256583256845%_
                                               _%hd256584256848%_
                                               _%tl256585256850%_
                                               _%e256586256853%_
                                               _%hd256587256856%_
                                               _%tl256588256858%_
                                               _%e256589256861%_
                                               _%hd256590256864%_
                                               _%tl256591256866%_
                                               _%e256592256869%_
                                               _%hd256593256872%_
                                               _%tl256594256874%_
                                               _%e256595256877%_
                                               _%hd256596256880%_
                                               _%tl256597256882%_
                                               _%e256598256885%_
                                               _%hd256599256888%_
                                               _%tl256600256890%_
                                               _%e256601256893%_
                                               _%hd256602256896%_
                                               _%tl256603256898%_
                                               _%e256604256901%_
                                               _%hd256605256904%_
                                               _%tl256606256906%_
                                               _%e256607256909%_
                                               _%hd256608256912%_
                                               _%tl256609256914%_
                                               _%e256610256917%_
                                               _%hd256611256920%_
                                               _%tl256612256922%_
                                               _%e256613256925%_
                                               _%hd256614256928%_
                                               _%tl256615256930%_
                                               _%e256616256933%_
                                               _%hd256617256936%_
                                               _%tl256618256938%_
                                               _%e256619256941%_
                                               _%hd256620256944%_
                                               _%tl256621256946%_
                                               _%e256622256949%_
                                               _%hd256623256952%_
                                               _%tl256624256954%_
                                               _%e256625256957%_
                                               _%hd256626256960%_
                                               _%tl256627256962%_)
                                              (_%__kont257527257528%_))
                                          (_%__kont257527257528%_))))
                                  (_%__kont257527257528%_))
                              (_%__kont257527257528%_))
                          (_%__kont257527257528%_))))
                  (_%__kont257527257528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl256612256922%_))
                                                      (if (let ((__tmp257879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp257879 'bind-method!))
                  (let ((_%g256628256791%_ _%hd256617256936%_)
                        (_%g256629256792%_ _%hd256608256912%_)
                        (_%g256630256793%_ _%hd256599256888%_)
                        (_%g256631256794%_ _%hd256590256864%_))
                    (_%__kont257525257526%_
                     _%g256628256791%_
                     _%g256629256792%_
                     _%g256630256793%_
                     _%g256631256794%_))
                  (_%__kont257527257528%_))
              (_%__kont257527257528%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont257527257528%_))))
                                      (_%__kont257527257528%_))
                                  (_%__kont257527257528%_))
                              (_%__kont257527257528%_))))
                      (_%__kont257527257528%_))))
              (_%__kont257527257528%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257527257528%_))))
                                          (_%__kont257527257528%_))
                                      (_%__kont257527257528%_))
                                  (_%__kont257527257528%_))))
                          (_%__kont257527257528%_))))
                  (_%__kont257527257528%_))
              (_%__kont257527257528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont257527257528%_))
                                          (_%__kont257527257528%_))
                                      (_%__kont257527257528%_))))
                              (_%__kont257527257528%_))))
                      (_%__kont257527257528%_))
                  (_%__kont257527257528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257527257528%_))
                                              (_%__kont257527257528%_))
                                          (_%__kont257527257528%_))))
                                  (_%__kont257527257528%_))))
                          (_%__kont257527257528%_))))
                  (_%__kont257527257528%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self256392%_ _%stx256393%_)
        (let* ((_%__stx257765257766%_ _%stx256393%_)
               (_%g256396256436%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257765257766%_)))))
          (let ((_%__kont257767257768%_
                 (lambda (_%g256398256542%_ _%g256399256543%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256399256543%_))
                               (cons _%g256398256542%_ '())))))
                (_%__kont257769257770%_
                 (lambda (_%g256421256465%_ _%g256422256466%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx257765257766%_))
                (let ((_%e256400256486%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx257765257766%_))))
                  (let ((_%tl256402256491%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e256400256486%_)))
                        (_%hd256401256489%_
                         (let ()
                           (declare (not safe))
                           (##car _%e256400256486%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl256402256491%_))
                        (let ((_%e256403256494%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl256402256491%_))))
                          (let ((_%tl256405256499%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e256403256494%_)))
                                (_%hd256404256497%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e256403256494%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd256404256497%_))
                                (let ((_%e256406256502%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd256404256497%_))))
                                  (let ((_%tl256408256507%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e256406256502%_)))
                                        (_%hd256407256505%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e256406256502%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd256407256505%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd256407256505%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256408256507%_))
                                                (let ((_%e256409256510%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256408256507%_))))
                                                  (let ((_%tl256411256515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256409256510%_)))
                                                        (_%hd256410256513%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256409256510%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256411256515%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl256405256499%_))
                                                            (let ((_%e256412256518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl256405256499%_))))
                      (let ((_%tl256414256523%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256412256518%_)))
                            (_%hd256413256521%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256412256518%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd256413256521%_))
                            (let ((_%e256415256526%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd256413256521%_))))
                              (let ((_%tl256417256531%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e256415256526%_)))
                                    (_%hd256416256529%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e256415256526%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd256416256529%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd256416256529%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256417256531%_))
                                            (let ((_%e256418256534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256417256531%_))))
                                              (let ((_%tl256420256539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256418256534%_)))
                                                    (_%hd256419256537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256418256534%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256420256539%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256414256523%_))
                                                        (_%__kont257767257768%_
                                                         _%hd256419256537%_
                                                         _%hd256410256513%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256396256436%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256414256523%_))
                                                        (_%__kont257769257770%_
                                                         _%hd256413256521%_
                                                         _%hd256404256497%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256396256436%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl256414256523%_))
                                                (_%__kont257769257770%_
                                                 _%hd256413256521%_
                                                 _%hd256404256497%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256396256436%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256414256523%_))
                                            (_%__kont257769257770%_
                                             _%hd256413256521%_
                                             _%hd256404256497%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g256396256436%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl256414256523%_))
                                        (_%__kont257769257770%_
                                         _%hd256413256521%_
                                         _%hd256404256497%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g256396256436%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl256414256523%_))
                                (_%__kont257769257770%_
                                 _%hd256413256521%_
                                 _%hd256404256497%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g256396256436%_))))))
                    (let () (declare (not safe)) (_%g256396256436%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl256405256499%_))
                    (let ((_%e256429256457%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl256405256499%_))))
                      (let ((_%tl256431256462%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256429256457%_)))
                            (_%hd256430256460%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256429256457%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl256431256462%_))
                            (_%__kont257769257770%_
                             _%hd256430256460%_
                             _%hd256404256497%_)
                            (let ()
                              (declare (not safe))
                              (_%g256396256436%_)))))
                    (let () (declare (not safe)) (_%g256396256436%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl256405256499%_))
                                                    (let ((_%e256429256457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl256405256499%_))))
                                                      (let ((_%tl256431256462%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e256429256457%_)))
                    (_%hd256430256460%_
                     (let () (declare (not safe)) (##car _%e256429256457%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl256431256462%_))
                    (_%__kont257769257770%_
                     _%hd256430256460%_
                     _%hd256404256497%_)
                    (let () (declare (not safe)) (_%g256396256436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256396256436%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256405256499%_))
                                                (let ((_%e256429256457%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256405256499%_))))
                                                  (let ((_%tl256431256462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256429256457%_)))
                                                        (_%hd256430256460%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256429256457%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256431256462%_))
                                                        (_%__kont257769257770%_
                                                         _%hd256430256460%_
                                                         _%hd256404256497%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256396256436%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256396256436%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256405256499%_))
                                            (let ((_%e256429256457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256405256499%_))))
                                              (let ((_%tl256431256462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256429256457%_)))
                                                    (_%hd256430256460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256429256457%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256431256462%_))
                                                    (_%__kont257769257770%_
                                                     _%hd256430256460%_
                                                     _%hd256404256497%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256396256436%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g256396256436%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl256405256499%_))
                                    (let ((_%e256429256457%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl256405256499%_))))
                                      (let ((_%tl256431256462%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e256429256457%_)))
                                            (_%hd256430256460%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e256429256457%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256431256462%_))
                                            (_%__kont257769257770%_
                                             _%hd256430256460%_
                                             _%hd256404256497%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g256396256436%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g256396256436%_))))))
                        (let () (declare (not safe)) (_%g256396256436%_)))))
                (let () (declare (not safe)) (_%g256396256436%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self256379%_)
        (let ((_%self256382%_ _%self256379%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256382%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self256153%_)
        (let* ((_%self256156%_ _%self256153%_)
               (_%self256165256181%_ _%self256156%_)
               (_%E256167256184%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self256165256181%_
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
               (_%K256168256199%_
                (lambda (_%methods256187%_
                         _%metaclass256188%_
                         _%system?256189%_
                         _%final?256190%_
                         _%struct?256191%_
                         _%constructor256192%_
                         _%fields256193%_
                         _%slots256194%_
                         _%precendence-list256195%_
                         _%super256196%_
                         _%id256197%_)
                  (cons '@class
                        (cons _%id256197%_
                              (cons _%super256196%_
                                    (cons _%precendence-list256195%_
                                          (cons _%slots256194%_
                                                (cons _%fields256193%_
                                                      (cons _%constructor256192%_
                                                            (cons _%struct?256191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?256190%_
                                (cons _%system?256189%_
                                      (cons _%metaclass256188%_
                                            (cons (if _%methods256187%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods256187%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e256169256202%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256165256181%_ '1 '#f '#f)))
               (_%id256205%_ _%e256169256202%_)
               (_%e256170256207%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256165256181%_ '2 '#f '#f)))
               (_%super256210%_ _%e256170256207%_)
               (_%e256171256212%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256165256181%_ '3 '#f '#f)))
               (_%precendence-list256215%_ _%e256171256212%_)
               (_%e256172256217%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256165256181%_ '4 '#f '#f)))
               (_%slots256220%_ _%e256172256217%_)
               (_%e256173256222%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256165256181%_ '5 '#f '#f)))
               (_%fields256225%_ _%e256173256222%_)
               (_%e256174256227%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256165256181%_ '6 '#f '#f)))
               (_%constructor256230%_ _%e256174256227%_)
               (_%e256175256232%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256165256181%_ '7 '#f '#f)))
               (_%struct?256235%_ _%e256175256232%_)
               (_%e256176256237%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256165256181%_ '8 '#f '#f)))
               (_%final?256240%_ _%e256176256237%_)
               (_%e256177256242%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256165256181%_ '9 '#f '#f)))
               (_%system?256245%_ _%e256177256242%_)
               (_%e256178256247%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self256165256181%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass256250%_ _%e256178256247%_)
               (_%e256179256252%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self256165256181%_
                   '11
                   '#f
                   '#f)))
               (_%methods256255%_ _%e256179256252%_))
          (_%K256168256199%_
           _%methods256255%_
           _%metaclass256250%_
           _%system?256245%_
           _%final?256240%_
           _%struct?256235%_
           _%constructor256230%_
           _%fields256225%_
           _%slots256220%_
           _%precendence-list256215%_
           _%super256210%_
           _%id256205%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self256018%_)
        (let ((_%self256021%_ _%self256018%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256021%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self255883%_)
        (let ((_%self255886%_ _%self255883%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255886%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self255748%_)
        (let ((_%self255751%_ _%self255748%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255751%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255751%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self255751%_
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
      (lambda (_%self255613%_)
        (let ((_%self255616%_ _%self255613%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255616%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255616%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self255616%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self255478%_)
        (let ((_%self255481%_ _%self255478%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255481%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255481%_
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
      (lambda (_%self255292%_)
        (let* ((_%self255295%_ _%self255292%_)
               (_%self255304255313%_ _%self255295%_)
               (_%E255306255316%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self255304255313%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K255307255335%_
                (lambda (_%dispatch255319%_
                         _%arity255320%_
                         _%signature255321%_)
                  (if _%signature255321%_
                      (let ((_%signature255323%_ _%signature255321%_))
                        (cons '@lambda
                              (cons _%arity255320%_
                                    (cons _%dispatch255319%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature255323%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature255323%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature255323%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature255323%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature255323%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity255320%_
                                  (cons _%dispatch255319%_ '()))))))
               (_%e255308255338%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255304255313%_ '1 '#f '#f)))
               (_%e255309255341%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255304255313%_ '2 '#f '#f)))
               (_%signature255344%_ _%e255309255341%_)
               (_%e255310255346%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255304255313%_ '3 '#f '#f)))
               (_%arity255349%_ _%e255310255346%_)
               (_%e255311255351%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255304255313%_ '4 '#f '#f)))
               (_%dispatch255354%_ _%e255311255351%_))
          (_%K255307255335%_
           _%dispatch255354%_
           _%arity255349%_
           _%signature255344%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self255152%_)
        (let ((_%self255155%_ _%self255152%_))
          (letrec ((_%clause-e255166%_
                    (lambda (_%clause255168%_)
                      (cdr (let ((__method257853
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause255168%_
                                     'typedecl))))
                             (if __method257853
                                 (let ()
                                   (declare (not safe))
                                   (__method257853 _%clause255168%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause255168%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e255166%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self255155%_
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
      (lambda (_%self255017%_)
        (let ((_%self255020%_ _%self255017%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255020%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255020%_
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
      (lambda (_%self254882%_)
        (let ((_%self254885%_ _%self254882%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254885%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self254885%_
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
      (lambda (_%self254747%_)
        (let ((_%self254750%_ _%self254747%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254750%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
