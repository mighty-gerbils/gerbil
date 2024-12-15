(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1734279335)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp201740
                   (let ((__obj201734
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
                       (gxc#optimizer-info:::init! __obj201734))
                     __obj201734)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp201740)))))
    (define gxc#optimize!
      (lambda (_%ctx201343%_)
        (let ((__tmp201743
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx201343%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx201343%_)
                 (let ((__tmp201745
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp201744
                        (##structure-ref
                         _%ctx201343%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp201745 __tmp201744 '#t))
                 (let ((_%code201346%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx201343%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx201343%_
                    _%code201346%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp201742 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201741 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201743
           gxc#current-compile-mutators
           __tmp201742
           gxc#current-compile-local-type
           __tmp201741))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx201329%_)
        (letrec ((_%load-it!201331%_
                  (lambda (_%id201341%_)
                    (if (let ((__tmp201746
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp201746 _%id201341%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id201341%_)
                          (let ((__tmp201747
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp201747 _%id201341%_ '#t)))))))
          (let* ((_%modid201333%_
                  (##structure-ref
                   _%ctx201329%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str201335%_ (symbol->string _%modid201333%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str201335%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str201335%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201331%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201331%_
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
      (lambda (_%ctx201266%_)
        (letrec* ((_%deps201268%_
                   (let* ((_%imports201319%_
                           (##structure-ref
                            _%ctx201266%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e201321%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx201266%_))))
                     (if _%$e201321%_
                         ((lambda (_%g201323201325%_)
                            (cons _%g201323201325%_ _%imports201319%_))
                          _%$e201321%_)
                         _%imports201319%_))))
          (let _%lp201270%_ ((_%rest201272%_ _%deps201268%_))
            (let* ((_%rest201273201281%_ _%rest201272%_)
                   (_%else201275201289%_ (lambda () '#!void))
                   (_%K201277201307%_
                    (lambda (_%rest201292%_ _%hd201293%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd201293%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp201749
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp201748
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201293%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp201749 __tmp201748))
                                '#!void
                                (begin
                                  (let ((_%$e201296%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd201293%_))))
                                    (if _%$e201296%_
                                        ((lambda (_%pre201299%_)
                                           (_%lp201270%_
                                            (cons _%pre201299%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd201293%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e201296%_)
                                        (_%lp201270%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201293%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd201293%_)))
                            (_%lp201270%_ _%rest201292%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd201293%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp201751
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp201750
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd201293%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp201751 __tmp201750))
                                    '#!void
                                    (begin
                                      (_%lp201270%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201293%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd201293%_)))
                                (_%lp201270%_ _%rest201292%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd201293%_
                                     'gx#module-import::t))
                                  (_%lp201270%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201293%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest201292%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd201293%_
                                         'gx#module-export::t))
                                      (_%lp201270%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd201293%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest201292%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd201293%_
                                             'gx#import-set::t))
                                          (_%lp201270%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd201293%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest201292%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd201293%_))))))))))
              (if (pair? _%rest201273201281%_)
                  (let ((_%hd201278201310%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201273201281%_)))
                        (_%tl201279201312%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201273201281%_))))
                    (let* ((_%hd201315%_ _%hd201278201310%_)
                           (_%rest201317%_ _%tl201279201312%_))
                      (_%K201277201307%_ _%rest201317%_ _%hd201315%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx201246%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx201246%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx201246%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht201248%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id201250%_
                    (##structure-ref
                     _%ctx201246%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod201252%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht201248%_ _%id201250%_)))
                   (_%$e201255%_ _%mod201252%_))
              (if _%$e201255%_
                  _%$e201255%_
                  (let* ((_%mod201258%_
                          (gxc#optimizer-import-ssxi _%ctx201246%_))
                         (_%val201263%_
                          (let ((_%$e201260%_ _%mod201258%_))
                            (if _%$e201260%_ _%$e201260%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht201248%_ _%id201250%_ _%val201263%_))
                    _%val201263%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx201244%_)
        (if (##structure-ref _%ctx201244%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx201244%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id201221%_)
        (letrec ((_%catch-e201223%_
                  (lambda (_%exn201242%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn201242%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn201242%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id201221%_))))
                    '#f))
                 (_%import-e201224%_
                  (lambda ()
                    (let* ((_%str-id201227%_
                            (let ((__tmp201752
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id201221%_))))
                              (declare (not safe))
                              (##string-append __tmp201752 '".ssxi")))
                           (_%artefact-path201235%_
                            (let ((_%odir201228201230%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir201228201230%_
                                  (let ((_%odir201233%_ _%odir201228201230%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id201227%_
                                        '".ss"))
                                     _%odir201233%_))
                                  '#f)))
                           (_%library-path201237%_
                            (let ((__tmp201753
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id201227%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp201753)))
                           (_%ssxi-path201239%_
                            (if (and _%artefact-path201235%_
                                     (file-exists? _%artefact-path201235%_))
                                _%artefact-path201235%_
                                _%library-path201237%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path201239%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path201239%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e201223%_ _%import-e201224%_)))))
    (define gxc#optimize-source
      (lambda (_%stx201206%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx201206%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx201206%_))
        (let* ((_%stx201208%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx201206%_)))
               (_%stx201210%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx201208%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx201210%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx201210%_))
          (let _%fixpoint201213%_ ((_%current201215%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx201210%_))
            (let ((_%refined201217%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current201215%_ _%refined201217%_)
                  '#!void
                  (_%fixpoint201213%_ _%refined201217%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx201210%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx201210%_))
          (let ((_%stx201219%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx201210%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx201219%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp201755 (list gxc#::generate-runtime-empty::t))
            (__tmp201754 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp201755
         '()
         __tmp201754
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args201203%_
        (apply make-instance gxc#::generate-ssxi::t _%$args201203%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp201756
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
        (__make-promise __tmp201756)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx201195%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self201198%_
                (let ((__obj201736
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj201736))
               (__tmp201757
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201198%_ _%stx201195%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201757
           gxc#current-compile-method
           _%self201198%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self201155%_ _%stx201156%_)
        (let* ((_%g201158201168%_
                (lambda (_%g201159201165%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201159201165%_))))
               (_%g201157201192%_
                (lambda (_%g201159201171%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201159201171%_))
                      (let ((_%e201161201173%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201159201171%_))))
                        (let ((_%hd201162201176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201161201173%_)))
                              (_%tl201163201178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201161201173%_))))
                          ((lambda (_%L201181%_)
                             (let ((__tmp201760
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self201155%_
                                         _%stx201156%_))))
                                   (__tmp201758
                                    (let ((__tmp201759
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp201759 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp201760
                                gx#current-expander-phi
                                __tmp201758)))
                           _%tl201163201178%_)))
                      (_%g201158201168%_ _%g201159201171%_)))))
          (_%g201157201192%_ _%stx201156%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self201094%_ _%stx201095%_)
        (let* ((_%g201097201111%_
                (lambda (_%g201098201108%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201098201108%_))))
               (_%g201096201152%_
                (lambda (_%g201098201114%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201098201114%_))
                      (let ((_%e201101201116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201098201114%_))))
                        (let ((_%hd201102201119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201101201116%_)))
                              (_%tl201103201121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201101201116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201103201121%_))
                              (let ((_%e201104201124%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201103201121%_))))
                                (let ((_%hd201105201127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201104201124%_)))
                                      (_%tl201106201129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201104201124%_))))
                                  ((lambda (_%L201132%_ _%L201133%_)
                                     (let* ((_%ctx201146%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L201133%_)))
                                            (_%code201148%_
                                             (##structure-ref
                                              _%ctx201146%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp201761
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self201094%_
                                                  _%code201148%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp201761
                                        gx#current-expander-context
                                        _%ctx201146%_)))
                                   _%tl201106201129%_
                                   _%hd201105201127%_)))
                              (_%g201097201111%_ _%g201098201114%_))))
                      (_%g201097201111%_ _%g201098201114%_)))))
          (_%g201096201152%_ _%stx201095%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self200899%_ _%stx200900%_)
        (letrec ((_%generate-e200902%_
                  (lambda (_%id201079%_)
                    (let* ((_%sym201081%_
                            (if (let ((__tmp201762
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp201762))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id201079%_))
                                '#f))
                           (_%$e201083%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym201081%_))))
                      (if _%$e201083%_
                          ((lambda (_%klass201086%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym201081%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym201081%_
                                                     (cons (let ((__method201737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass201086%_ 'typedecl))))
                     (if __method201737
                         (let ()
                           (declare (not safe))
                           (__method201737 _%klass201086%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass201086%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym201081%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym201081%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e201083%_)
                          (let ((_%$e201088%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym201081%_))))
                            (if _%$e201088%_
                                ((lambda (_%type201091%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym201081%_
                                      '" "
                                      _%type201091%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type201091%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym201081%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym201081%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type201091%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym201081%_
                                                   (cons (let ((__method201738
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type201091%_ 'typedecl))))
                   (if __method201738
                       (let ()
                         (declare (not safe))
                         (__method201738 _%type201091%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type201091%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e201088%_)
                                '(begin))))))))
          (let* ((_%__stx201349201350%_ _%stx200900%_)
                 (_%g200905200943%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201349201350%_)))))
            (let ((_%__kont201351201352%_
                   (lambda (_%L201061%_) (_%generate-e200902%_ _%L201061%_)))
                  (_%__kont201353201354%_
                   (lambda (_%L200996%_)
                     (let ((_%types201022%_
                            (map _%generate-e200902%_
                                 (let ((__tmp201763
                                        (lambda (_%g201014201017%_
                                                 _%g201015201019%_)
                                          (cons _%g201014201017%_
                                                _%g201015201019%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp201763 '() _%L200996%_)))))
                       (cons 'begin _%types201022%_)))))
              (let ((_%__match201404201405%_
                     (lambda (_%e200921200948%_
                              _%hd200922200951%_
                              _%tl200923200953%_
                              _%e200924200956%_
                              _%hd200925200959%_
                              _%tl200926200961%_
                              _%__splice201355201356%_
                              _%target200927200964%_
                              _%tl200929200966%_)
                       (letrec ((_%loop200930200969%_
                                 (lambda (_%hd200928200972%_
                                          _%id200934200974%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd200928200972%_))
                                       (let ((_%e200931200977%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200928200972%_))))
                                         (let ((_%lp-tl200933200982%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e200931200977%_)))
                                               (_%lp-hd200932200980%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e200931200977%_))))
                                           (_%loop200930200969%_
                                            _%lp-tl200933200982%_
                                            (cons _%lp-hd200932200980%_
                                                  _%id200934200974%_))))
                                       (let ((_%id200935200985%_
                                              (reverse _%id200934200974%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200926200961%_))
                                             (let ((_%e200936200988%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl200926200961%_))))
                                               (let ((_%tl200938200993%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200936200988%_)))
                                                     (_%hd200937200991%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200936200988%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl200938200993%_))
                                                     (_%__kont201353201354%_
                                                      _%id200935200985%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200905200943%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g200905200943%_))))))))
                         (_%loop200930200969%_ _%target200927200964%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201349201350%_))
                    (let ((_%e200908201029%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201349201350%_))))
                      (let ((_%tl200910201034%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200908201029%_)))
                            (_%hd200909201032%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200908201029%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200910201034%_))
                            (let ((_%e200911201037%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl200910201034%_))))
                              (let ((_%tl200913201042%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200911201037%_)))
                                    (_%hd200912201040%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200911201037%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd200912201040%_))
                                    (let ((_%e200914201045%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd200912201040%_))))
                                      (let ((_%tl200916201050%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200914201045%_)))
                                            (_%hd200915201048%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200914201045%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200916201050%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200913201042%_))
                                                (let ((_%e200917201053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200913201042%_))))
                                                  (let ((_%tl200919201058%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200917201053%_)))
                                                        (_%hd200918201056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200917201053%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200919201058%_))
                                                        (_%__kont201351201352%_
                                                         _%hd200915201048%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd200912201040%_))
                                                            (let ((_%__splice201355201356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd200912201040%_ '0))))
                      (let ((_%tl200929200966%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201355201356%_ '1)))
                            (_%target200927200964%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201355201356%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200929200966%_))
                            (_%__match201404201405%_
                             _%e200908201029%_
                             _%hd200909201032%_
                             _%tl200910201034%_
                             _%e200911201037%_
                             _%hd200912201040%_
                             _%tl200913201042%_
                             _%__splice201355201356%_
                             _%target200927200964%_
                             _%tl200929200966%_)
                            (let ()
                              (declare (not safe))
                              (_%g200905200943%_)))))
                    (let () (declare (not safe)) (_%g200905200943%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd200912201040%_))
                                                    (let ((_%__splice201355201356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd200912201040%_
                                                              '0))))
                                                      (let ((_%tl200929200966%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice201355201356%_ '1)))
                    (_%target200927200964%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice201355201356%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200929200966%_))
                    (_%__match201404201405%_
                     _%e200908201029%_
                     _%hd200909201032%_
                     _%tl200910201034%_
                     _%e200911201037%_
                     _%hd200912201040%_
                     _%tl200913201042%_
                     _%__splice201355201356%_
                     _%target200927200964%_
                     _%tl200929200966%_)
                    (let () (declare (not safe)) (_%g200905200943%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200905200943%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd200912201040%_))
                                                (let ((_%__splice201355201356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd200912201040%_
                                                          '0))))
                                                  (let ((_%tl200929200966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201355201356%_
                                                            '1)))
                                                        (_%target200927200964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201355201356%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200929200966%_))
                                                        (_%__match201404201405%_
                                                         _%e200908201029%_
                                                         _%hd200909201032%_
                                                         _%tl200910201034%_
                                                         _%e200911201037%_
                                                         _%hd200912201040%_
                                                         _%tl200913201042%_
                                                         _%__splice201355201356%_
                                                         _%target200927200964%_
                                                         _%tl200929200966%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200905200943%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200905200943%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd200912201040%_))
                                        (let ((_%__splice201355201356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd200912201040%_
                                                  '0))))
                                          (let ((_%tl200929200966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201355201356%_
                                                    '1)))
                                                (_%target200927200964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201355201356%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200929200966%_))
                                                (_%__match201404201405%_
                                                 _%e200908201029%_
                                                 _%hd200909201032%_
                                                 _%tl200910201034%_
                                                 _%e200911201037%_
                                                 _%hd200912201040%_
                                                 _%tl200913201042%_
                                                 _%__splice201355201356%_
                                                 _%target200927200964%_
                                                 _%tl200929200966%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200905200943%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200905200943%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g200905200943%_)))))
                    (let () (declare (not safe)) (_%g200905200943%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self200452%_ _%stx200453%_)
        (let* ((_%__stx201407201408%_ _%stx200453%_)
               (_%g200457200559%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201407201408%_)))))
          (let ((_%__kont201409201410%_
                 (lambda (_%L200849%_
                          _%L200850%_
                          _%L200851%_
                          _%L200852%_
                          _%L200853%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200852%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200851%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200850%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L200849%_))
                                                 '())))))))
                (_%__kont201411201412%_
                 (lambda (_%L200675%_ _%L200676%_ _%L200677%_ _%L200678%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200677%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200676%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200675%_))
                                           (cons '#f '())))))))
                (_%__kont201413201414%_ (lambda () '(begin))))
            (let ((_%__match201542201543%_
                   (lambda (_%e200464200721%_
                            _%hd200465200724%_
                            _%tl200466200726%_
                            _%e200467200729%_
                            _%hd200468200732%_
                            _%tl200469200734%_
                            _%e200470200737%_
                            _%hd200471200740%_
                            _%tl200472200742%_
                            _%e200473200745%_
                            _%hd200474200748%_
                            _%tl200475200750%_
                            _%e200476200753%_
                            _%hd200477200756%_
                            _%tl200478200758%_
                            _%e200479200761%_
                            _%hd200480200764%_
                            _%tl200481200766%_
                            _%e200482200769%_
                            _%hd200483200772%_
                            _%tl200484200774%_
                            _%e200485200777%_
                            _%hd200486200780%_
                            _%tl200487200782%_
                            _%e200488200785%_
                            _%hd200489200788%_
                            _%tl200490200790%_
                            _%e200491200793%_
                            _%hd200492200796%_
                            _%tl200493200798%_
                            _%e200494200801%_
                            _%hd200495200804%_
                            _%tl200496200806%_
                            _%e200497200809%_
                            _%hd200498200812%_
                            _%tl200499200814%_
                            _%e200500200817%_
                            _%hd200501200820%_
                            _%tl200502200822%_
                            _%e200503200825%_
                            _%hd200504200828%_
                            _%tl200505200830%_
                            _%e200506200833%_
                            _%hd200507200836%_
                            _%tl200508200838%_
                            _%e200509200841%_
                            _%hd200510200844%_
                            _%tl200511200846%_)
                     (let ((_%L200849%_ _%hd200510200844%_)
                           (_%L200850%_ _%hd200501200820%_)
                           (_%L200851%_ _%hd200492200796%_)
                           (_%L200852%_ _%hd200483200772%_)
                           (_%L200853%_ _%hd200474200748%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L200853%_
                              'bind-method!))
                           (_%__kont201409201410%_
                            _%L200849%_
                            _%L200850%_
                            _%L200851%_
                            _%L200852%_
                            _%L200853%_)
                           (_%__kont201413201414%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201407201408%_))
                  (let ((_%e200464200721%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201407201408%_))))
                    (let ((_%tl200466200726%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200464200721%_)))
                          (_%hd200465200724%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200464200721%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200466200726%_))
                          (let ((_%e200467200729%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200466200726%_))))
                            (let ((_%tl200469200734%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200467200729%_)))
                                  (_%hd200468200732%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200467200729%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200468200732%_))
                                  (let ((_%e200470200737%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200468200732%_))))
                                    (let ((_%tl200472200742%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200470200737%_)))
                                          (_%hd200471200740%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200470200737%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200471200740%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200471200740%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200472200742%_))
                                                  (let ((_%e200473200745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200472200742%_))))
                                                    (let ((_%tl200475200750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200473200745%_)))
                                                          (_%hd200474200748%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200473200745%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200475200750%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200469200734%_))
                      (let ((_%e200476200753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200469200734%_))))
                        (let ((_%tl200478200758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200476200753%_)))
                              (_%hd200477200756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200476200753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200477200756%_))
                              (let ((_%e200479200761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd200477200756%_))))
                                (let ((_%tl200481200766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200479200761%_)))
                                      (_%hd200480200764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200479200761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200480200764%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200480200764%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200481200766%_))
                                              (let ((_%e200482200769%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200481200766%_))))
                                                (let ((_%tl200484200774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200482200769%_)))
                                                      (_%hd200483200772%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200482200769%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200484200774%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200478200758%_))
                                                          (let ((_%e200485200777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200478200758%_))))
                    (let ((_%tl200487200782%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200485200777%_)))
                          (_%hd200486200780%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200485200777%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200486200780%_))
                          (let ((_%e200488200785%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200486200780%_))))
                            (let ((_%tl200490200790%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200488200785%_)))
                                  (_%hd200489200788%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200488200785%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd200489200788%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd200489200788%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200490200790%_))
                                          (let ((_%e200491200793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200490200790%_))))
                                            (let ((_%tl200493200798%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200491200793%_)))
                                                  (_%hd200492200796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200491200793%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200493200798%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200487200782%_))
                                                      (let ((_%e200494200801%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200487200782%_))))
                (let ((_%tl200496200806%_
                       (let () (declare (not safe)) (##cdr _%e200494200801%_)))
                      (_%hd200495200804%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200494200801%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd200495200804%_))
                      (let ((_%e200497200809%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd200495200804%_))))
                        (let ((_%tl200499200814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200497200809%_)))
                              (_%hd200498200812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200497200809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd200498200812%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd200498200812%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200499200814%_))
                                      (let ((_%e200500200817%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200499200814%_))))
                                        (let ((_%tl200502200822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200500200817%_)))
                                              (_%hd200501200820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200500200817%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200502200822%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200496200806%_))
                                                  (let ((_%e200503200825%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200496200806%_))))
                                                    (let ((_%tl200505200830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200503200825%_)))
                                                          (_%hd200504200828%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200503200825%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200504200828%_))
                                                          (let ((_%e200506200833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd200504200828%_))))
                    (let ((_%tl200508200838%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200506200833%_)))
                          (_%hd200507200836%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200506200833%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200507200836%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd200507200836%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200508200838%_))
                                  (let ((_%e200509200841%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200508200838%_))))
                                    (let ((_%tl200511200846%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200509200841%_)))
                                          (_%hd200510200844%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200509200841%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200511200846%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200505200830%_))
                                              (_%__match201542201543%_
                                               _%e200464200721%_
                                               _%hd200465200724%_
                                               _%tl200466200726%_
                                               _%e200467200729%_
                                               _%hd200468200732%_
                                               _%tl200469200734%_
                                               _%e200470200737%_
                                               _%hd200471200740%_
                                               _%tl200472200742%_
                                               _%e200473200745%_
                                               _%hd200474200748%_
                                               _%tl200475200750%_
                                               _%e200476200753%_
                                               _%hd200477200756%_
                                               _%tl200478200758%_
                                               _%e200479200761%_
                                               _%hd200480200764%_
                                               _%tl200481200766%_
                                               _%e200482200769%_
                                               _%hd200483200772%_
                                               _%tl200484200774%_
                                               _%e200485200777%_
                                               _%hd200486200780%_
                                               _%tl200487200782%_
                                               _%e200488200785%_
                                               _%hd200489200788%_
                                               _%tl200490200790%_
                                               _%e200491200793%_
                                               _%hd200492200796%_
                                               _%tl200493200798%_
                                               _%e200494200801%_
                                               _%hd200495200804%_
                                               _%tl200496200806%_
                                               _%e200497200809%_
                                               _%hd200498200812%_
                                               _%tl200499200814%_
                                               _%e200500200817%_
                                               _%hd200501200820%_
                                               _%tl200502200822%_
                                               _%e200503200825%_
                                               _%hd200504200828%_
                                               _%tl200505200830%_
                                               _%e200506200833%_
                                               _%hd200507200836%_
                                               _%tl200508200838%_
                                               _%e200509200841%_
                                               _%hd200510200844%_
                                               _%tl200511200846%_)
                                              (_%__kont201413201414%_))
                                          (_%__kont201413201414%_))))
                                  (_%__kont201413201414%_))
                              (_%__kont201413201414%_))
                          (_%__kont201413201414%_))))
                  (_%__kont201413201414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200496200806%_))
                                                      (if (let ((__tmp201764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp201764 'bind-method!))
                  (let ((_%L200675%_ _%hd200501200820%_)
                        (_%L200676%_ _%hd200492200796%_)
                        (_%L200677%_ _%hd200483200772%_)
                        (_%L200678%_ _%hd200474200748%_))
                    (_%__kont201411201412%_
                     _%L200675%_
                     _%L200676%_
                     _%L200677%_
                     _%L200678%_))
                  (_%__kont201413201414%_))
              (_%__kont201413201414%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201413201414%_))))
                                      (_%__kont201413201414%_))
                                  (_%__kont201413201414%_))
                              (_%__kont201413201414%_))))
                      (_%__kont201413201414%_))))
              (_%__kont201413201414%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201413201414%_))))
                                          (_%__kont201413201414%_))
                                      (_%__kont201413201414%_))
                                  (_%__kont201413201414%_))))
                          (_%__kont201413201414%_))))
                  (_%__kont201413201414%_))
              (_%__kont201413201414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201413201414%_))
                                          (_%__kont201413201414%_))
                                      (_%__kont201413201414%_))))
                              (_%__kont201413201414%_))))
                      (_%__kont201413201414%_))
                  (_%__kont201413201414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201413201414%_))
                                              (_%__kont201413201414%_))
                                          (_%__kont201413201414%_))))
                                  (_%__kont201413201414%_))))
                          (_%__kont201413201414%_))))
                  (_%__kont201413201414%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self200276%_ _%stx200277%_)
        (let* ((_%__stx201651201652%_ _%stx200277%_)
               (_%g200280200320%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201651201652%_)))))
          (let ((_%__kont201653201654%_
                 (lambda (_%L200426%_ _%L200427%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200427%_))
                               (cons _%L200426%_ '())))))
                (_%__kont201655201656%_
                 (lambda (_%L200349%_ _%L200350%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201651201652%_))
                (let ((_%e200284200370%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx201651201652%_))))
                  (let ((_%tl200286200375%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200284200370%_)))
                        (_%hd200285200373%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200284200370%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200286200375%_))
                        (let ((_%e200287200378%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200286200375%_))))
                          (let ((_%tl200289200383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200287200378%_)))
                                (_%hd200288200381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200287200378%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200288200381%_))
                                (let ((_%e200290200386%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200288200381%_))))
                                  (let ((_%tl200292200391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200290200386%_)))
                                        (_%hd200291200389%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200290200386%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200291200389%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd200291200389%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200292200391%_))
                                                (let ((_%e200293200394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200292200391%_))))
                                                  (let ((_%tl200295200399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200293200394%_)))
                                                        (_%hd200294200397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200293200394%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200295200399%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200289200383%_))
                                                            (let ((_%e200296200402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200289200383%_))))
                      (let ((_%tl200298200407%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200296200402%_)))
                            (_%hd200297200405%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200296200402%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd200297200405%_))
                            (let ((_%e200299200410%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200297200405%_))))
                              (let ((_%tl200301200415%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200299200410%_)))
                                    (_%hd200300200413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200299200410%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200300200413%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd200300200413%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200301200415%_))
                                            (let ((_%e200302200418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200301200415%_))))
                                              (let ((_%tl200304200423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200302200418%_)))
                                                    (_%hd200303200421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200302200418%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200304200423%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200298200407%_))
                                                        (_%__kont201653201654%_
                                                         _%hd200303200421%_
                                                         _%hd200294200397%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200280200320%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200298200407%_))
                                                        (_%__kont201655201656%_
                                                         _%hd200297200405%_
                                                         _%hd200288200381%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200280200320%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200298200407%_))
                                                (_%__kont201655201656%_
                                                 _%hd200297200405%_
                                                 _%hd200288200381%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200280200320%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200298200407%_))
                                            (_%__kont201655201656%_
                                             _%hd200297200405%_
                                             _%hd200288200381%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200280200320%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200298200407%_))
                                        (_%__kont201655201656%_
                                         _%hd200297200405%_
                                         _%hd200288200381%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200280200320%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200298200407%_))
                                (_%__kont201655201656%_
                                 _%hd200297200405%_
                                 _%hd200288200381%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200280200320%_))))))
                    (let () (declare (not safe)) (_%g200280200320%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200289200383%_))
                    (let ((_%e200313200341%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200289200383%_))))
                      (let ((_%tl200315200346%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200313200341%_)))
                            (_%hd200314200344%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200313200341%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200315200346%_))
                            (_%__kont201655201656%_
                             _%hd200314200344%_
                             _%hd200288200381%_)
                            (let ()
                              (declare (not safe))
                              (_%g200280200320%_)))))
                    (let () (declare (not safe)) (_%g200280200320%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200289200383%_))
                                                    (let ((_%e200313200341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200289200383%_))))
                                                      (let ((_%tl200315200346%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200313200341%_)))
                    (_%hd200314200344%_
                     (let () (declare (not safe)) (##car _%e200313200341%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200315200346%_))
                    (_%__kont201655201656%_
                     _%hd200314200344%_
                     _%hd200288200381%_)
                    (let () (declare (not safe)) (_%g200280200320%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200280200320%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200289200383%_))
                                                (let ((_%e200313200341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200289200383%_))))
                                                  (let ((_%tl200315200346%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200313200341%_)))
                                                        (_%hd200314200344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200313200341%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200315200346%_))
                                                        (_%__kont201655201656%_
                                                         _%hd200314200344%_
                                                         _%hd200288200381%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200280200320%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200280200320%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200289200383%_))
                                            (let ((_%e200313200341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200289200383%_))))
                                              (let ((_%tl200315200346%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200313200341%_)))
                                                    (_%hd200314200344%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200313200341%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200315200346%_))
                                                    (_%__kont201655201656%_
                                                     _%hd200314200344%_
                                                     _%hd200288200381%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200280200320%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200280200320%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200289200383%_))
                                    (let ((_%e200313200341%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl200289200383%_))))
                                      (let ((_%tl200315200346%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200313200341%_)))
                                            (_%hd200314200344%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200313200341%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200315200346%_))
                                            (_%__kont201655201656%_
                                             _%hd200314200344%_
                                             _%hd200288200381%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200280200320%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200280200320%_))))))
                        (let () (declare (not safe)) (_%g200280200320%_)))))
                (let () (declare (not safe)) (_%g200280200320%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self198470200261%_)
        (let* ((_%self200264%_ _%self198470200261%_)
               (_%self200266%_ _%self200264%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200266%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self198471200032%_)
        (let* ((_%self200035%_ _%self198471200032%_)
               (_%self200037%_ _%self200035%_)
               (_%self200046200062%_ _%self200037%_)
               (_%E200048200066%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self200046200062%_
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
               (_%K200049200081%_
                (lambda (_%methods200069%_
                         _%metaclass200070%_
                         _%system?200071%_
                         _%final?200072%_
                         _%struct?200073%_
                         _%constructor200074%_
                         _%fields200075%_
                         _%slots200076%_
                         _%precendence-list200077%_
                         _%super200078%_
                         _%id200079%_)
                  (cons '@class
                        (cons _%id200079%_
                              (cons _%super200078%_
                                    (cons _%precendence-list200077%_
                                          (cons _%slots200076%_
                                                (cons _%fields200075%_
                                                      (cons _%constructor200074%_
                                                            (cons _%struct?200073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?200072%_
                                (cons _%system?200071%_
                                      (cons _%metaclass200070%_
                                            (cons (if _%methods200069%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods200069%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e200050200084%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200046200062%_ '1 '#f '#f)))
               (_%id200087%_ _%e200050200084%_)
               (_%e200051200089%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200046200062%_ '2 '#f '#f)))
               (_%super200092%_ _%e200051200089%_)
               (_%e200052200094%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200046200062%_ '3 '#f '#f)))
               (_%precendence-list200097%_ _%e200052200094%_)
               (_%e200053200099%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200046200062%_ '4 '#f '#f)))
               (_%slots200102%_ _%e200053200099%_)
               (_%e200054200104%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200046200062%_ '5 '#f '#f)))
               (_%fields200107%_ _%e200054200104%_)
               (_%e200055200109%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200046200062%_ '6 '#f '#f)))
               (_%constructor200112%_ _%e200055200109%_)
               (_%e200056200114%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200046200062%_ '7 '#f '#f)))
               (_%struct?200117%_ _%e200056200114%_)
               (_%e200057200119%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200046200062%_ '8 '#f '#f)))
               (_%final?200122%_ _%e200057200119%_)
               (_%e200058200124%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200046200062%_ '9 '#f '#f)))
               (_%system?200127%_ _%e200058200124%_)
               (_%e200059200129%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200046200062%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass200132%_ _%e200059200129%_)
               (_%e200060200134%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200046200062%_
                   '11
                   '#f
                   '#f)))
               (_%methods200137%_ _%e200060200134%_))
          (_%K200049200081%_
           _%methods200137%_
           _%metaclass200132%_
           _%system?200127%_
           _%final?200122%_
           _%struct?200117%_
           _%constructor200112%_
           _%fields200107%_
           _%slots200102%_
           _%precendence-list200097%_
           _%super200092%_
           _%id200087%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self198472199895%_)
        (let* ((_%self199898%_ _%self198472199895%_)
               (_%self199900%_ _%self199898%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199900%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self198473199758%_)
        (let* ((_%self199761%_ _%self198473199758%_)
               (_%self199763%_ _%self199761%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199763%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self198474199621%_)
        (let* ((_%self199624%_ _%self198474199621%_)
               (_%self199626%_ _%self199624%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199626%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199626%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199626%_
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
      (lambda (_%self198475199484%_)
        (let* ((_%self199487%_ _%self198475199484%_)
               (_%self199489%_ _%self199487%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199489%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199489%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199489%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self198476199347%_)
        (let* ((_%self199350%_ _%self198476199347%_)
               (_%self199352%_ _%self199350%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199352%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199352%_
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
      (lambda (_%self198477199158%_)
        (let* ((_%self199161%_ _%self198477199158%_)
               (_%self199163%_ _%self199161%_)
               (_%self199172199181%_ _%self199163%_)
               (_%E199174199185%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199172199181%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K199175199204%_
                (lambda (_%dispatch199188%_
                         _%arity199189%_
                         _%signature199190%_)
                  (if _%signature199190%_
                      (let ((_%signature199192%_ _%signature199190%_))
                        (cons '@lambda
                              (cons _%arity199189%_
                                    (cons _%dispatch199188%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature199192%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature199192%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature199192%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature199192%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature199192%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity199189%_
                                  (cons _%dispatch199188%_ '()))))))
               (_%e199176199207%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199172199181%_ '1 '#f '#f)))
               (_%e199177199210%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199172199181%_ '2 '#f '#f)))
               (_%signature199213%_ _%e199177199210%_)
               (_%e199178199215%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199172199181%_ '3 '#f '#f)))
               (_%arity199218%_ _%e199178199215%_)
               (_%e199179199220%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199172199181%_ '4 '#f '#f)))
               (_%dispatch199223%_ _%e199179199220%_))
          (_%K199175199204%_
           _%dispatch199223%_
           _%arity199218%_
           _%signature199213%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self198478199017%_)
        (let* ((_%self199020%_ _%self198478199017%_)
               (_%self199022%_ _%self199020%_))
          (letrec ((_%clause-e199032%_
                    (lambda (_%clause199034%_)
                      (cdr (let ((__method201739
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause199034%_
                                     'typedecl))))
                             (if __method201739
                                 (let ()
                                   (declare (not safe))
                                   (__method201739 _%clause199034%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause199034%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e199032%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self199022%_
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
      (lambda (_%self198479198880%_)
        (let* ((_%self198883%_ _%self198479198880%_)
               (_%self198885%_ _%self198883%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198885%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198885%_
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
      (lambda (_%self198480198743%_)
        (let* ((_%self198746%_ _%self198480198743%_)
               (_%self198748%_ _%self198746%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198748%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198748%_
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
      (lambda (_%self198481198606%_)
        (let* ((_%self198609%_ _%self198481198606%_)
               (_%self198611%_ _%self198609%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198611%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
