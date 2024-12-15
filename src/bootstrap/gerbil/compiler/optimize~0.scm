(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1734278451)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp201746
                   (let ((__obj201740
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
                       (gxc#optimizer-info:::init! __obj201740))
                     __obj201740)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp201746)))))
    (define gxc#optimize!
      (lambda (_%ctx201349%_)
        (let ((__tmp201749
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx201349%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx201349%_)
                 (let ((__tmp201751
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp201750
                        (##structure-ref
                         _%ctx201349%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp201751 __tmp201750 '#t))
                 (let ((_%code201352%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx201349%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx201349%_
                    _%code201352%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp201748 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201747 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201749
           gxc#current-compile-mutators
           __tmp201748
           gxc#current-compile-local-type
           __tmp201747))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx201335%_)
        (letrec ((_%load-it!201337%_
                  (lambda (_%id201347%_)
                    (if (let ((__tmp201752
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp201752 _%id201347%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id201347%_)
                          (let ((__tmp201753
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp201753 _%id201347%_ '#t)))))))
          (let* ((_%modid201339%_
                  (##structure-ref
                   _%ctx201335%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str201341%_ (symbol->string _%modid201339%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str201341%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str201341%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201337%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201337%_
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
      (lambda (_%ctx201272%_)
        (letrec* ((_%deps201274%_
                   (let* ((_%imports201325%_
                           (##structure-ref
                            _%ctx201272%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e201327%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx201272%_))))
                     (if _%$e201327%_
                         ((lambda (_%g201329201331%_)
                            (cons _%g201329201331%_ _%imports201325%_))
                          _%$e201327%_)
                         _%imports201325%_))))
          (let _%lp201276%_ ((_%rest201278%_ _%deps201274%_))
            (let* ((_%rest201279201287%_ _%rest201278%_)
                   (_%else201281201295%_ (lambda () '#!void))
                   (_%K201283201313%_
                    (lambda (_%rest201298%_ _%hd201299%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd201299%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp201755
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp201754
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201299%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp201755 __tmp201754))
                                '#!void
                                (begin
                                  (let ((_%$e201302%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd201299%_))))
                                    (if _%$e201302%_
                                        ((lambda (_%pre201305%_)
                                           (_%lp201276%_
                                            (cons _%pre201305%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd201299%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e201302%_)
                                        (_%lp201276%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201299%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd201299%_)))
                            (_%lp201276%_ _%rest201298%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd201299%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp201757
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp201756
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd201299%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp201757 __tmp201756))
                                    '#!void
                                    (begin
                                      (_%lp201276%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201299%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd201299%_)))
                                (_%lp201276%_ _%rest201298%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd201299%_
                                     'gx#module-import::t))
                                  (_%lp201276%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201299%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest201298%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd201299%_
                                         'gx#module-export::t))
                                      (_%lp201276%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd201299%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest201298%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd201299%_
                                             'gx#import-set::t))
                                          (_%lp201276%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd201299%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest201298%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd201299%_))))))))))
              (if (pair? _%rest201279201287%_)
                  (let ((_%hd201284201316%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201279201287%_)))
                        (_%tl201285201318%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201279201287%_))))
                    (let* ((_%hd201321%_ _%hd201284201316%_)
                           (_%rest201323%_ _%tl201285201318%_))
                      (_%K201283201313%_ _%rest201323%_ _%hd201321%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx201252%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx201252%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx201252%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht201254%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id201256%_
                    (##structure-ref
                     _%ctx201252%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod201258%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht201254%_ _%id201256%_)))
                   (_%$e201261%_ _%mod201258%_))
              (if _%$e201261%_
                  _%$e201261%_
                  (let* ((_%mod201264%_
                          (gxc#optimizer-import-ssxi _%ctx201252%_))
                         (_%val201269%_
                          (let ((_%$e201266%_ _%mod201264%_))
                            (if _%$e201266%_ _%$e201266%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht201254%_ _%id201256%_ _%val201269%_))
                    _%val201269%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx201250%_)
        (if (##structure-ref _%ctx201250%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx201250%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id201227%_)
        (letrec ((_%catch-e201229%_
                  (lambda (_%exn201248%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn201248%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn201248%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id201227%_))))
                    '#f))
                 (_%import-e201230%_
                  (lambda ()
                    (let* ((_%str-id201233%_
                            (let ((__tmp201758
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id201227%_))))
                              (declare (not safe))
                              (##string-append __tmp201758 '".ssxi")))
                           (_%artefact-path201241%_
                            (let ((_%odir201234201236%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir201234201236%_
                                  (let ((_%odir201239%_ _%odir201234201236%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id201233%_
                                        '".ss"))
                                     _%odir201239%_))
                                  '#f)))
                           (_%library-path201243%_
                            (let ((__tmp201759
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id201233%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp201759)))
                           (_%ssxi-path201245%_
                            (if (and _%artefact-path201241%_
                                     (file-exists? _%artefact-path201241%_))
                                _%artefact-path201241%_
                                _%library-path201243%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path201245%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path201245%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e201229%_ _%import-e201230%_)))))
    (define gxc#optimize-source
      (lambda (_%stx201212%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx201212%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx201212%_))
        (let* ((_%stx201214%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx201212%_)))
               (_%stx201216%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx201214%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx201216%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx201216%_))
          (let _%fixpoint201219%_ ((_%current201221%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx201216%_))
            (let ((_%refined201223%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current201221%_ _%refined201223%_)
                  '#!void
                  (_%fixpoint201219%_ _%refined201223%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx201216%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx201216%_))
          (let ((_%stx201225%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx201216%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx201225%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp201761 (list gxc#::generate-runtime-empty::t))
            (__tmp201760 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp201761
         '()
         __tmp201760
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args201209%_
        (apply make-instance gxc#::generate-ssxi::t _%$args201209%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp201762
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
        (__make-promise __tmp201762)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx201201%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self201204%_
                (let ((__obj201742
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj201742))
               (__tmp201763
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201204%_ _%stx201201%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201763
           gxc#current-compile-method
           _%self201204%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self201161%_ _%stx201162%_)
        (let* ((_%g201164201174%_
                (lambda (_%g201165201171%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201165201171%_))))
               (_%g201163201198%_
                (lambda (_%g201165201177%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201165201177%_))
                      (let ((_%e201167201179%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201165201177%_))))
                        (let ((_%hd201168201182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201167201179%_)))
                              (_%tl201169201184%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201167201179%_))))
                          ((lambda (_%L201187%_)
                             (let ((__tmp201766
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self201161%_
                                         _%stx201162%_))))
                                   (__tmp201764
                                    (let ((__tmp201765
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp201765 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp201766
                                gx#current-expander-phi
                                __tmp201764)))
                           _%tl201169201184%_)))
                      (_%g201164201174%_ _%g201165201177%_)))))
          (_%g201163201198%_ _%stx201162%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self201100%_ _%stx201101%_)
        (let* ((_%g201103201117%_
                (lambda (_%g201104201114%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201104201114%_))))
               (_%g201102201158%_
                (lambda (_%g201104201120%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201104201120%_))
                      (let ((_%e201107201122%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201104201120%_))))
                        (let ((_%hd201108201125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201107201122%_)))
                              (_%tl201109201127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201107201122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201109201127%_))
                              (let ((_%e201110201130%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201109201127%_))))
                                (let ((_%hd201111201133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201110201130%_)))
                                      (_%tl201112201135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201110201130%_))))
                                  ((lambda (_%L201138%_ _%L201139%_)
                                     (let* ((_%ctx201152%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L201139%_)))
                                            (_%code201154%_
                                             (##structure-ref
                                              _%ctx201152%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp201767
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self201100%_
                                                  _%code201154%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp201767
                                        gx#current-expander-context
                                        _%ctx201152%_)))
                                   _%tl201112201135%_
                                   _%hd201111201133%_)))
                              (_%g201103201117%_ _%g201104201120%_))))
                      (_%g201103201117%_ _%g201104201120%_)))))
          (_%g201102201158%_ _%stx201101%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self200905%_ _%stx200906%_)
        (letrec ((_%generate-e200908%_
                  (lambda (_%id201085%_)
                    (let* ((_%sym201087%_
                            (if (let ((__tmp201768
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp201768))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id201085%_))
                                '#f))
                           (_%$e201089%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym201087%_))))
                      (if _%$e201089%_
                          ((lambda (_%klass201092%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym201087%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym201087%_
                                                     (cons (let ((__method201743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass201092%_ 'typedecl))))
                     (if __method201743
                         (let ()
                           (declare (not safe))
                           (__method201743 _%klass201092%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass201092%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym201087%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym201087%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e201089%_)
                          (let ((_%$e201094%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym201087%_))))
                            (if _%$e201094%_
                                ((lambda (_%type201097%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym201087%_
                                      '" "
                                      _%type201097%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type201097%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym201087%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym201087%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type201097%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym201087%_
                                                   (cons (let ((__method201744
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type201097%_ 'typedecl))))
                   (if __method201744
                       (let ()
                         (declare (not safe))
                         (__method201744 _%type201097%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type201097%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e201094%_)
                                '(begin))))))))
          (let* ((_%__stx201355201356%_ _%stx200906%_)
                 (_%g200911200949%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201355201356%_)))))
            (let ((_%__kont201357201358%_
                   (lambda (_%L201067%_) (_%generate-e200908%_ _%L201067%_)))
                  (_%__kont201359201360%_
                   (lambda (_%L201002%_)
                     (let ((_%types201028%_
                            (map _%generate-e200908%_
                                 (let ((__tmp201769
                                        (lambda (_%g201020201023%_
                                                 _%g201021201025%_)
                                          (cons _%g201020201023%_
                                                _%g201021201025%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp201769 '() _%L201002%_)))))
                       (cons 'begin _%types201028%_)))))
              (let ((_%__match201410201411%_
                     (lambda (_%e200927200954%_
                              _%hd200928200957%_
                              _%tl200929200959%_
                              _%e200930200962%_
                              _%hd200931200965%_
                              _%tl200932200967%_
                              _%__splice201361201362%_
                              _%target200933200970%_
                              _%tl200935200972%_)
                       (letrec ((_%loop200936200975%_
                                 (lambda (_%hd200934200978%_
                                          _%id200940200980%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd200934200978%_))
                                       (let ((_%e200937200983%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200934200978%_))))
                                         (let ((_%lp-tl200939200988%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e200937200983%_)))
                                               (_%lp-hd200938200986%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e200937200983%_))))
                                           (_%loop200936200975%_
                                            _%lp-tl200939200988%_
                                            (cons _%lp-hd200938200986%_
                                                  _%id200940200980%_))))
                                       (let ((_%id200941200991%_
                                              (reverse _%id200940200980%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200932200967%_))
                                             (let ((_%e200942200994%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl200932200967%_))))
                                               (let ((_%tl200944200999%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200942200994%_)))
                                                     (_%hd200943200997%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200942200994%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl200944200999%_))
                                                     (_%__kont201359201360%_
                                                      _%id200941200991%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200911200949%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g200911200949%_))))))))
                         (_%loop200936200975%_ _%target200933200970%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201355201356%_))
                    (let ((_%e200914201035%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201355201356%_))))
                      (let ((_%tl200916201040%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200914201035%_)))
                            (_%hd200915201038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200914201035%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200916201040%_))
                            (let ((_%e200917201043%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl200916201040%_))))
                              (let ((_%tl200919201048%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200917201043%_)))
                                    (_%hd200918201046%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200917201043%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd200918201046%_))
                                    (let ((_%e200920201051%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd200918201046%_))))
                                      (let ((_%tl200922201056%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200920201051%_)))
                                            (_%hd200921201054%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200920201051%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200922201056%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200919201048%_))
                                                (let ((_%e200923201059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200919201048%_))))
                                                  (let ((_%tl200925201064%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200923201059%_)))
                                                        (_%hd200924201062%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200923201059%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200925201064%_))
                                                        (_%__kont201357201358%_
                                                         _%hd200921201054%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd200918201046%_))
                                                            (let ((_%__splice201361201362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd200918201046%_ '0))))
                      (let ((_%tl200935200972%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201361201362%_ '1)))
                            (_%target200933200970%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201361201362%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200935200972%_))
                            (_%__match201410201411%_
                             _%e200914201035%_
                             _%hd200915201038%_
                             _%tl200916201040%_
                             _%e200917201043%_
                             _%hd200918201046%_
                             _%tl200919201048%_
                             _%__splice201361201362%_
                             _%target200933200970%_
                             _%tl200935200972%_)
                            (let ()
                              (declare (not safe))
                              (_%g200911200949%_)))))
                    (let () (declare (not safe)) (_%g200911200949%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd200918201046%_))
                                                    (let ((_%__splice201361201362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd200918201046%_
                                                              '0))))
                                                      (let ((_%tl200935200972%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice201361201362%_ '1)))
                    (_%target200933200970%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice201361201362%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200935200972%_))
                    (_%__match201410201411%_
                     _%e200914201035%_
                     _%hd200915201038%_
                     _%tl200916201040%_
                     _%e200917201043%_
                     _%hd200918201046%_
                     _%tl200919201048%_
                     _%__splice201361201362%_
                     _%target200933200970%_
                     _%tl200935200972%_)
                    (let () (declare (not safe)) (_%g200911200949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200911200949%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd200918201046%_))
                                                (let ((_%__splice201361201362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd200918201046%_
                                                          '0))))
                                                  (let ((_%tl200935200972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201361201362%_
                                                            '1)))
                                                        (_%target200933200970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201361201362%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200935200972%_))
                                                        (_%__match201410201411%_
                                                         _%e200914201035%_
                                                         _%hd200915201038%_
                                                         _%tl200916201040%_
                                                         _%e200917201043%_
                                                         _%hd200918201046%_
                                                         _%tl200919201048%_
                                                         _%__splice201361201362%_
                                                         _%target200933200970%_
                                                         _%tl200935200972%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200911200949%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200911200949%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd200918201046%_))
                                        (let ((_%__splice201361201362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd200918201046%_
                                                  '0))))
                                          (let ((_%tl200935200972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201361201362%_
                                                    '1)))
                                                (_%target200933200970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201361201362%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200935200972%_))
                                                (_%__match201410201411%_
                                                 _%e200914201035%_
                                                 _%hd200915201038%_
                                                 _%tl200916201040%_
                                                 _%e200917201043%_
                                                 _%hd200918201046%_
                                                 _%tl200919201048%_
                                                 _%__splice201361201362%_
                                                 _%target200933200970%_
                                                 _%tl200935200972%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200911200949%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200911200949%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g200911200949%_)))))
                    (let () (declare (not safe)) (_%g200911200949%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self200458%_ _%stx200459%_)
        (let* ((_%__stx201413201414%_ _%stx200459%_)
               (_%g200463200565%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201413201414%_)))))
          (let ((_%__kont201415201416%_
                 (lambda (_%L200855%_
                          _%L200856%_
                          _%L200857%_
                          _%L200858%_
                          _%L200859%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200858%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200857%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200856%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L200855%_))
                                                 '())))))))
                (_%__kont201417201418%_
                 (lambda (_%L200681%_ _%L200682%_ _%L200683%_ _%L200684%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200683%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200682%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200681%_))
                                           (cons '#f '())))))))
                (_%__kont201419201420%_ (lambda () '(begin))))
            (let ((_%__match201548201549%_
                   (lambda (_%e200470200727%_
                            _%hd200471200730%_
                            _%tl200472200732%_
                            _%e200473200735%_
                            _%hd200474200738%_
                            _%tl200475200740%_
                            _%e200476200743%_
                            _%hd200477200746%_
                            _%tl200478200748%_
                            _%e200479200751%_
                            _%hd200480200754%_
                            _%tl200481200756%_
                            _%e200482200759%_
                            _%hd200483200762%_
                            _%tl200484200764%_
                            _%e200485200767%_
                            _%hd200486200770%_
                            _%tl200487200772%_
                            _%e200488200775%_
                            _%hd200489200778%_
                            _%tl200490200780%_
                            _%e200491200783%_
                            _%hd200492200786%_
                            _%tl200493200788%_
                            _%e200494200791%_
                            _%hd200495200794%_
                            _%tl200496200796%_
                            _%e200497200799%_
                            _%hd200498200802%_
                            _%tl200499200804%_
                            _%e200500200807%_
                            _%hd200501200810%_
                            _%tl200502200812%_
                            _%e200503200815%_
                            _%hd200504200818%_
                            _%tl200505200820%_
                            _%e200506200823%_
                            _%hd200507200826%_
                            _%tl200508200828%_
                            _%e200509200831%_
                            _%hd200510200834%_
                            _%tl200511200836%_
                            _%e200512200839%_
                            _%hd200513200842%_
                            _%tl200514200844%_
                            _%e200515200847%_
                            _%hd200516200850%_
                            _%tl200517200852%_)
                     (let ((_%L200855%_ _%hd200516200850%_)
                           (_%L200856%_ _%hd200507200826%_)
                           (_%L200857%_ _%hd200498200802%_)
                           (_%L200858%_ _%hd200489200778%_)
                           (_%L200859%_ _%hd200480200754%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L200859%_
                              'bind-method!))
                           (_%__kont201415201416%_
                            _%L200855%_
                            _%L200856%_
                            _%L200857%_
                            _%L200858%_
                            _%L200859%_)
                           (_%__kont201419201420%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201413201414%_))
                  (let ((_%e200470200727%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201413201414%_))))
                    (let ((_%tl200472200732%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200470200727%_)))
                          (_%hd200471200730%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200470200727%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200472200732%_))
                          (let ((_%e200473200735%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200472200732%_))))
                            (let ((_%tl200475200740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200473200735%_)))
                                  (_%hd200474200738%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200473200735%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200474200738%_))
                                  (let ((_%e200476200743%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200474200738%_))))
                                    (let ((_%tl200478200748%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200476200743%_)))
                                          (_%hd200477200746%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200476200743%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200477200746%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200477200746%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200478200748%_))
                                                  (let ((_%e200479200751%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200478200748%_))))
                                                    (let ((_%tl200481200756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200479200751%_)))
                                                          (_%hd200480200754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200479200751%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200481200756%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200475200740%_))
                      (let ((_%e200482200759%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200475200740%_))))
                        (let ((_%tl200484200764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200482200759%_)))
                              (_%hd200483200762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200482200759%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200483200762%_))
                              (let ((_%e200485200767%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd200483200762%_))))
                                (let ((_%tl200487200772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200485200767%_)))
                                      (_%hd200486200770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200485200767%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200486200770%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200486200770%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200487200772%_))
                                              (let ((_%e200488200775%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200487200772%_))))
                                                (let ((_%tl200490200780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200488200775%_)))
                                                      (_%hd200489200778%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200488200775%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200490200780%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200484200764%_))
                                                          (let ((_%e200491200783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200484200764%_))))
                    (let ((_%tl200493200788%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200491200783%_)))
                          (_%hd200492200786%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200491200783%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200492200786%_))
                          (let ((_%e200494200791%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200492200786%_))))
                            (let ((_%tl200496200796%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200494200791%_)))
                                  (_%hd200495200794%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200494200791%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd200495200794%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd200495200794%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200496200796%_))
                                          (let ((_%e200497200799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200496200796%_))))
                                            (let ((_%tl200499200804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200497200799%_)))
                                                  (_%hd200498200802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200497200799%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200499200804%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200493200788%_))
                                                      (let ((_%e200500200807%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200493200788%_))))
                (let ((_%tl200502200812%_
                       (let () (declare (not safe)) (##cdr _%e200500200807%_)))
                      (_%hd200501200810%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200500200807%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd200501200810%_))
                      (let ((_%e200503200815%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd200501200810%_))))
                        (let ((_%tl200505200820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200503200815%_)))
                              (_%hd200504200818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200503200815%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd200504200818%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd200504200818%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200505200820%_))
                                      (let ((_%e200506200823%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200505200820%_))))
                                        (let ((_%tl200508200828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200506200823%_)))
                                              (_%hd200507200826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200506200823%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200508200828%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200502200812%_))
                                                  (let ((_%e200509200831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200502200812%_))))
                                                    (let ((_%tl200511200836%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200509200831%_)))
                                                          (_%hd200510200834%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200509200831%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200510200834%_))
                                                          (let ((_%e200512200839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd200510200834%_))))
                    (let ((_%tl200514200844%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200512200839%_)))
                          (_%hd200513200842%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200512200839%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200513200842%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd200513200842%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200514200844%_))
                                  (let ((_%e200515200847%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200514200844%_))))
                                    (let ((_%tl200517200852%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200515200847%_)))
                                          (_%hd200516200850%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200515200847%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200517200852%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200511200836%_))
                                              (_%__match201548201549%_
                                               _%e200470200727%_
                                               _%hd200471200730%_
                                               _%tl200472200732%_
                                               _%e200473200735%_
                                               _%hd200474200738%_
                                               _%tl200475200740%_
                                               _%e200476200743%_
                                               _%hd200477200746%_
                                               _%tl200478200748%_
                                               _%e200479200751%_
                                               _%hd200480200754%_
                                               _%tl200481200756%_
                                               _%e200482200759%_
                                               _%hd200483200762%_
                                               _%tl200484200764%_
                                               _%e200485200767%_
                                               _%hd200486200770%_
                                               _%tl200487200772%_
                                               _%e200488200775%_
                                               _%hd200489200778%_
                                               _%tl200490200780%_
                                               _%e200491200783%_
                                               _%hd200492200786%_
                                               _%tl200493200788%_
                                               _%e200494200791%_
                                               _%hd200495200794%_
                                               _%tl200496200796%_
                                               _%e200497200799%_
                                               _%hd200498200802%_
                                               _%tl200499200804%_
                                               _%e200500200807%_
                                               _%hd200501200810%_
                                               _%tl200502200812%_
                                               _%e200503200815%_
                                               _%hd200504200818%_
                                               _%tl200505200820%_
                                               _%e200506200823%_
                                               _%hd200507200826%_
                                               _%tl200508200828%_
                                               _%e200509200831%_
                                               _%hd200510200834%_
                                               _%tl200511200836%_
                                               _%e200512200839%_
                                               _%hd200513200842%_
                                               _%tl200514200844%_
                                               _%e200515200847%_
                                               _%hd200516200850%_
                                               _%tl200517200852%_)
                                              (_%__kont201419201420%_))
                                          (_%__kont201419201420%_))))
                                  (_%__kont201419201420%_))
                              (_%__kont201419201420%_))
                          (_%__kont201419201420%_))))
                  (_%__kont201419201420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200502200812%_))
                                                      (if (let ((__tmp201770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp201770 'bind-method!))
                  (let ((_%L200681%_ _%hd200507200826%_)
                        (_%L200682%_ _%hd200498200802%_)
                        (_%L200683%_ _%hd200489200778%_)
                        (_%L200684%_ _%hd200480200754%_))
                    (_%__kont201417201418%_
                     _%L200681%_
                     _%L200682%_
                     _%L200683%_
                     _%L200684%_))
                  (_%__kont201419201420%_))
              (_%__kont201419201420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201419201420%_))))
                                      (_%__kont201419201420%_))
                                  (_%__kont201419201420%_))
                              (_%__kont201419201420%_))))
                      (_%__kont201419201420%_))))
              (_%__kont201419201420%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201419201420%_))))
                                          (_%__kont201419201420%_))
                                      (_%__kont201419201420%_))
                                  (_%__kont201419201420%_))))
                          (_%__kont201419201420%_))))
                  (_%__kont201419201420%_))
              (_%__kont201419201420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201419201420%_))
                                          (_%__kont201419201420%_))
                                      (_%__kont201419201420%_))))
                              (_%__kont201419201420%_))))
                      (_%__kont201419201420%_))
                  (_%__kont201419201420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201419201420%_))
                                              (_%__kont201419201420%_))
                                          (_%__kont201419201420%_))))
                                  (_%__kont201419201420%_))))
                          (_%__kont201419201420%_))))
                  (_%__kont201419201420%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self200282%_ _%stx200283%_)
        (let* ((_%__stx201657201658%_ _%stx200283%_)
               (_%g200286200326%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201657201658%_)))))
          (let ((_%__kont201659201660%_
                 (lambda (_%L200432%_ _%L200433%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200433%_))
                               (cons _%L200432%_ '())))))
                (_%__kont201661201662%_
                 (lambda (_%L200355%_ _%L200356%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201657201658%_))
                (let ((_%e200290200376%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx201657201658%_))))
                  (let ((_%tl200292200381%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200290200376%_)))
                        (_%hd200291200379%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200290200376%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200292200381%_))
                        (let ((_%e200293200384%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200292200381%_))))
                          (let ((_%tl200295200389%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200293200384%_)))
                                (_%hd200294200387%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200293200384%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200294200387%_))
                                (let ((_%e200296200392%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200294200387%_))))
                                  (let ((_%tl200298200397%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200296200392%_)))
                                        (_%hd200297200395%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200296200392%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200297200395%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd200297200395%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200298200397%_))
                                                (let ((_%e200299200400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200298200397%_))))
                                                  (let ((_%tl200301200405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200299200400%_)))
                                                        (_%hd200300200403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200299200400%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200301200405%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200295200389%_))
                                                            (let ((_%e200302200408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200295200389%_))))
                      (let ((_%tl200304200413%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200302200408%_)))
                            (_%hd200303200411%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200302200408%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd200303200411%_))
                            (let ((_%e200305200416%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200303200411%_))))
                              (let ((_%tl200307200421%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200305200416%_)))
                                    (_%hd200306200419%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200305200416%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200306200419%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd200306200419%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200307200421%_))
                                            (let ((_%e200308200424%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200307200421%_))))
                                              (let ((_%tl200310200429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200308200424%_)))
                                                    (_%hd200309200427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200308200424%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200310200429%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200304200413%_))
                                                        (_%__kont201659201660%_
                                                         _%hd200309200427%_
                                                         _%hd200300200403%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200286200326%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200304200413%_))
                                                        (_%__kont201661201662%_
                                                         _%hd200303200411%_
                                                         _%hd200294200387%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200286200326%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200304200413%_))
                                                (_%__kont201661201662%_
                                                 _%hd200303200411%_
                                                 _%hd200294200387%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200286200326%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200304200413%_))
                                            (_%__kont201661201662%_
                                             _%hd200303200411%_
                                             _%hd200294200387%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200286200326%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200304200413%_))
                                        (_%__kont201661201662%_
                                         _%hd200303200411%_
                                         _%hd200294200387%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200286200326%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200304200413%_))
                                (_%__kont201661201662%_
                                 _%hd200303200411%_
                                 _%hd200294200387%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200286200326%_))))))
                    (let () (declare (not safe)) (_%g200286200326%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200295200389%_))
                    (let ((_%e200319200347%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200295200389%_))))
                      (let ((_%tl200321200352%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200319200347%_)))
                            (_%hd200320200350%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200319200347%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200321200352%_))
                            (_%__kont201661201662%_
                             _%hd200320200350%_
                             _%hd200294200387%_)
                            (let ()
                              (declare (not safe))
                              (_%g200286200326%_)))))
                    (let () (declare (not safe)) (_%g200286200326%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200295200389%_))
                                                    (let ((_%e200319200347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200295200389%_))))
                                                      (let ((_%tl200321200352%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200319200347%_)))
                    (_%hd200320200350%_
                     (let () (declare (not safe)) (##car _%e200319200347%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200321200352%_))
                    (_%__kont201661201662%_
                     _%hd200320200350%_
                     _%hd200294200387%_)
                    (let () (declare (not safe)) (_%g200286200326%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200286200326%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200295200389%_))
                                                (let ((_%e200319200347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200295200389%_))))
                                                  (let ((_%tl200321200352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200319200347%_)))
                                                        (_%hd200320200350%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200319200347%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200321200352%_))
                                                        (_%__kont201661201662%_
                                                         _%hd200320200350%_
                                                         _%hd200294200387%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200286200326%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200286200326%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200295200389%_))
                                            (let ((_%e200319200347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200295200389%_))))
                                              (let ((_%tl200321200352%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200319200347%_)))
                                                    (_%hd200320200350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200319200347%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200321200352%_))
                                                    (_%__kont201661201662%_
                                                     _%hd200320200350%_
                                                     _%hd200294200387%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200286200326%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200286200326%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200295200389%_))
                                    (let ((_%e200319200347%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl200295200389%_))))
                                      (let ((_%tl200321200352%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200319200347%_)))
                                            (_%hd200320200350%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200319200347%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200321200352%_))
                                            (_%__kont201661201662%_
                                             _%hd200320200350%_
                                             _%hd200294200387%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200286200326%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200286200326%_))))))
                        (let () (declare (not safe)) (_%g200286200326%_)))))
                (let () (declare (not safe)) (_%g200286200326%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self198476200267%_)
        (let* ((_%self200270%_ _%self198476200267%_)
               (_%self200272%_ _%self200270%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200272%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self198477200038%_)
        (let* ((_%self200041%_ _%self198477200038%_)
               (_%self200043%_ _%self200041%_)
               (_%self200052200068%_ _%self200043%_)
               (_%E200054200072%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self200052200068%_
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
               (_%K200055200087%_
                (lambda (_%methods200075%_
                         _%metaclass200076%_
                         _%system?200077%_
                         _%final?200078%_
                         _%struct?200079%_
                         _%constructor200080%_
                         _%fields200081%_
                         _%slots200082%_
                         _%precendence-list200083%_
                         _%super200084%_
                         _%id200085%_)
                  (cons '@class
                        (cons _%id200085%_
                              (cons _%super200084%_
                                    (cons _%precendence-list200083%_
                                          (cons _%slots200082%_
                                                (cons _%fields200081%_
                                                      (cons _%constructor200080%_
                                                            (cons _%struct?200079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?200078%_
                                (cons _%system?200077%_
                                      (cons _%metaclass200076%_
                                            (cons (if _%methods200075%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods200075%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e200056200090%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200052200068%_ '1 '#f '#f)))
               (_%id200093%_ _%e200056200090%_)
               (_%e200057200095%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200052200068%_ '2 '#f '#f)))
               (_%super200098%_ _%e200057200095%_)
               (_%e200058200100%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200052200068%_ '3 '#f '#f)))
               (_%precendence-list200103%_ _%e200058200100%_)
               (_%e200059200105%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200052200068%_ '4 '#f '#f)))
               (_%slots200108%_ _%e200059200105%_)
               (_%e200060200110%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200052200068%_ '5 '#f '#f)))
               (_%fields200113%_ _%e200060200110%_)
               (_%e200061200115%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200052200068%_ '6 '#f '#f)))
               (_%constructor200118%_ _%e200061200115%_)
               (_%e200062200120%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200052200068%_ '7 '#f '#f)))
               (_%struct?200123%_ _%e200062200120%_)
               (_%e200063200125%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200052200068%_ '8 '#f '#f)))
               (_%final?200128%_ _%e200063200125%_)
               (_%e200064200130%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200052200068%_ '9 '#f '#f)))
               (_%system?200133%_ _%e200064200130%_)
               (_%e200065200135%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200052200068%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass200138%_ _%e200065200135%_)
               (_%e200066200140%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200052200068%_
                   '11
                   '#f
                   '#f)))
               (_%methods200143%_ _%e200066200140%_))
          (_%K200055200087%_
           _%methods200143%_
           _%metaclass200138%_
           _%system?200133%_
           _%final?200128%_
           _%struct?200123%_
           _%constructor200118%_
           _%fields200113%_
           _%slots200108%_
           _%precendence-list200103%_
           _%super200098%_
           _%id200093%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self198478199901%_)
        (let* ((_%self199904%_ _%self198478199901%_)
               (_%self199906%_ _%self199904%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199906%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self198479199764%_)
        (let* ((_%self199767%_ _%self198479199764%_)
               (_%self199769%_ _%self199767%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199769%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self198480199627%_)
        (let* ((_%self199630%_ _%self198480199627%_)
               (_%self199632%_ _%self199630%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199632%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199632%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199632%_
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
      (lambda (_%self198481199490%_)
        (let* ((_%self199493%_ _%self198481199490%_)
               (_%self199495%_ _%self199493%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199495%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199495%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199495%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self198482199353%_)
        (let* ((_%self199356%_ _%self198482199353%_)
               (_%self199358%_ _%self199356%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199358%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199358%_
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
      (lambda (_%self198483199164%_)
        (let* ((_%self199167%_ _%self198483199164%_)
               (_%self199169%_ _%self199167%_)
               (_%self199178199187%_ _%self199169%_)
               (_%E199180199191%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199178199187%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K199181199210%_
                (lambda (_%dispatch199194%_
                         _%arity199195%_
                         _%signature199196%_)
                  (if _%signature199196%_
                      (let ((_%signature199198%_ _%signature199196%_))
                        (cons '@lambda
                              (cons _%arity199195%_
                                    (cons _%dispatch199194%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature199198%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature199198%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature199198%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature199198%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature199198%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity199195%_
                                  (cons _%dispatch199194%_ '()))))))
               (_%e199182199213%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199178199187%_ '1 '#f '#f)))
               (_%e199183199216%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199178199187%_ '2 '#f '#f)))
               (_%signature199219%_ _%e199183199216%_)
               (_%e199184199221%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199178199187%_ '3 '#f '#f)))
               (_%arity199224%_ _%e199184199221%_)
               (_%e199185199226%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199178199187%_ '4 '#f '#f)))
               (_%dispatch199229%_ _%e199185199226%_))
          (_%K199181199210%_
           _%dispatch199229%_
           _%arity199224%_
           _%signature199219%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self198484199023%_)
        (let* ((_%self199026%_ _%self198484199023%_)
               (_%self199028%_ _%self199026%_))
          (letrec ((_%clause-e199038%_
                    (lambda (_%clause199040%_)
                      (cdr (let ((__method201745
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause199040%_
                                     'typedecl))))
                             (if __method201745
                                 (let ()
                                   (declare (not safe))
                                   (__method201745 _%clause199040%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause199040%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e199038%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self199028%_
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
      (lambda (_%self198485198886%_)
        (let* ((_%self198889%_ _%self198485198886%_)
               (_%self198891%_ _%self198889%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198891%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198891%_
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
      (lambda (_%self198486198749%_)
        (let* ((_%self198752%_ _%self198486198749%_)
               (_%self198754%_ _%self198752%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198754%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198754%_
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
      (lambda (_%self198487198612%_)
        (let* ((_%self198615%_ _%self198487198612%_)
               (_%self198617%_ _%self198615%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198617%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
