(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1734357969)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp201839
                   (let ((__obj201833
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
                       (gxc#optimizer-info:::init! __obj201833))
                     __obj201833)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp201839)))))
    (define gxc#optimize!
      (lambda (_%ctx201442%_)
        (let ((__tmp201842
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx201442%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx201442%_)
                 (let ((__tmp201844
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp201843
                        (##structure-ref
                         _%ctx201442%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp201844 __tmp201843 '#t))
                 (let ((_%code201445%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx201442%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx201442%_
                    _%code201445%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp201841 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201840 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201842
           gxc#current-compile-mutators
           __tmp201841
           gxc#current-compile-local-type
           __tmp201840))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx201428%_)
        (letrec ((_%load-it!201430%_
                  (lambda (_%id201440%_)
                    (if (let ((__tmp201845
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp201845 _%id201440%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id201440%_)
                          (let ((__tmp201846
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp201846 _%id201440%_ '#t)))))))
          (let* ((_%modid201432%_
                  (##structure-ref
                   _%ctx201428%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str201434%_ (symbol->string _%modid201432%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str201434%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str201434%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201430%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201430%_
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
      (lambda (_%ctx201365%_)
        (letrec* ((_%deps201367%_
                   (let* ((_%imports201418%_
                           (##structure-ref
                            _%ctx201365%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e201420%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx201365%_))))
                     (if _%$e201420%_
                         ((lambda (_%g201422201424%_)
                            (cons _%g201422201424%_ _%imports201418%_))
                          _%$e201420%_)
                         _%imports201418%_))))
          (let _%lp201369%_ ((_%rest201371%_ _%deps201367%_))
            (let* ((_%rest201372201380%_ _%rest201371%_)
                   (_%else201374201388%_ (lambda () '#!void))
                   (_%K201376201406%_
                    (lambda (_%rest201391%_ _%hd201392%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd201392%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp201848
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp201847
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201392%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp201848 __tmp201847))
                                '#!void
                                (begin
                                  (let ((_%$e201395%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd201392%_))))
                                    (if _%$e201395%_
                                        ((lambda (_%pre201398%_)
                                           (_%lp201369%_
                                            (cons _%pre201398%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd201392%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e201395%_)
                                        (_%lp201369%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201392%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd201392%_)))
                            (_%lp201369%_ _%rest201391%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd201392%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp201850
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp201849
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd201392%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp201850 __tmp201849))
                                    '#!void
                                    (begin
                                      (_%lp201369%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201392%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd201392%_)))
                                (_%lp201369%_ _%rest201391%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd201392%_
                                     'gx#module-import::t))
                                  (_%lp201369%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201392%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest201391%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd201392%_
                                         'gx#module-export::t))
                                      (_%lp201369%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd201392%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest201391%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd201392%_
                                             'gx#import-set::t))
                                          (_%lp201369%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd201392%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest201391%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd201392%_))))))))))
              (if (pair? _%rest201372201380%_)
                  (let ((_%hd201377201409%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201372201380%_)))
                        (_%tl201378201411%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201372201380%_))))
                    (let* ((_%hd201414%_ _%hd201377201409%_)
                           (_%rest201416%_ _%tl201378201411%_))
                      (_%K201376201406%_ _%rest201416%_ _%hd201414%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx201345%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx201345%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx201345%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht201347%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id201349%_
                    (##structure-ref
                     _%ctx201345%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod201351%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht201347%_ _%id201349%_)))
                   (_%$e201354%_ _%mod201351%_))
              (if _%$e201354%_
                  _%$e201354%_
                  (let* ((_%mod201357%_
                          (gxc#optimizer-import-ssxi _%ctx201345%_))
                         (_%val201362%_
                          (let ((_%$e201359%_ _%mod201357%_))
                            (if _%$e201359%_ _%$e201359%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht201347%_ _%id201349%_ _%val201362%_))
                    _%val201362%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx201343%_)
        (if (##structure-ref _%ctx201343%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx201343%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id201320%_)
        (letrec ((_%catch-e201322%_
                  (lambda (_%exn201341%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn201341%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn201341%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id201320%_))))
                    '#f))
                 (_%import-e201323%_
                  (lambda ()
                    (let* ((_%str-id201326%_
                            (let ((__tmp201851
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id201320%_))))
                              (declare (not safe))
                              (##string-append __tmp201851 '".ssxi")))
                           (_%artefact-path201334%_
                            (let ((_%odir201327201329%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir201327201329%_
                                  (let ((_%odir201332%_ _%odir201327201329%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id201326%_
                                        '".ss"))
                                     _%odir201332%_))
                                  '#f)))
                           (_%library-path201336%_
                            (let ((__tmp201852
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id201326%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp201852)))
                           (_%ssxi-path201338%_
                            (if (and _%artefact-path201334%_
                                     (file-exists? _%artefact-path201334%_))
                                _%artefact-path201334%_
                                _%library-path201336%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path201338%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path201338%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e201322%_ _%import-e201323%_)))))
    (define gxc#optimize-source
      (lambda (_%stx201305%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx201305%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx201305%_))
        (let* ((_%stx201307%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx201305%_)))
               (_%stx201309%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx201307%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx201309%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx201309%_))
          (let _%fixpoint201312%_ ((_%current201314%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx201309%_))
            (let ((_%refined201316%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current201314%_ _%refined201316%_)
                  '#!void
                  (_%fixpoint201312%_ _%refined201316%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx201309%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx201309%_))
          (let ((_%stx201318%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx201309%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx201318%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp201854 (list gxc#::generate-runtime-empty::t))
            (__tmp201853 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp201854
         '()
         __tmp201853
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args201302%_
        (apply make-instance gxc#::generate-ssxi::t _%$args201302%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp201855
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
        (__make-promise __tmp201855)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx201294%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self201297%_
                (let ((__obj201835
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj201835))
               (__tmp201856
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201297%_ _%stx201294%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201856
           gxc#current-compile-method
           _%self201297%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self201254%_ _%stx201255%_)
        (let* ((_%g201257201267%_
                (lambda (_%g201258201264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201258201264%_))))
               (_%g201256201291%_
                (lambda (_%g201258201270%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201258201270%_))
                      (let ((_%e201260201272%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201258201270%_))))
                        (let ((_%hd201261201275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201260201272%_)))
                              (_%tl201262201277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201260201272%_))))
                          ((lambda (_%L201280%_)
                             (let ((__tmp201859
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self201254%_
                                         _%stx201255%_))))
                                   (__tmp201857
                                    (let ((__tmp201858
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp201858 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp201859
                                gx#current-expander-phi
                                __tmp201857)))
                           _%tl201262201277%_)))
                      (_%g201257201267%_ _%g201258201270%_)))))
          (_%g201256201291%_ _%stx201255%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self201193%_ _%stx201194%_)
        (let* ((_%g201196201210%_
                (lambda (_%g201197201207%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201197201207%_))))
               (_%g201195201251%_
                (lambda (_%g201197201213%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201197201213%_))
                      (let ((_%e201200201215%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201197201213%_))))
                        (let ((_%hd201201201218%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201200201215%_)))
                              (_%tl201202201220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201200201215%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201202201220%_))
                              (let ((_%e201203201223%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201202201220%_))))
                                (let ((_%hd201204201226%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201203201223%_)))
                                      (_%tl201205201228%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201203201223%_))))
                                  ((lambda (_%L201231%_ _%L201232%_)
                                     (let* ((_%ctx201245%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L201232%_)))
                                            (_%code201247%_
                                             (##structure-ref
                                              _%ctx201245%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp201860
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self201193%_
                                                  _%code201247%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp201860
                                        gx#current-expander-context
                                        _%ctx201245%_)))
                                   _%tl201205201228%_
                                   _%hd201204201226%_)))
                              (_%g201196201210%_ _%g201197201213%_))))
                      (_%g201196201210%_ _%g201197201213%_)))))
          (_%g201195201251%_ _%stx201194%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self200998%_ _%stx200999%_)
        (letrec ((_%generate-e201001%_
                  (lambda (_%id201178%_)
                    (let* ((_%sym201180%_
                            (if (let ((__tmp201861
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp201861))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id201178%_))
                                '#f))
                           (_%$e201182%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym201180%_))))
                      (if _%$e201182%_
                          ((lambda (_%klass201185%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym201180%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym201180%_
                                                     (cons (let ((__method201836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass201185%_ 'typedecl))))
                     (if __method201836
                         (let ()
                           (declare (not safe))
                           (__method201836 _%klass201185%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass201185%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym201180%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym201180%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e201182%_)
                          (let ((_%$e201187%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym201180%_))))
                            (if _%$e201187%_
                                ((lambda (_%type201190%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym201180%_
                                      '" "
                                      _%type201190%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type201190%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym201180%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym201180%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type201190%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym201180%_
                                                   (cons (let ((__method201837
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type201190%_ 'typedecl))))
                   (if __method201837
                       (let ()
                         (declare (not safe))
                         (__method201837 _%type201190%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type201190%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e201187%_)
                                '(begin))))))))
          (let* ((_%__stx201448201449%_ _%stx200999%_)
                 (_%g201004201042%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201448201449%_)))))
            (let ((_%__kont201450201451%_
                   (lambda (_%L201160%_) (_%generate-e201001%_ _%L201160%_)))
                  (_%__kont201452201453%_
                   (lambda (_%L201095%_)
                     (let ((_%types201121%_
                            (map _%generate-e201001%_
                                 (let ((__tmp201862
                                        (lambda (_%g201113201116%_
                                                 _%g201114201118%_)
                                          (cons _%g201113201116%_
                                                _%g201114201118%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp201862 '() _%L201095%_)))))
                       (cons 'begin _%types201121%_)))))
              (let ((_%__match201503201504%_
                     (lambda (_%e201020201047%_
                              _%hd201021201050%_
                              _%tl201022201052%_
                              _%e201023201055%_
                              _%hd201024201058%_
                              _%tl201025201060%_
                              _%__splice201454201455%_
                              _%target201026201063%_
                              _%tl201028201065%_)
                       (letrec ((_%loop201029201068%_
                                 (lambda (_%hd201027201071%_
                                          _%id201033201073%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd201027201071%_))
                                       (let ((_%e201030201076%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd201027201071%_))))
                                         (let ((_%lp-tl201032201081%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201030201076%_)))
                                               (_%lp-hd201031201079%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201030201076%_))))
                                           (_%loop201029201068%_
                                            _%lp-tl201032201081%_
                                            (cons _%lp-hd201031201079%_
                                                  _%id201033201073%_))))
                                       (let ((_%id201034201084%_
                                              (reverse _%id201033201073%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl201025201060%_))
                                             (let ((_%e201035201087%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl201025201060%_))))
                                               (let ((_%tl201037201092%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201035201087%_)))
                                                     (_%hd201036201090%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201035201087%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl201037201092%_))
                                                     (_%__kont201452201453%_
                                                      _%id201034201084%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201004201042%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g201004201042%_))))))))
                         (_%loop201029201068%_ _%target201026201063%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201448201449%_))
                    (let ((_%e201007201128%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201448201449%_))))
                      (let ((_%tl201009201133%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201007201128%_)))
                            (_%hd201008201131%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201007201128%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl201009201133%_))
                            (let ((_%e201010201136%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl201009201133%_))))
                              (let ((_%tl201012201141%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201010201136%_)))
                                    (_%hd201011201139%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201010201136%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd201011201139%_))
                                    (let ((_%e201013201144%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd201011201139%_))))
                                      (let ((_%tl201015201149%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e201013201144%_)))
                                            (_%hd201014201147%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e201013201144%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl201015201149%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201012201141%_))
                                                (let ((_%e201016201152%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201012201141%_))))
                                                  (let ((_%tl201018201157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201016201152%_)))
                                                        (_%hd201017201155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201016201152%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201018201157%_))
                                                        (_%__kont201450201451%_
                                                         _%hd201014201147%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd201011201139%_))
                                                            (let ((_%__splice201454201455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd201011201139%_ '0))))
                      (let ((_%tl201028201065%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201454201455%_ '1)))
                            (_%target201026201063%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201454201455%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201028201065%_))
                            (_%__match201503201504%_
                             _%e201007201128%_
                             _%hd201008201131%_
                             _%tl201009201133%_
                             _%e201010201136%_
                             _%hd201011201139%_
                             _%tl201012201141%_
                             _%__splice201454201455%_
                             _%target201026201063%_
                             _%tl201028201065%_)
                            (let ()
                              (declare (not safe))
                              (_%g201004201042%_)))))
                    (let () (declare (not safe)) (_%g201004201042%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd201011201139%_))
                                                    (let ((_%__splice201454201455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd201011201139%_
                                                              '0))))
                                                      (let ((_%tl201028201065%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice201454201455%_ '1)))
                    (_%target201026201063%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice201454201455%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl201028201065%_))
                    (_%__match201503201504%_
                     _%e201007201128%_
                     _%hd201008201131%_
                     _%tl201009201133%_
                     _%e201010201136%_
                     _%hd201011201139%_
                     _%tl201012201141%_
                     _%__splice201454201455%_
                     _%target201026201063%_
                     _%tl201028201065%_)
                    (let () (declare (not safe)) (_%g201004201042%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201004201042%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd201011201139%_))
                                                (let ((_%__splice201454201455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd201011201139%_
                                                          '0))))
                                                  (let ((_%tl201028201065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201454201455%_
                                                            '1)))
                                                        (_%target201026201063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201454201455%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201028201065%_))
                                                        (_%__match201503201504%_
                                                         _%e201007201128%_
                                                         _%hd201008201131%_
                                                         _%tl201009201133%_
                                                         _%e201010201136%_
                                                         _%hd201011201139%_
                                                         _%tl201012201141%_
                                                         _%__splice201454201455%_
                                                         _%target201026201063%_
                                                         _%tl201028201065%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g201004201042%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201004201042%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd201011201139%_))
                                        (let ((_%__splice201454201455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd201011201139%_
                                                  '0))))
                                          (let ((_%tl201028201065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201454201455%_
                                                    '1)))
                                                (_%target201026201063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201454201455%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201028201065%_))
                                                (_%__match201503201504%_
                                                 _%e201007201128%_
                                                 _%hd201008201131%_
                                                 _%tl201009201133%_
                                                 _%e201010201136%_
                                                 _%hd201011201139%_
                                                 _%tl201012201141%_
                                                 _%__splice201454201455%_
                                                 _%target201026201063%_
                                                 _%tl201028201065%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201004201042%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201004201042%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g201004201042%_)))))
                    (let () (declare (not safe)) (_%g201004201042%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self200551%_ _%stx200552%_)
        (let* ((_%__stx201506201507%_ _%stx200552%_)
               (_%g200556200658%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201506201507%_)))))
          (let ((_%__kont201508201509%_
                 (lambda (_%L200948%_
                          _%L200949%_
                          _%L200950%_
                          _%L200951%_
                          _%L200952%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200951%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200950%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200949%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L200948%_))
                                                 '())))))))
                (_%__kont201510201511%_
                 (lambda (_%L200774%_ _%L200775%_ _%L200776%_ _%L200777%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200776%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200775%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200774%_))
                                           (cons '#f '())))))))
                (_%__kont201512201513%_ (lambda () '(begin))))
            (let ((_%__match201641201642%_
                   (lambda (_%e200563200820%_
                            _%hd200564200823%_
                            _%tl200565200825%_
                            _%e200566200828%_
                            _%hd200567200831%_
                            _%tl200568200833%_
                            _%e200569200836%_
                            _%hd200570200839%_
                            _%tl200571200841%_
                            _%e200572200844%_
                            _%hd200573200847%_
                            _%tl200574200849%_
                            _%e200575200852%_
                            _%hd200576200855%_
                            _%tl200577200857%_
                            _%e200578200860%_
                            _%hd200579200863%_
                            _%tl200580200865%_
                            _%e200581200868%_
                            _%hd200582200871%_
                            _%tl200583200873%_
                            _%e200584200876%_
                            _%hd200585200879%_
                            _%tl200586200881%_
                            _%e200587200884%_
                            _%hd200588200887%_
                            _%tl200589200889%_
                            _%e200590200892%_
                            _%hd200591200895%_
                            _%tl200592200897%_
                            _%e200593200900%_
                            _%hd200594200903%_
                            _%tl200595200905%_
                            _%e200596200908%_
                            _%hd200597200911%_
                            _%tl200598200913%_
                            _%e200599200916%_
                            _%hd200600200919%_
                            _%tl200601200921%_
                            _%e200602200924%_
                            _%hd200603200927%_
                            _%tl200604200929%_
                            _%e200605200932%_
                            _%hd200606200935%_
                            _%tl200607200937%_
                            _%e200608200940%_
                            _%hd200609200943%_
                            _%tl200610200945%_)
                     (let ((_%L200948%_ _%hd200609200943%_)
                           (_%L200949%_ _%hd200600200919%_)
                           (_%L200950%_ _%hd200591200895%_)
                           (_%L200951%_ _%hd200582200871%_)
                           (_%L200952%_ _%hd200573200847%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L200952%_
                              'bind-method!))
                           (_%__kont201508201509%_
                            _%L200948%_
                            _%L200949%_
                            _%L200950%_
                            _%L200951%_
                            _%L200952%_)
                           (_%__kont201512201513%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201506201507%_))
                  (let ((_%e200563200820%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201506201507%_))))
                    (let ((_%tl200565200825%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200563200820%_)))
                          (_%hd200564200823%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200563200820%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200565200825%_))
                          (let ((_%e200566200828%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200565200825%_))))
                            (let ((_%tl200568200833%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200566200828%_)))
                                  (_%hd200567200831%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200566200828%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200567200831%_))
                                  (let ((_%e200569200836%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200567200831%_))))
                                    (let ((_%tl200571200841%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200569200836%_)))
                                          (_%hd200570200839%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200569200836%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200570200839%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200570200839%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200571200841%_))
                                                  (let ((_%e200572200844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200571200841%_))))
                                                    (let ((_%tl200574200849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200572200844%_)))
                                                          (_%hd200573200847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200572200844%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200574200849%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200568200833%_))
                      (let ((_%e200575200852%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200568200833%_))))
                        (let ((_%tl200577200857%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200575200852%_)))
                              (_%hd200576200855%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200575200852%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200576200855%_))
                              (let ((_%e200578200860%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd200576200855%_))))
                                (let ((_%tl200580200865%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200578200860%_)))
                                      (_%hd200579200863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200578200860%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200579200863%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200579200863%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200580200865%_))
                                              (let ((_%e200581200868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200580200865%_))))
                                                (let ((_%tl200583200873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200581200868%_)))
                                                      (_%hd200582200871%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200581200868%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200583200873%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200577200857%_))
                                                          (let ((_%e200584200876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200577200857%_))))
                    (let ((_%tl200586200881%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200584200876%_)))
                          (_%hd200585200879%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200584200876%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200585200879%_))
                          (let ((_%e200587200884%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200585200879%_))))
                            (let ((_%tl200589200889%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200587200884%_)))
                                  (_%hd200588200887%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200587200884%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd200588200887%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd200588200887%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200589200889%_))
                                          (let ((_%e200590200892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200589200889%_))))
                                            (let ((_%tl200592200897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200590200892%_)))
                                                  (_%hd200591200895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200590200892%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200592200897%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200586200881%_))
                                                      (let ((_%e200593200900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200586200881%_))))
                (let ((_%tl200595200905%_
                       (let () (declare (not safe)) (##cdr _%e200593200900%_)))
                      (_%hd200594200903%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200593200900%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd200594200903%_))
                      (let ((_%e200596200908%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd200594200903%_))))
                        (let ((_%tl200598200913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200596200908%_)))
                              (_%hd200597200911%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200596200908%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd200597200911%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd200597200911%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200598200913%_))
                                      (let ((_%e200599200916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200598200913%_))))
                                        (let ((_%tl200601200921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200599200916%_)))
                                              (_%hd200600200919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200599200916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200601200921%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200595200905%_))
                                                  (let ((_%e200602200924%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200595200905%_))))
                                                    (let ((_%tl200604200929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200602200924%_)))
                                                          (_%hd200603200927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200602200924%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200603200927%_))
                                                          (let ((_%e200605200932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd200603200927%_))))
                    (let ((_%tl200607200937%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200605200932%_)))
                          (_%hd200606200935%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200605200932%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200606200935%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd200606200935%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200607200937%_))
                                  (let ((_%e200608200940%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200607200937%_))))
                                    (let ((_%tl200610200945%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200608200940%_)))
                                          (_%hd200609200943%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200608200940%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200610200945%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200604200929%_))
                                              (_%__match201641201642%_
                                               _%e200563200820%_
                                               _%hd200564200823%_
                                               _%tl200565200825%_
                                               _%e200566200828%_
                                               _%hd200567200831%_
                                               _%tl200568200833%_
                                               _%e200569200836%_
                                               _%hd200570200839%_
                                               _%tl200571200841%_
                                               _%e200572200844%_
                                               _%hd200573200847%_
                                               _%tl200574200849%_
                                               _%e200575200852%_
                                               _%hd200576200855%_
                                               _%tl200577200857%_
                                               _%e200578200860%_
                                               _%hd200579200863%_
                                               _%tl200580200865%_
                                               _%e200581200868%_
                                               _%hd200582200871%_
                                               _%tl200583200873%_
                                               _%e200584200876%_
                                               _%hd200585200879%_
                                               _%tl200586200881%_
                                               _%e200587200884%_
                                               _%hd200588200887%_
                                               _%tl200589200889%_
                                               _%e200590200892%_
                                               _%hd200591200895%_
                                               _%tl200592200897%_
                                               _%e200593200900%_
                                               _%hd200594200903%_
                                               _%tl200595200905%_
                                               _%e200596200908%_
                                               _%hd200597200911%_
                                               _%tl200598200913%_
                                               _%e200599200916%_
                                               _%hd200600200919%_
                                               _%tl200601200921%_
                                               _%e200602200924%_
                                               _%hd200603200927%_
                                               _%tl200604200929%_
                                               _%e200605200932%_
                                               _%hd200606200935%_
                                               _%tl200607200937%_
                                               _%e200608200940%_
                                               _%hd200609200943%_
                                               _%tl200610200945%_)
                                              (_%__kont201512201513%_))
                                          (_%__kont201512201513%_))))
                                  (_%__kont201512201513%_))
                              (_%__kont201512201513%_))
                          (_%__kont201512201513%_))))
                  (_%__kont201512201513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200595200905%_))
                                                      (if (let ((__tmp201863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp201863 'bind-method!))
                  (let ((_%L200774%_ _%hd200600200919%_)
                        (_%L200775%_ _%hd200591200895%_)
                        (_%L200776%_ _%hd200582200871%_)
                        (_%L200777%_ _%hd200573200847%_))
                    (_%__kont201510201511%_
                     _%L200774%_
                     _%L200775%_
                     _%L200776%_
                     _%L200777%_))
                  (_%__kont201512201513%_))
              (_%__kont201512201513%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201512201513%_))))
                                      (_%__kont201512201513%_))
                                  (_%__kont201512201513%_))
                              (_%__kont201512201513%_))))
                      (_%__kont201512201513%_))))
              (_%__kont201512201513%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201512201513%_))))
                                          (_%__kont201512201513%_))
                                      (_%__kont201512201513%_))
                                  (_%__kont201512201513%_))))
                          (_%__kont201512201513%_))))
                  (_%__kont201512201513%_))
              (_%__kont201512201513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201512201513%_))
                                          (_%__kont201512201513%_))
                                      (_%__kont201512201513%_))))
                              (_%__kont201512201513%_))))
                      (_%__kont201512201513%_))
                  (_%__kont201512201513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201512201513%_))
                                              (_%__kont201512201513%_))
                                          (_%__kont201512201513%_))))
                                  (_%__kont201512201513%_))))
                          (_%__kont201512201513%_))))
                  (_%__kont201512201513%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self200375%_ _%stx200376%_)
        (let* ((_%__stx201750201751%_ _%stx200376%_)
               (_%g200379200419%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201750201751%_)))))
          (let ((_%__kont201752201753%_
                 (lambda (_%L200525%_ _%L200526%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200526%_))
                               (cons _%L200525%_ '())))))
                (_%__kont201754201755%_
                 (lambda (_%L200448%_ _%L200449%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201750201751%_))
                (let ((_%e200383200469%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx201750201751%_))))
                  (let ((_%tl200385200474%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200383200469%_)))
                        (_%hd200384200472%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200383200469%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200385200474%_))
                        (let ((_%e200386200477%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200385200474%_))))
                          (let ((_%tl200388200482%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200386200477%_)))
                                (_%hd200387200480%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200386200477%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200387200480%_))
                                (let ((_%e200389200485%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200387200480%_))))
                                  (let ((_%tl200391200490%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200389200485%_)))
                                        (_%hd200390200488%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200389200485%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200390200488%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd200390200488%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200391200490%_))
                                                (let ((_%e200392200493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200391200490%_))))
                                                  (let ((_%tl200394200498%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200392200493%_)))
                                                        (_%hd200393200496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200392200493%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200394200498%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200388200482%_))
                                                            (let ((_%e200395200501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200388200482%_))))
                      (let ((_%tl200397200506%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200395200501%_)))
                            (_%hd200396200504%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200395200501%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd200396200504%_))
                            (let ((_%e200398200509%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200396200504%_))))
                              (let ((_%tl200400200514%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200398200509%_)))
                                    (_%hd200399200512%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200398200509%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200399200512%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd200399200512%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200400200514%_))
                                            (let ((_%e200401200517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200400200514%_))))
                                              (let ((_%tl200403200522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200401200517%_)))
                                                    (_%hd200402200520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200401200517%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200403200522%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200397200506%_))
                                                        (_%__kont201752201753%_
                                                         _%hd200402200520%_
                                                         _%hd200393200496%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200379200419%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200397200506%_))
                                                        (_%__kont201754201755%_
                                                         _%hd200396200504%_
                                                         _%hd200387200480%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200379200419%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200397200506%_))
                                                (_%__kont201754201755%_
                                                 _%hd200396200504%_
                                                 _%hd200387200480%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200379200419%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200397200506%_))
                                            (_%__kont201754201755%_
                                             _%hd200396200504%_
                                             _%hd200387200480%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200379200419%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200397200506%_))
                                        (_%__kont201754201755%_
                                         _%hd200396200504%_
                                         _%hd200387200480%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200379200419%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200397200506%_))
                                (_%__kont201754201755%_
                                 _%hd200396200504%_
                                 _%hd200387200480%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200379200419%_))))))
                    (let () (declare (not safe)) (_%g200379200419%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200388200482%_))
                    (let ((_%e200412200440%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200388200482%_))))
                      (let ((_%tl200414200445%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200412200440%_)))
                            (_%hd200413200443%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200412200440%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200414200445%_))
                            (_%__kont201754201755%_
                             _%hd200413200443%_
                             _%hd200387200480%_)
                            (let ()
                              (declare (not safe))
                              (_%g200379200419%_)))))
                    (let () (declare (not safe)) (_%g200379200419%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200388200482%_))
                                                    (let ((_%e200412200440%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200388200482%_))))
                                                      (let ((_%tl200414200445%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200412200440%_)))
                    (_%hd200413200443%_
                     (let () (declare (not safe)) (##car _%e200412200440%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200414200445%_))
                    (_%__kont201754201755%_
                     _%hd200413200443%_
                     _%hd200387200480%_)
                    (let () (declare (not safe)) (_%g200379200419%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200379200419%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200388200482%_))
                                                (let ((_%e200412200440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200388200482%_))))
                                                  (let ((_%tl200414200445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200412200440%_)))
                                                        (_%hd200413200443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200412200440%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200414200445%_))
                                                        (_%__kont201754201755%_
                                                         _%hd200413200443%_
                                                         _%hd200387200480%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200379200419%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200379200419%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200388200482%_))
                                            (let ((_%e200412200440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200388200482%_))))
                                              (let ((_%tl200414200445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200412200440%_)))
                                                    (_%hd200413200443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200412200440%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200414200445%_))
                                                    (_%__kont201754201755%_
                                                     _%hd200413200443%_
                                                     _%hd200387200480%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200379200419%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200379200419%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200388200482%_))
                                    (let ((_%e200412200440%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl200388200482%_))))
                                      (let ((_%tl200414200445%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200412200440%_)))
                                            (_%hd200413200443%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200412200440%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200414200445%_))
                                            (_%__kont201754201755%_
                                             _%hd200413200443%_
                                             _%hd200387200480%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200379200419%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200379200419%_))))))
                        (let () (declare (not safe)) (_%g200379200419%_)))))
                (let () (declare (not safe)) (_%g200379200419%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self198569200360%_)
        (let* ((_%self200363%_ _%self198569200360%_)
               (_%self200365%_ _%self200363%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200365%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self198570200131%_)
        (let* ((_%self200134%_ _%self198570200131%_)
               (_%self200136%_ _%self200134%_)
               (_%self200145200161%_ _%self200136%_)
               (_%E200147200165%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self200145200161%_
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
               (_%K200148200180%_
                (lambda (_%methods200168%_
                         _%metaclass200169%_
                         _%system?200170%_
                         _%final?200171%_
                         _%struct?200172%_
                         _%constructor200173%_
                         _%fields200174%_
                         _%slots200175%_
                         _%precendence-list200176%_
                         _%super200177%_
                         _%id200178%_)
                  (cons '@class
                        (cons _%id200178%_
                              (cons _%super200177%_
                                    (cons _%precendence-list200176%_
                                          (cons _%slots200175%_
                                                (cons _%fields200174%_
                                                      (cons _%constructor200173%_
                                                            (cons _%struct?200172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?200171%_
                                (cons _%system?200170%_
                                      (cons _%metaclass200169%_
                                            (cons (if _%methods200168%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods200168%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e200149200183%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200145200161%_ '1 '#f '#f)))
               (_%id200186%_ _%e200149200183%_)
               (_%e200150200188%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200145200161%_ '2 '#f '#f)))
               (_%super200191%_ _%e200150200188%_)
               (_%e200151200193%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200145200161%_ '3 '#f '#f)))
               (_%precendence-list200196%_ _%e200151200193%_)
               (_%e200152200198%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200145200161%_ '4 '#f '#f)))
               (_%slots200201%_ _%e200152200198%_)
               (_%e200153200203%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200145200161%_ '5 '#f '#f)))
               (_%fields200206%_ _%e200153200203%_)
               (_%e200154200208%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200145200161%_ '6 '#f '#f)))
               (_%constructor200211%_ _%e200154200208%_)
               (_%e200155200213%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200145200161%_ '7 '#f '#f)))
               (_%struct?200216%_ _%e200155200213%_)
               (_%e200156200218%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200145200161%_ '8 '#f '#f)))
               (_%final?200221%_ _%e200156200218%_)
               (_%e200157200223%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200145200161%_ '9 '#f '#f)))
               (_%system?200226%_ _%e200157200223%_)
               (_%e200158200228%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200145200161%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass200231%_ _%e200158200228%_)
               (_%e200159200233%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200145200161%_
                   '11
                   '#f
                   '#f)))
               (_%methods200236%_ _%e200159200233%_))
          (_%K200148200180%_
           _%methods200236%_
           _%metaclass200231%_
           _%system?200226%_
           _%final?200221%_
           _%struct?200216%_
           _%constructor200211%_
           _%fields200206%_
           _%slots200201%_
           _%precendence-list200196%_
           _%super200191%_
           _%id200186%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self198571199994%_)
        (let* ((_%self199997%_ _%self198571199994%_)
               (_%self199999%_ _%self199997%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199999%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self198572199857%_)
        (let* ((_%self199860%_ _%self198572199857%_)
               (_%self199862%_ _%self199860%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199862%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self198573199720%_)
        (let* ((_%self199723%_ _%self198573199720%_)
               (_%self199725%_ _%self199723%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199725%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199725%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199725%_
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
      (lambda (_%self198574199583%_)
        (let* ((_%self199586%_ _%self198574199583%_)
               (_%self199588%_ _%self199586%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199588%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199588%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199588%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self198575199446%_)
        (let* ((_%self199449%_ _%self198575199446%_)
               (_%self199451%_ _%self199449%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199451%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199451%_
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
      (lambda (_%self198576199257%_)
        (let* ((_%self199260%_ _%self198576199257%_)
               (_%self199262%_ _%self199260%_)
               (_%self199271199280%_ _%self199262%_)
               (_%E199273199284%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199271199280%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K199274199303%_
                (lambda (_%dispatch199287%_
                         _%arity199288%_
                         _%signature199289%_)
                  (if _%signature199289%_
                      (let ((_%signature199291%_ _%signature199289%_))
                        (cons '@lambda
                              (cons _%arity199288%_
                                    (cons _%dispatch199287%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature199291%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature199291%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature199291%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature199291%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature199291%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity199288%_
                                  (cons _%dispatch199287%_ '()))))))
               (_%e199275199306%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199271199280%_ '1 '#f '#f)))
               (_%e199276199309%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199271199280%_ '2 '#f '#f)))
               (_%signature199312%_ _%e199276199309%_)
               (_%e199277199314%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199271199280%_ '3 '#f '#f)))
               (_%arity199317%_ _%e199277199314%_)
               (_%e199278199319%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199271199280%_ '4 '#f '#f)))
               (_%dispatch199322%_ _%e199278199319%_))
          (_%K199274199303%_
           _%dispatch199322%_
           _%arity199317%_
           _%signature199312%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self198577199116%_)
        (let* ((_%self199119%_ _%self198577199116%_)
               (_%self199121%_ _%self199119%_))
          (letrec ((_%clause-e199131%_
                    (lambda (_%clause199133%_)
                      (cdr (let ((__method201838
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause199133%_
                                     'typedecl))))
                             (if __method201838
                                 (let ()
                                   (declare (not safe))
                                   (__method201838 _%clause199133%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause199133%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e199131%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self199121%_
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
      (lambda (_%self198578198979%_)
        (let* ((_%self198982%_ _%self198578198979%_)
               (_%self198984%_ _%self198982%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198984%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198984%_
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
      (lambda (_%self198579198842%_)
        (let* ((_%self198845%_ _%self198579198842%_)
               (_%self198847%_ _%self198845%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198847%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198847%_
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
      (lambda (_%self198580198705%_)
        (let* ((_%self198708%_ _%self198580198705%_)
               (_%self198710%_ _%self198708%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198710%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
