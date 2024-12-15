(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1734225201)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp201750
                   (let ((__obj201744
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
                       (gxc#optimizer-info:::init! __obj201744))
                     __obj201744)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp201750)))))
    (define gxc#optimize!
      (lambda (_%ctx201353%_)
        (let ((__tmp201753
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx201353%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx201353%_)
                 (let ((__tmp201755
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp201754
                        (##structure-ref
                         _%ctx201353%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp201755 __tmp201754 '#t))
                 (let ((_%code201356%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx201353%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx201353%_
                    _%code201356%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp201752 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201751 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201753
           gxc#current-compile-mutators
           __tmp201752
           gxc#current-compile-local-type
           __tmp201751))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx201339%_)
        (letrec ((_%load-it!201341%_
                  (lambda (_%id201351%_)
                    (if (let ((__tmp201756
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp201756 _%id201351%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id201351%_)
                          (let ((__tmp201757
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp201757 _%id201351%_ '#t)))))))
          (let* ((_%modid201343%_
                  (##structure-ref
                   _%ctx201339%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str201345%_ (symbol->string _%modid201343%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str201345%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str201345%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201341%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201341%_
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
      (lambda (_%ctx201276%_)
        (letrec* ((_%deps201278%_
                   (let* ((_%imports201329%_
                           (##structure-ref
                            _%ctx201276%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e201331%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx201276%_))))
                     (if _%$e201331%_
                         ((lambda (_%g201333201335%_)
                            (cons _%g201333201335%_ _%imports201329%_))
                          _%$e201331%_)
                         _%imports201329%_))))
          (let _%lp201280%_ ((_%rest201282%_ _%deps201278%_))
            (let* ((_%rest201283201291%_ _%rest201282%_)
                   (_%else201285201299%_ (lambda () '#!void))
                   (_%K201287201317%_
                    (lambda (_%rest201302%_ _%hd201303%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd201303%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp201759
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp201758
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201303%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp201759 __tmp201758))
                                '#!void
                                (begin
                                  (let ((_%$e201306%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd201303%_))))
                                    (if _%$e201306%_
                                        ((lambda (_%pre201309%_)
                                           (_%lp201280%_
                                            (cons _%pre201309%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd201303%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e201306%_)
                                        (_%lp201280%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201303%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd201303%_)))
                            (_%lp201280%_ _%rest201302%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd201303%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp201761
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp201760
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd201303%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp201761 __tmp201760))
                                    '#!void
                                    (begin
                                      (_%lp201280%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201303%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd201303%_)))
                                (_%lp201280%_ _%rest201302%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd201303%_
                                     'gx#module-import::t))
                                  (_%lp201280%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201303%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest201302%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd201303%_
                                         'gx#module-export::t))
                                      (_%lp201280%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd201303%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest201302%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd201303%_
                                             'gx#import-set::t))
                                          (_%lp201280%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd201303%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest201302%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd201303%_))))))))))
              (if (pair? _%rest201283201291%_)
                  (let ((_%hd201288201320%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201283201291%_)))
                        (_%tl201289201322%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201283201291%_))))
                    (let* ((_%hd201325%_ _%hd201288201320%_)
                           (_%rest201327%_ _%tl201289201322%_))
                      (_%K201287201317%_ _%rest201327%_ _%hd201325%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx201256%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx201256%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx201256%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht201258%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id201260%_
                    (##structure-ref
                     _%ctx201256%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod201262%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht201258%_ _%id201260%_)))
                   (_%$e201265%_ _%mod201262%_))
              (if _%$e201265%_
                  _%$e201265%_
                  (let* ((_%mod201268%_
                          (gxc#optimizer-import-ssxi _%ctx201256%_))
                         (_%val201273%_
                          (let ((_%$e201270%_ _%mod201268%_))
                            (if _%$e201270%_ _%$e201270%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht201258%_ _%id201260%_ _%val201273%_))
                    _%val201273%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx201254%_)
        (if (##structure-ref _%ctx201254%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx201254%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id201231%_)
        (letrec ((_%catch-e201233%_
                  (lambda (_%exn201252%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn201252%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn201252%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id201231%_))))
                    '#f))
                 (_%import-e201234%_
                  (lambda ()
                    (let* ((_%str-id201237%_
                            (let ((__tmp201762
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id201231%_))))
                              (declare (not safe))
                              (##string-append __tmp201762 '".ssxi")))
                           (_%artefact-path201245%_
                            (let ((_%odir201238201240%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir201238201240%_
                                  (let ((_%odir201243%_ _%odir201238201240%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id201237%_
                                        '".ss"))
                                     _%odir201243%_))
                                  '#f)))
                           (_%library-path201247%_
                            (let ((__tmp201763
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id201237%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp201763)))
                           (_%ssxi-path201249%_
                            (if (and _%artefact-path201245%_
                                     (file-exists? _%artefact-path201245%_))
                                _%artefact-path201245%_
                                _%library-path201247%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path201249%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path201249%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e201233%_ _%import-e201234%_)))))
    (define gxc#optimize-source
      (lambda (_%stx201216%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx201216%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx201216%_))
        (let* ((_%stx201218%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx201216%_)))
               (_%stx201220%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx201218%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx201220%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx201220%_))
          (let _%fixpoint201223%_ ((_%current201225%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx201220%_))
            (let ((_%refined201227%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current201225%_ _%refined201227%_)
                  '#!void
                  (_%fixpoint201223%_ _%refined201227%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx201220%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx201220%_))
          (let ((_%stx201229%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx201220%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx201229%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp201765 (list gxc#::generate-runtime-empty::t))
            (__tmp201764 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp201765
         '()
         __tmp201764
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args201213%_
        (apply make-instance gxc#::generate-ssxi::t _%$args201213%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp201766
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
        (__make-promise __tmp201766)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx201205%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self201208%_
                (let ((__obj201746
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj201746))
               (__tmp201767
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201208%_ _%stx201205%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201767
           gxc#current-compile-method
           _%self201208%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self201165%_ _%stx201166%_)
        (let* ((_%g201168201178%_
                (lambda (_%g201169201175%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201169201175%_))))
               (_%g201167201202%_
                (lambda (_%g201169201181%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201169201181%_))
                      (let ((_%e201171201183%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201169201181%_))))
                        (let ((_%hd201172201186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201171201183%_)))
                              (_%tl201173201188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201171201183%_))))
                          ((lambda (_%L201191%_)
                             (let ((__tmp201770
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self201165%_
                                         _%stx201166%_))))
                                   (__tmp201768
                                    (let ((__tmp201769
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp201769 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp201770
                                gx#current-expander-phi
                                __tmp201768)))
                           _%tl201173201188%_)))
                      (_%g201168201178%_ _%g201169201181%_)))))
          (_%g201167201202%_ _%stx201166%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self201104%_ _%stx201105%_)
        (let* ((_%g201107201121%_
                (lambda (_%g201108201118%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201108201118%_))))
               (_%g201106201162%_
                (lambda (_%g201108201124%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201108201124%_))
                      (let ((_%e201111201126%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201108201124%_))))
                        (let ((_%hd201112201129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201111201126%_)))
                              (_%tl201113201131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201111201126%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201113201131%_))
                              (let ((_%e201114201134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201113201131%_))))
                                (let ((_%hd201115201137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201114201134%_)))
                                      (_%tl201116201139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201114201134%_))))
                                  ((lambda (_%L201142%_ _%L201143%_)
                                     (let* ((_%ctx201156%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L201143%_)))
                                            (_%code201158%_
                                             (##structure-ref
                                              _%ctx201156%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp201771
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self201104%_
                                                  _%code201158%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp201771
                                        gx#current-expander-context
                                        _%ctx201156%_)))
                                   _%tl201116201139%_
                                   _%hd201115201137%_)))
                              (_%g201107201121%_ _%g201108201124%_))))
                      (_%g201107201121%_ _%g201108201124%_)))))
          (_%g201106201162%_ _%stx201105%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self200909%_ _%stx200910%_)
        (letrec ((_%generate-e200912%_
                  (lambda (_%id201089%_)
                    (let* ((_%sym201091%_
                            (if (let ((__tmp201772
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp201772))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id201089%_))
                                '#f))
                           (_%$e201093%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym201091%_))))
                      (if _%$e201093%_
                          ((lambda (_%klass201096%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym201091%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym201091%_
                                                     (cons (let ((__method201747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass201096%_ 'typedecl))))
                     (if __method201747
                         (let ()
                           (declare (not safe))
                           (__method201747 _%klass201096%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass201096%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym201091%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym201091%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e201093%_)
                          (let ((_%$e201098%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym201091%_))))
                            (if _%$e201098%_
                                ((lambda (_%type201101%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym201091%_
                                      '" "
                                      _%type201101%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type201101%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym201091%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym201091%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type201101%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym201091%_
                                                   (cons (let ((__method201748
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type201101%_ 'typedecl))))
                   (if __method201748
                       (let ()
                         (declare (not safe))
                         (__method201748 _%type201101%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type201101%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e201098%_)
                                '(begin))))))))
          (let* ((_%__stx201359201360%_ _%stx200910%_)
                 (_%g200915200953%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201359201360%_)))))
            (let ((_%__kont201361201362%_
                   (lambda (_%L201071%_) (_%generate-e200912%_ _%L201071%_)))
                  (_%__kont201363201364%_
                   (lambda (_%L201006%_)
                     (let ((_%types201032%_
                            (map _%generate-e200912%_
                                 (let ((__tmp201773
                                        (lambda (_%g201024201027%_
                                                 _%g201025201029%_)
                                          (cons _%g201024201027%_
                                                _%g201025201029%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp201773 '() _%L201006%_)))))
                       (cons 'begin _%types201032%_)))))
              (let ((_%__match201414201415%_
                     (lambda (_%e200931200958%_
                              _%hd200932200961%_
                              _%tl200933200963%_
                              _%e200934200966%_
                              _%hd200935200969%_
                              _%tl200936200971%_
                              _%__splice201365201366%_
                              _%target200937200974%_
                              _%tl200939200976%_)
                       (letrec ((_%loop200940200979%_
                                 (lambda (_%hd200938200982%_
                                          _%id200944200984%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd200938200982%_))
                                       (let ((_%e200941200987%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200938200982%_))))
                                         (let ((_%lp-tl200943200992%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e200941200987%_)))
                                               (_%lp-hd200942200990%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e200941200987%_))))
                                           (_%loop200940200979%_
                                            _%lp-tl200943200992%_
                                            (cons _%lp-hd200942200990%_
                                                  _%id200944200984%_))))
                                       (let ((_%id200945200995%_
                                              (reverse _%id200944200984%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200936200971%_))
                                             (let ((_%e200946200998%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl200936200971%_))))
                                               (let ((_%tl200948201003%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200946200998%_)))
                                                     (_%hd200947201001%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200946200998%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl200948201003%_))
                                                     (_%__kont201363201364%_
                                                      _%id200945200995%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200915200953%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g200915200953%_))))))))
                         (_%loop200940200979%_ _%target200937200974%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201359201360%_))
                    (let ((_%e200918201039%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201359201360%_))))
                      (let ((_%tl200920201044%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200918201039%_)))
                            (_%hd200919201042%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200918201039%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200920201044%_))
                            (let ((_%e200921201047%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl200920201044%_))))
                              (let ((_%tl200923201052%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200921201047%_)))
                                    (_%hd200922201050%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200921201047%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd200922201050%_))
                                    (let ((_%e200924201055%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd200922201050%_))))
                                      (let ((_%tl200926201060%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200924201055%_)))
                                            (_%hd200925201058%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200924201055%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200926201060%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200923201052%_))
                                                (let ((_%e200927201063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200923201052%_))))
                                                  (let ((_%tl200929201068%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200927201063%_)))
                                                        (_%hd200928201066%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200927201063%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200929201068%_))
                                                        (_%__kont201361201362%_
                                                         _%hd200925201058%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd200922201050%_))
                                                            (let ((_%__splice201365201366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd200922201050%_ '0))))
                      (let ((_%tl200939200976%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201365201366%_ '1)))
                            (_%target200937200974%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201365201366%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200939200976%_))
                            (_%__match201414201415%_
                             _%e200918201039%_
                             _%hd200919201042%_
                             _%tl200920201044%_
                             _%e200921201047%_
                             _%hd200922201050%_
                             _%tl200923201052%_
                             _%__splice201365201366%_
                             _%target200937200974%_
                             _%tl200939200976%_)
                            (let ()
                              (declare (not safe))
                              (_%g200915200953%_)))))
                    (let () (declare (not safe)) (_%g200915200953%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd200922201050%_))
                                                    (let ((_%__splice201365201366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd200922201050%_
                                                              '0))))
                                                      (let ((_%tl200939200976%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice201365201366%_ '1)))
                    (_%target200937200974%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice201365201366%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200939200976%_))
                    (_%__match201414201415%_
                     _%e200918201039%_
                     _%hd200919201042%_
                     _%tl200920201044%_
                     _%e200921201047%_
                     _%hd200922201050%_
                     _%tl200923201052%_
                     _%__splice201365201366%_
                     _%target200937200974%_
                     _%tl200939200976%_)
                    (let () (declare (not safe)) (_%g200915200953%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200915200953%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd200922201050%_))
                                                (let ((_%__splice201365201366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd200922201050%_
                                                          '0))))
                                                  (let ((_%tl200939200976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201365201366%_
                                                            '1)))
                                                        (_%target200937200974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201365201366%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200939200976%_))
                                                        (_%__match201414201415%_
                                                         _%e200918201039%_
                                                         _%hd200919201042%_
                                                         _%tl200920201044%_
                                                         _%e200921201047%_
                                                         _%hd200922201050%_
                                                         _%tl200923201052%_
                                                         _%__splice201365201366%_
                                                         _%target200937200974%_
                                                         _%tl200939200976%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200915200953%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200915200953%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd200922201050%_))
                                        (let ((_%__splice201365201366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd200922201050%_
                                                  '0))))
                                          (let ((_%tl200939200976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201365201366%_
                                                    '1)))
                                                (_%target200937200974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201365201366%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200939200976%_))
                                                (_%__match201414201415%_
                                                 _%e200918201039%_
                                                 _%hd200919201042%_
                                                 _%tl200920201044%_
                                                 _%e200921201047%_
                                                 _%hd200922201050%_
                                                 _%tl200923201052%_
                                                 _%__splice201365201366%_
                                                 _%target200937200974%_
                                                 _%tl200939200976%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200915200953%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200915200953%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g200915200953%_)))))
                    (let () (declare (not safe)) (_%g200915200953%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self200462%_ _%stx200463%_)
        (let* ((_%__stx201417201418%_ _%stx200463%_)
               (_%g200467200569%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201417201418%_)))))
          (let ((_%__kont201419201420%_
                 (lambda (_%L200859%_
                          _%L200860%_
                          _%L200861%_
                          _%L200862%_
                          _%L200863%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200862%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200861%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200860%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L200859%_))
                                                 '())))))))
                (_%__kont201421201422%_
                 (lambda (_%L200685%_ _%L200686%_ _%L200687%_ _%L200688%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200687%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200686%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200685%_))
                                           (cons '#f '())))))))
                (_%__kont201423201424%_ (lambda () '(begin))))
            (let ((_%__match201552201553%_
                   (lambda (_%e200474200731%_
                            _%hd200475200734%_
                            _%tl200476200736%_
                            _%e200477200739%_
                            _%hd200478200742%_
                            _%tl200479200744%_
                            _%e200480200747%_
                            _%hd200481200750%_
                            _%tl200482200752%_
                            _%e200483200755%_
                            _%hd200484200758%_
                            _%tl200485200760%_
                            _%e200486200763%_
                            _%hd200487200766%_
                            _%tl200488200768%_
                            _%e200489200771%_
                            _%hd200490200774%_
                            _%tl200491200776%_
                            _%e200492200779%_
                            _%hd200493200782%_
                            _%tl200494200784%_
                            _%e200495200787%_
                            _%hd200496200790%_
                            _%tl200497200792%_
                            _%e200498200795%_
                            _%hd200499200798%_
                            _%tl200500200800%_
                            _%e200501200803%_
                            _%hd200502200806%_
                            _%tl200503200808%_
                            _%e200504200811%_
                            _%hd200505200814%_
                            _%tl200506200816%_
                            _%e200507200819%_
                            _%hd200508200822%_
                            _%tl200509200824%_
                            _%e200510200827%_
                            _%hd200511200830%_
                            _%tl200512200832%_
                            _%e200513200835%_
                            _%hd200514200838%_
                            _%tl200515200840%_
                            _%e200516200843%_
                            _%hd200517200846%_
                            _%tl200518200848%_
                            _%e200519200851%_
                            _%hd200520200854%_
                            _%tl200521200856%_)
                     (let ((_%L200859%_ _%hd200520200854%_)
                           (_%L200860%_ _%hd200511200830%_)
                           (_%L200861%_ _%hd200502200806%_)
                           (_%L200862%_ _%hd200493200782%_)
                           (_%L200863%_ _%hd200484200758%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L200863%_
                              'bind-method!))
                           (_%__kont201419201420%_
                            _%L200859%_
                            _%L200860%_
                            _%L200861%_
                            _%L200862%_
                            _%L200863%_)
                           (_%__kont201423201424%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201417201418%_))
                  (let ((_%e200474200731%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201417201418%_))))
                    (let ((_%tl200476200736%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200474200731%_)))
                          (_%hd200475200734%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200474200731%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200476200736%_))
                          (let ((_%e200477200739%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200476200736%_))))
                            (let ((_%tl200479200744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200477200739%_)))
                                  (_%hd200478200742%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200477200739%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200478200742%_))
                                  (let ((_%e200480200747%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200478200742%_))))
                                    (let ((_%tl200482200752%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200480200747%_)))
                                          (_%hd200481200750%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200480200747%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200481200750%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200481200750%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200482200752%_))
                                                  (let ((_%e200483200755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200482200752%_))))
                                                    (let ((_%tl200485200760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200483200755%_)))
                                                          (_%hd200484200758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200483200755%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200485200760%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200479200744%_))
                      (let ((_%e200486200763%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200479200744%_))))
                        (let ((_%tl200488200768%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200486200763%_)))
                              (_%hd200487200766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200486200763%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200487200766%_))
                              (let ((_%e200489200771%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd200487200766%_))))
                                (let ((_%tl200491200776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200489200771%_)))
                                      (_%hd200490200774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200489200771%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200490200774%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200490200774%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200491200776%_))
                                              (let ((_%e200492200779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200491200776%_))))
                                                (let ((_%tl200494200784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200492200779%_)))
                                                      (_%hd200493200782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200492200779%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200494200784%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200488200768%_))
                                                          (let ((_%e200495200787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200488200768%_))))
                    (let ((_%tl200497200792%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200495200787%_)))
                          (_%hd200496200790%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200495200787%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200496200790%_))
                          (let ((_%e200498200795%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200496200790%_))))
                            (let ((_%tl200500200800%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200498200795%_)))
                                  (_%hd200499200798%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200498200795%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd200499200798%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd200499200798%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200500200800%_))
                                          (let ((_%e200501200803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200500200800%_))))
                                            (let ((_%tl200503200808%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200501200803%_)))
                                                  (_%hd200502200806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200501200803%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200503200808%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200497200792%_))
                                                      (let ((_%e200504200811%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200497200792%_))))
                (let ((_%tl200506200816%_
                       (let () (declare (not safe)) (##cdr _%e200504200811%_)))
                      (_%hd200505200814%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200504200811%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd200505200814%_))
                      (let ((_%e200507200819%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd200505200814%_))))
                        (let ((_%tl200509200824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200507200819%_)))
                              (_%hd200508200822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200507200819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd200508200822%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd200508200822%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200509200824%_))
                                      (let ((_%e200510200827%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200509200824%_))))
                                        (let ((_%tl200512200832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200510200827%_)))
                                              (_%hd200511200830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200510200827%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200512200832%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200506200816%_))
                                                  (let ((_%e200513200835%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200506200816%_))))
                                                    (let ((_%tl200515200840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200513200835%_)))
                                                          (_%hd200514200838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200513200835%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200514200838%_))
                                                          (let ((_%e200516200843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd200514200838%_))))
                    (let ((_%tl200518200848%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200516200843%_)))
                          (_%hd200517200846%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200516200843%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200517200846%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd200517200846%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200518200848%_))
                                  (let ((_%e200519200851%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200518200848%_))))
                                    (let ((_%tl200521200856%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200519200851%_)))
                                          (_%hd200520200854%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200519200851%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200521200856%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200515200840%_))
                                              (_%__match201552201553%_
                                               _%e200474200731%_
                                               _%hd200475200734%_
                                               _%tl200476200736%_
                                               _%e200477200739%_
                                               _%hd200478200742%_
                                               _%tl200479200744%_
                                               _%e200480200747%_
                                               _%hd200481200750%_
                                               _%tl200482200752%_
                                               _%e200483200755%_
                                               _%hd200484200758%_
                                               _%tl200485200760%_
                                               _%e200486200763%_
                                               _%hd200487200766%_
                                               _%tl200488200768%_
                                               _%e200489200771%_
                                               _%hd200490200774%_
                                               _%tl200491200776%_
                                               _%e200492200779%_
                                               _%hd200493200782%_
                                               _%tl200494200784%_
                                               _%e200495200787%_
                                               _%hd200496200790%_
                                               _%tl200497200792%_
                                               _%e200498200795%_
                                               _%hd200499200798%_
                                               _%tl200500200800%_
                                               _%e200501200803%_
                                               _%hd200502200806%_
                                               _%tl200503200808%_
                                               _%e200504200811%_
                                               _%hd200505200814%_
                                               _%tl200506200816%_
                                               _%e200507200819%_
                                               _%hd200508200822%_
                                               _%tl200509200824%_
                                               _%e200510200827%_
                                               _%hd200511200830%_
                                               _%tl200512200832%_
                                               _%e200513200835%_
                                               _%hd200514200838%_
                                               _%tl200515200840%_
                                               _%e200516200843%_
                                               _%hd200517200846%_
                                               _%tl200518200848%_
                                               _%e200519200851%_
                                               _%hd200520200854%_
                                               _%tl200521200856%_)
                                              (_%__kont201423201424%_))
                                          (_%__kont201423201424%_))))
                                  (_%__kont201423201424%_))
                              (_%__kont201423201424%_))
                          (_%__kont201423201424%_))))
                  (_%__kont201423201424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200506200816%_))
                                                      (if (let ((__tmp201774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp201774 'bind-method!))
                  (let ((_%L200685%_ _%hd200511200830%_)
                        (_%L200686%_ _%hd200502200806%_)
                        (_%L200687%_ _%hd200493200782%_)
                        (_%L200688%_ _%hd200484200758%_))
                    (_%__kont201421201422%_
                     _%L200685%_
                     _%L200686%_
                     _%L200687%_
                     _%L200688%_))
                  (_%__kont201423201424%_))
              (_%__kont201423201424%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201423201424%_))))
                                      (_%__kont201423201424%_))
                                  (_%__kont201423201424%_))
                              (_%__kont201423201424%_))))
                      (_%__kont201423201424%_))))
              (_%__kont201423201424%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201423201424%_))))
                                          (_%__kont201423201424%_))
                                      (_%__kont201423201424%_))
                                  (_%__kont201423201424%_))))
                          (_%__kont201423201424%_))))
                  (_%__kont201423201424%_))
              (_%__kont201423201424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201423201424%_))
                                          (_%__kont201423201424%_))
                                      (_%__kont201423201424%_))))
                              (_%__kont201423201424%_))))
                      (_%__kont201423201424%_))
                  (_%__kont201423201424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201423201424%_))
                                              (_%__kont201423201424%_))
                                          (_%__kont201423201424%_))))
                                  (_%__kont201423201424%_))))
                          (_%__kont201423201424%_))))
                  (_%__kont201423201424%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self200286%_ _%stx200287%_)
        (let* ((_%__stx201661201662%_ _%stx200287%_)
               (_%g200290200330%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201661201662%_)))))
          (let ((_%__kont201663201664%_
                 (lambda (_%L200436%_ _%L200437%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200437%_))
                               (cons _%L200436%_ '())))))
                (_%__kont201665201666%_
                 (lambda (_%L200359%_ _%L200360%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201661201662%_))
                (let ((_%e200294200380%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx201661201662%_))))
                  (let ((_%tl200296200385%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200294200380%_)))
                        (_%hd200295200383%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200294200380%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200296200385%_))
                        (let ((_%e200297200388%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200296200385%_))))
                          (let ((_%tl200299200393%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200297200388%_)))
                                (_%hd200298200391%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200297200388%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200298200391%_))
                                (let ((_%e200300200396%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200298200391%_))))
                                  (let ((_%tl200302200401%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200300200396%_)))
                                        (_%hd200301200399%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200300200396%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200301200399%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd200301200399%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200302200401%_))
                                                (let ((_%e200303200404%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200302200401%_))))
                                                  (let ((_%tl200305200409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200303200404%_)))
                                                        (_%hd200304200407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200303200404%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200305200409%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200299200393%_))
                                                            (let ((_%e200306200412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200299200393%_))))
                      (let ((_%tl200308200417%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200306200412%_)))
                            (_%hd200307200415%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200306200412%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd200307200415%_))
                            (let ((_%e200309200420%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200307200415%_))))
                              (let ((_%tl200311200425%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200309200420%_)))
                                    (_%hd200310200423%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200309200420%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200310200423%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd200310200423%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200311200425%_))
                                            (let ((_%e200312200428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200311200425%_))))
                                              (let ((_%tl200314200433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200312200428%_)))
                                                    (_%hd200313200431%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200312200428%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200314200433%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200308200417%_))
                                                        (_%__kont201663201664%_
                                                         _%hd200313200431%_
                                                         _%hd200304200407%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200290200330%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200308200417%_))
                                                        (_%__kont201665201666%_
                                                         _%hd200307200415%_
                                                         _%hd200298200391%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200290200330%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200308200417%_))
                                                (_%__kont201665201666%_
                                                 _%hd200307200415%_
                                                 _%hd200298200391%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200290200330%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200308200417%_))
                                            (_%__kont201665201666%_
                                             _%hd200307200415%_
                                             _%hd200298200391%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200290200330%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200308200417%_))
                                        (_%__kont201665201666%_
                                         _%hd200307200415%_
                                         _%hd200298200391%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200290200330%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200308200417%_))
                                (_%__kont201665201666%_
                                 _%hd200307200415%_
                                 _%hd200298200391%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200290200330%_))))))
                    (let () (declare (not safe)) (_%g200290200330%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200299200393%_))
                    (let ((_%e200323200351%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200299200393%_))))
                      (let ((_%tl200325200356%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200323200351%_)))
                            (_%hd200324200354%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200323200351%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200325200356%_))
                            (_%__kont201665201666%_
                             _%hd200324200354%_
                             _%hd200298200391%_)
                            (let ()
                              (declare (not safe))
                              (_%g200290200330%_)))))
                    (let () (declare (not safe)) (_%g200290200330%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200299200393%_))
                                                    (let ((_%e200323200351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200299200393%_))))
                                                      (let ((_%tl200325200356%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200323200351%_)))
                    (_%hd200324200354%_
                     (let () (declare (not safe)) (##car _%e200323200351%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200325200356%_))
                    (_%__kont201665201666%_
                     _%hd200324200354%_
                     _%hd200298200391%_)
                    (let () (declare (not safe)) (_%g200290200330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200290200330%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200299200393%_))
                                                (let ((_%e200323200351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200299200393%_))))
                                                  (let ((_%tl200325200356%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200323200351%_)))
                                                        (_%hd200324200354%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200323200351%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200325200356%_))
                                                        (_%__kont201665201666%_
                                                         _%hd200324200354%_
                                                         _%hd200298200391%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200290200330%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200290200330%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200299200393%_))
                                            (let ((_%e200323200351%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200299200393%_))))
                                              (let ((_%tl200325200356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200323200351%_)))
                                                    (_%hd200324200354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200323200351%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200325200356%_))
                                                    (_%__kont201665201666%_
                                                     _%hd200324200354%_
                                                     _%hd200298200391%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200290200330%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200290200330%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200299200393%_))
                                    (let ((_%e200323200351%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl200299200393%_))))
                                      (let ((_%tl200325200356%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200323200351%_)))
                                            (_%hd200324200354%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200323200351%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200325200356%_))
                                            (_%__kont201665201666%_
                                             _%hd200324200354%_
                                             _%hd200298200391%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200290200330%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200290200330%_))))))
                        (let () (declare (not safe)) (_%g200290200330%_)))))
                (let () (declare (not safe)) (_%g200290200330%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self198480200271%_)
        (let* ((_%self200274%_ _%self198480200271%_)
               (_%self200276%_ _%self200274%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200276%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self198481200042%_)
        (let* ((_%self200045%_ _%self198481200042%_)
               (_%self200047%_ _%self200045%_)
               (_%self200056200072%_ _%self200047%_)
               (_%E200058200076%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self200056200072%_
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
               (_%K200059200091%_
                (lambda (_%methods200079%_
                         _%metaclass200080%_
                         _%system?200081%_
                         _%final?200082%_
                         _%struct?200083%_
                         _%constructor200084%_
                         _%fields200085%_
                         _%slots200086%_
                         _%precendence-list200087%_
                         _%super200088%_
                         _%id200089%_)
                  (cons '@class
                        (cons _%id200089%_
                              (cons _%super200088%_
                                    (cons _%precendence-list200087%_
                                          (cons _%slots200086%_
                                                (cons _%fields200085%_
                                                      (cons _%constructor200084%_
                                                            (cons _%struct?200083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?200082%_
                                (cons _%system?200081%_
                                      (cons _%metaclass200080%_
                                            (cons (if _%methods200079%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods200079%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e200060200094%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200056200072%_ '1 '#f '#f)))
               (_%id200097%_ _%e200060200094%_)
               (_%e200061200099%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200056200072%_ '2 '#f '#f)))
               (_%super200102%_ _%e200061200099%_)
               (_%e200062200104%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200056200072%_ '3 '#f '#f)))
               (_%precendence-list200107%_ _%e200062200104%_)
               (_%e200063200109%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200056200072%_ '4 '#f '#f)))
               (_%slots200112%_ _%e200063200109%_)
               (_%e200064200114%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200056200072%_ '5 '#f '#f)))
               (_%fields200117%_ _%e200064200114%_)
               (_%e200065200119%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200056200072%_ '6 '#f '#f)))
               (_%constructor200122%_ _%e200065200119%_)
               (_%e200066200124%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200056200072%_ '7 '#f '#f)))
               (_%struct?200127%_ _%e200066200124%_)
               (_%e200067200129%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200056200072%_ '8 '#f '#f)))
               (_%final?200132%_ _%e200067200129%_)
               (_%e200068200134%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200056200072%_ '9 '#f '#f)))
               (_%system?200137%_ _%e200068200134%_)
               (_%e200069200139%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200056200072%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass200142%_ _%e200069200139%_)
               (_%e200070200144%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200056200072%_
                   '11
                   '#f
                   '#f)))
               (_%methods200147%_ _%e200070200144%_))
          (_%K200059200091%_
           _%methods200147%_
           _%metaclass200142%_
           _%system?200137%_
           _%final?200132%_
           _%struct?200127%_
           _%constructor200122%_
           _%fields200117%_
           _%slots200112%_
           _%precendence-list200107%_
           _%super200102%_
           _%id200097%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self198482199905%_)
        (let* ((_%self199908%_ _%self198482199905%_)
               (_%self199910%_ _%self199908%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199910%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self198483199768%_)
        (let* ((_%self199771%_ _%self198483199768%_)
               (_%self199773%_ _%self199771%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199773%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self198484199631%_)
        (let* ((_%self199634%_ _%self198484199631%_)
               (_%self199636%_ _%self199634%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199636%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199636%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199636%_
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
      (lambda (_%self198485199494%_)
        (let* ((_%self199497%_ _%self198485199494%_)
               (_%self199499%_ _%self199497%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199499%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199499%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199499%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self198486199357%_)
        (let* ((_%self199360%_ _%self198486199357%_)
               (_%self199362%_ _%self199360%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199362%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199362%_
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
      (lambda (_%self198487199168%_)
        (let* ((_%self199171%_ _%self198487199168%_)
               (_%self199173%_ _%self199171%_)
               (_%self199182199191%_ _%self199173%_)
               (_%E199184199195%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199182199191%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K199185199214%_
                (lambda (_%dispatch199198%_
                         _%arity199199%_
                         _%signature199200%_)
                  (if _%signature199200%_
                      (let ((_%signature199202%_ _%signature199200%_))
                        (cons '@lambda
                              (cons _%arity199199%_
                                    (cons _%dispatch199198%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature199202%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature199202%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature199202%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature199202%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature199202%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity199199%_
                                  (cons _%dispatch199198%_ '()))))))
               (_%e199186199217%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199182199191%_ '1 '#f '#f)))
               (_%e199187199220%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199182199191%_ '2 '#f '#f)))
               (_%signature199223%_ _%e199187199220%_)
               (_%e199188199225%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199182199191%_ '3 '#f '#f)))
               (_%arity199228%_ _%e199188199225%_)
               (_%e199189199230%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199182199191%_ '4 '#f '#f)))
               (_%dispatch199233%_ _%e199189199230%_))
          (_%K199185199214%_
           _%dispatch199233%_
           _%arity199228%_
           _%signature199223%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self198488199027%_)
        (let* ((_%self199030%_ _%self198488199027%_)
               (_%self199032%_ _%self199030%_))
          (letrec ((_%clause-e199042%_
                    (lambda (_%clause199044%_)
                      (cdr (let ((__method201749
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause199044%_
                                     'typedecl))))
                             (if __method201749
                                 (let ()
                                   (declare (not safe))
                                   (__method201749 _%clause199044%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause199044%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e199042%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self199032%_
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
      (lambda (_%self198489198890%_)
        (let* ((_%self198893%_ _%self198489198890%_)
               (_%self198895%_ _%self198893%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198895%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198895%_
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
      (lambda (_%self198490198753%_)
        (let* ((_%self198756%_ _%self198490198753%_)
               (_%self198758%_ _%self198756%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198758%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198758%_
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
      (lambda (_%self198491198616%_)
        (let* ((_%self198619%_ _%self198491198616%_)
               (_%self198621%_ _%self198619%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198621%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
