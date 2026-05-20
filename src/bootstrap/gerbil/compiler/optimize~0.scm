(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1779289651)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp260791
                   (let ((__obj260785
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
                       (gxc#optimizer-info:::init! __obj260785))
                     __obj260785)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp260791)))))
    (define gxc#optimize!
      (lambda (_%ctx260393%_)
        (let ((__tmp260793
               (lambda ()
                 (let ((__tmp260795
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx260393%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx260393%_)
                          (let ((__tmp260797
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp260796
                                 (##structure-ref
                                  _%ctx260393%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp260797 __tmp260796 '#t))
                          (let ((_%code260397%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx260393%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx260393%_
                             _%code260397%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp260794
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp260795
                    gxc#current-compile-local-type
                    __tmp260794))))
              (__tmp260792 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260793
           gxc#current-compile-mutators
           __tmp260792))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx260379%_)
        (letrec ((_%load-it!260381%_
                  (lambda (_%id260391%_)
                    (if (let ((__tmp260798
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp260798 _%id260391%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id260391%_)
                          (let ((__tmp260799
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp260799 _%id260391%_ '#t)))))))
          (let* ((_%modid260383%_
                  (##structure-ref
                   _%ctx260379%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str260385%_ (symbol->string _%modid260383%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str260385%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str260385%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!260381%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!260381%_
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
      (lambda (_%ctx260316%_)
        (letrec* ((_%deps260318%_
                   (let* ((_%imports260369%_
                           (##structure-ref
                            _%ctx260316%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e260371%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx260316%_))))
                     (if _%$e260371%_
                         (cons _%$e260371%_ _%imports260369%_)
                         _%imports260369%_))))
          (let _%lp260320%_ ((_%rest260322%_ _%deps260318%_))
            (let* ((_%rest260323260331%_ _%rest260322%_)
                   (_%else260325260339%_ (lambda () '#!void))
                   (_%K260327260357%_
                    (lambda (_%rest260342%_ _%hd260343%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd260343%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp260801
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp260800
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd260343%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp260801 __tmp260800))
                                '#!void
                                (begin
                                  (let ((_%$e260346%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd260343%_))))
                                    (if _%$e260346%_
                                        (_%lp260320%_
                                         (cons _%$e260346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd260343%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp260320%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd260343%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd260343%_)))
                            (_%lp260320%_ _%rest260342%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd260343%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp260803
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp260802
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd260343%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp260803 __tmp260802))
                                    '#!void
                                    (begin
                                      (_%lp260320%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd260343%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd260343%_)))
                                (_%lp260320%_ _%rest260342%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd260343%_
                                     'gx#module-import::t))
                                  (_%lp260320%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd260343%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest260342%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd260343%_
                                         'gx#module-export::t))
                                      (_%lp260320%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd260343%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest260342%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd260343%_
                                             'gx#import-set::t))
                                          (_%lp260320%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd260343%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest260342%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd260343%_))))))))))
              (if (pair? _%rest260323260331%_)
                  (let ((_%hd260328260360%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest260323260331%_)))
                        (_%tl260329260362%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest260323260331%_))))
                    (let* ((_%hd260365%_ _%hd260328260360%_)
                           (_%rest260367%_ _%tl260329260362%_))
                      (_%K260327260357%_ _%rest260367%_ _%hd260365%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx260296%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx260296%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx260296%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht260298%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id260300%_
                    (##structure-ref
                     _%ctx260296%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod260302%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht260298%_ _%id260300%_)))
                   (_%$e260305%_ _%mod260302%_))
              (if _%$e260305%_
                  _%$e260305%_
                  (let* ((_%mod260308%_
                          (gxc#optimizer-import-ssxi _%ctx260296%_))
                         (_%val260313%_
                          (let ((_%$e260310%_ _%mod260308%_))
                            (if _%$e260310%_ _%$e260310%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht260298%_ _%id260300%_ _%val260313%_))
                    _%val260313%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx260294%_)
        (if (##structure-ref _%ctx260294%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx260294%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id260272%_)
        (letrec ((_%catch-e260274%_
                  (lambda (_%exn260292%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn260292%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn260292%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id260272%_))))
                    '#f))
                 (_%import-e260275%_
                  (lambda ()
                    (let* ((_%str-id260278%_
                            (let ((__tmp260804
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id260272%_))))
                              (declare (not safe))
                              (##string-append __tmp260804 '".ssxi")))
                           (_%artefact-path260285%_
                            (let ((_%odir260279260281%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir260279260281%_
                                  (let ((_%odir260283%_ _%odir260279260281%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id260278%_
                                        '".ss"))
                                     _%odir260283%_))
                                  '#f)))
                           (_%library-path260287%_
                            (let ((__tmp260805
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id260278%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp260805)))
                           (_%ssxi-path260289%_
                            (if (and _%artefact-path260285%_
                                     (file-exists? _%artefact-path260285%_))
                                _%artefact-path260285%_
                                _%library-path260287%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path260289%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path260289%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e260274%_ _%import-e260275%_)))))
    (define gxc#optimize-source
      (lambda (_%stx260257%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx260257%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx260257%_))
        (let* ((_%stx260259%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx260257%_)))
               (_%stx260261%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx260259%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx260261%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx260261%_))
          (let _%fixpoint260264%_ ((_%current260266%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx260261%_))
            (let ((_%refined260268%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current260266%_ _%refined260268%_)
                  '#!void
                  (_%fixpoint260264%_ _%refined260268%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx260261%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx260261%_))
          (let ((_%stx260270%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx260261%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx260270%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp260807 (list gxc#::generate-runtime-empty::t))
            (__tmp260806 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp260807
         '()
         __tmp260806
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args260254%_
        (apply make-instance gxc#::generate-ssxi::t _%$args260254%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp260808
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
        (__make-atomic-promise __tmp260808)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx260246%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self260249%_
                (let ((__obj260787
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj260787))
               (__tmp260809
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self260249%_ _%stx260246%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260809
           gxc#current-compile-method
           _%self260249%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self260206%_ _%stx260207%_)
        (let* ((_%g260209260219%_
                (lambda (_%g260210260216%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260210260216%_))))
               (_%g260208260243%_
                (lambda (_%g260210260222%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260210260222%_))
                      (let ((_%e260212260224%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g260210260222%_))))
                        (let ((_%hd260213260227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260212260224%_)))
                              (_%tl260214260229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260212260224%_))))
                          (let ((__tmp260812
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self260206%_
                                      _%stx260207%_))))
                                (__tmp260810
                                 (let ((__tmp260811
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp260811 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp260812
                             gx#current-expander-phi
                             __tmp260810))))
                      (_%g260209260219%_ _%g260210260222%_)))))
          (_%g260208260243%_ _%stx260207%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self260145%_ _%stx260146%_)
        (let* ((_%g260148260162%_
                (lambda (_%g260149260159%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260149260159%_))))
               (_%g260147260203%_
                (lambda (_%g260149260165%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260149260165%_))
                      (let ((_%e260152260167%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g260149260165%_))))
                        (let ((_%hd260153260170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260152260167%_)))
                              (_%tl260154260172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260152260167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260154260172%_))
                              (let ((_%e260155260175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl260154260172%_))))
                                (let ((_%hd260156260178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260155260175%_)))
                                      (_%tl260157260180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260155260175%_))))
                                  (let* ((_%ctx260197%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%hd260156260178%_)))
                                         (_%code260199%_
                                          (##structure-ref
                                           _%ctx260197%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp260813
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self260145%_
                                               _%code260199%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp260813
                                     gx#current-expander-context
                                     _%ctx260197%_))))
                              (_%g260148260162%_ _%g260149260165%_))))
                      (_%g260148260162%_ _%g260149260165%_)))))
          (_%g260147260203%_ _%stx260146%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self259952%_ _%stx259953%_)
        (letrec ((_%generate-e259955%_
                  (lambda (_%id260130%_)
                    (let* ((_%sym260132%_
                            (if (let ((__tmp260814
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp260814))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id260130%_))
                                '#f))
                           (_%$e260134%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym260132%_))))
                      (if _%$e260134%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym260132%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym260132%_
                                                    (cons (let ((__method260788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e260134%_ 'typedecl))))
                    (if __method260788
                        (let ()
                          (declare (not safe))
                          (__method260788 _%$e260134%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e260134%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym260132%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'quote
                                          (cons (cons 'typedecl
                                                      (cons _%sym260132%_ '()))
                                                '()))
                                    (cons (cons 'quote (cons 'class::t '()))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e260139%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym260132%_))))
                            (if _%$e260139%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym260132%_
                                     '" "
                                     _%$e260139%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e260139%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym260132%_
                                                  (cons (cons 'optimizer-resolve-class
                                                              (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons 'typedecl
                                              (cons _%sym260132%_ '()))
                                        '()))
                            (cons (cons 'quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#optimizer-lookup-class-name
                                                 _%$e260139%_))
                                              '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym260132%_
                                                  (cons (let ((__method260789
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e260139%_ 'typedecl))))
                  (if __method260789
                      (let ()
                        (declare (not safe))
                        (__method260789 _%$e260139%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e260139%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx260400260401%_ _%stx259953%_)
                 (_%g259958259996%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx260400260401%_)))))
            (let ((_%__kont260402260403%_
                   (lambda (_%g259960260112%_)
                     (_%generate-e259955%_ _%g259960260112%_)))
                  (_%__kont260404260405%_
                   (lambda (_%g259973260047%_)
                     (let ((_%types260073%_
                            (map _%generate-e259955%_
                                 (let ((__tmp260815
                                        (lambda (_%g260065260068%_
                                                 _%g260066260070%_)
                                          (cons _%g260065260068%_
                                                _%g260066260070%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp260815
                                    '()
                                    _%g259973260047%_)))))
                       (cons 'begin _%types260073%_)))))
              (let ((_%__match260455260456%_
                     (lambda (_%e259974260001%_
                              _%hd259975260004%_
                              _%tl259976260006%_
                              _%e259977260009%_
                              _%hd259978260012%_
                              _%tl259979260014%_
                              _%__splice260406260407%_
                              _%target259980260017%_
                              _%tl259982260019%_)
                       (letrec ((_%loop259983260022%_
                                 (lambda (_%hd259981260025%_
                                          _%id259987260027%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd259981260025%_))
                                       (let ((_%e259984260029%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd259981260025%_))))
                                         (let ((_%lp-tl259986260034%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e259984260029%_)))
                                               (_%lp-hd259985260032%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e259984260029%_))))
                                           (_%loop259983260022%_
                                            _%lp-tl259986260034%_
                                            (cons _%lp-hd259985260032%_
                                                  _%id259987260027%_))))
                                       (let ((_%id259988260037%_
                                              (reverse _%id259987260027%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl259979260014%_))
                                             (let ((_%e259989260039%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl259979260014%_))))
                                               (let ((_%tl259991260044%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e259989260039%_)))
                                                     (_%hd259990260042%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e259989260039%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl259991260044%_))
                                                     (_%__kont260404260405%_
                                                      _%id259988260037%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g259958259996%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g259958259996%_))))))))
                         (_%loop259983260022%_ _%target259980260017%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx260400260401%_))
                    (let ((_%e259961260080%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx260400260401%_))))
                      (let ((_%tl259963260085%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259961260080%_)))
                            (_%hd259962260083%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259961260080%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl259963260085%_))
                            (let ((_%e259964260088%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl259963260085%_))))
                              (let ((_%tl259966260093%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e259964260088%_)))
                                    (_%hd259965260091%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e259964260088%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd259965260091%_))
                                    (let ((_%e259967260096%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd259965260091%_))))
                                      (let ((_%tl259969260101%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259967260096%_)))
                                            (_%hd259968260099%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259967260096%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259969260101%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259966260093%_))
                                                (let ((_%e259970260104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl259966260093%_))))
                                                  (let ((_%tl259972260109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259970260104%_)))
                                                        (_%hd259971260107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259970260104%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259972260109%_))
                                                        (_%__kont260402260403%_
                                                         _%hd259968260099%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd259965260091%_))
                                                            (let ((_%__splice260406260407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd259965260091%_
                              '0))))
                      (let ((_%tl259982260019%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice260406260407%_ '1)))
                            (_%target259980260017%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice260406260407%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl259982260019%_))
                            (_%__match260455260456%_
                             _%e259961260080%_
                             _%hd259962260083%_
                             _%tl259963260085%_
                             _%e259964260088%_
                             _%hd259965260091%_
                             _%tl259966260093%_
                             _%__splice260406260407%_
                             _%target259980260017%_
                             _%tl259982260019%_)
                            (let ()
                              (declare (not safe))
                              (_%g259958259996%_)))))
                    (let () (declare (not safe)) (_%g259958259996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd259965260091%_))
                                                    (let ((_%__splice260406260407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd259965260091%_
                                                              '0))))
                                                      (let ((_%tl259982260019%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice260406260407%_ '1)))
                    (_%target259980260017%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice260406260407%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl259982260019%_))
                    (_%__match260455260456%_
                     _%e259961260080%_
                     _%hd259962260083%_
                     _%tl259963260085%_
                     _%e259964260088%_
                     _%hd259965260091%_
                     _%tl259966260093%_
                     _%__splice260406260407%_
                     _%target259980260017%_
                     _%tl259982260019%_)
                    (let () (declare (not safe)) (_%g259958259996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259958259996%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd259965260091%_))
                                                (let ((_%__splice260406260407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd259965260091%_
                                                          '0))))
                                                  (let ((_%tl259982260019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice260406260407%_
                                                            '1)))
                                                        (_%target259980260017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice260406260407%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259982260019%_))
                                                        (_%__match260455260456%_
                                                         _%e259961260080%_
                                                         _%hd259962260083%_
                                                         _%tl259963260085%_
                                                         _%e259964260088%_
                                                         _%hd259965260091%_
                                                         _%tl259966260093%_
                                                         _%__splice260406260407%_
                                                         _%target259980260017%_
                                                         _%tl259982260019%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259958259996%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259958259996%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd259965260091%_))
                                        (let ((_%__splice260406260407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd259965260091%_
                                                  '0))))
                                          (let ((_%tl259982260019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice260406260407%_
                                                    '1)))
                                                (_%target259980260017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice260406260407%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl259982260019%_))
                                                (_%__match260455260456%_
                                                 _%e259961260080%_
                                                 _%hd259962260083%_
                                                 _%tl259963260085%_
                                                 _%e259964260088%_
                                                 _%hd259965260091%_
                                                 _%tl259966260093%_
                                                 _%__splice260406260407%_
                                                 _%target259980260017%_
                                                 _%tl259982260019%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259958259996%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g259958259996%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g259958259996%_)))))
                    (let () (declare (not safe)) (_%g259958259996%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self259505%_ _%stx259506%_)
        (let* ((_%__stx260458260459%_ _%stx259506%_)
               (_%g259510259612%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx260458260459%_)))))
          (let ((_%__kont260460260461%_
                 (lambda (_%g259512259902%_
                          _%g259513259903%_
                          _%g259514259904%_
                          _%g259515259905%_
                          _%g259516259906%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g259515259905%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g259514259904%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g259513259903%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g259512259902%_))
                                                 '())))))))
                (_%__kont260462260463%_
                 (lambda (_%g259565259728%_
                          _%g259566259729%_
                          _%g259567259730%_
                          _%g259568259731%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g259567259730%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g259566259729%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g259565259728%_))
                                           (cons '#f '())))))))
                (_%__kont260464260465%_ (lambda () '(begin))))
            (let ((_%__match260593260594%_
                   (lambda (_%e259517259774%_
                            _%hd259518259777%_
                            _%tl259519259779%_
                            _%e259520259782%_
                            _%hd259521259785%_
                            _%tl259522259787%_
                            _%e259523259790%_
                            _%hd259524259793%_
                            _%tl259525259795%_
                            _%e259526259798%_
                            _%hd259527259801%_
                            _%tl259528259803%_
                            _%e259529259806%_
                            _%hd259530259809%_
                            _%tl259531259811%_
                            _%e259532259814%_
                            _%hd259533259817%_
                            _%tl259534259819%_
                            _%e259535259822%_
                            _%hd259536259825%_
                            _%tl259537259827%_
                            _%e259538259830%_
                            _%hd259539259833%_
                            _%tl259540259835%_
                            _%e259541259838%_
                            _%hd259542259841%_
                            _%tl259543259843%_
                            _%e259544259846%_
                            _%hd259545259849%_
                            _%tl259546259851%_
                            _%e259547259854%_
                            _%hd259548259857%_
                            _%tl259549259859%_
                            _%e259550259862%_
                            _%hd259551259865%_
                            _%tl259552259867%_
                            _%e259553259870%_
                            _%hd259554259873%_
                            _%tl259555259875%_
                            _%e259556259878%_
                            _%hd259557259881%_
                            _%tl259558259883%_
                            _%e259559259886%_
                            _%hd259560259889%_
                            _%tl259561259891%_
                            _%e259562259894%_
                            _%hd259563259897%_
                            _%tl259564259899%_)
                     (let ((_%g259512259902%_ _%hd259563259897%_)
                           (_%g259513259903%_ _%hd259554259873%_)
                           (_%g259514259904%_ _%hd259545259849%_)
                           (_%g259515259905%_ _%hd259536259825%_)
                           (_%g259516259906%_ _%hd259527259801%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g259516259906%_
                              'bind-method!))
                           (_%__kont260460260461%_
                            _%g259512259902%_
                            _%g259513259903%_
                            _%g259514259904%_
                            _%g259515259905%_
                            _%g259516259906%_)
                           (_%__kont260464260465%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx260458260459%_))
                  (let ((_%e259517259774%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx260458260459%_))))
                    (let ((_%tl259519259779%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259517259774%_)))
                          (_%hd259518259777%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259517259774%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl259519259779%_))
                          (let ((_%e259520259782%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl259519259779%_))))
                            (let ((_%tl259522259787%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259520259782%_)))
                                  (_%hd259521259785%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259520259782%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd259521259785%_))
                                  (let ((_%e259523259790%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd259521259785%_))))
                                    (let ((_%tl259525259795%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259523259790%_)))
                                          (_%hd259524259793%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259523259790%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd259524259793%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd259524259793%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl259525259795%_))
                                                  (let ((_%e259526259798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl259525259795%_))))
                                                    (let ((_%tl259528259803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259526259798%_)))
                                                          (_%hd259527259801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259526259798%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl259528259803%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl259522259787%_))
                      (let ((_%e259529259806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl259522259787%_))))
                        (let ((_%tl259531259811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259529259806%_)))
                              (_%hd259530259809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259529259806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd259530259809%_))
                              (let ((_%e259532259814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd259530259809%_))))
                                (let ((_%tl259534259819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259532259814%_)))
                                      (_%hd259533259817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259532259814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd259533259817%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd259533259817%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259534259819%_))
                                              (let ((_%e259535259822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl259534259819%_))))
                                                (let ((_%tl259537259827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259535259822%_)))
                                                      (_%hd259536259825%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259535259822%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259537259827%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl259531259811%_))
                                                          (let ((_%e259538259830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl259531259811%_))))
                    (let ((_%tl259540259835%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259538259830%_)))
                          (_%hd259539259833%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259538259830%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd259539259833%_))
                          (let ((_%e259541259838%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd259539259833%_))))
                            (let ((_%tl259543259843%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259541259838%_)))
                                  (_%hd259542259841%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259541259838%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd259542259841%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd259542259841%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl259543259843%_))
                                          (let ((_%e259544259846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl259543259843%_))))
                                            (let ((_%tl259546259851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e259544259846%_)))
                                                  (_%hd259545259849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e259544259846%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl259546259851%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl259540259835%_))
                                                      (let ((_%e259547259854%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl259540259835%_))))
                (let ((_%tl259549259859%_
                       (let () (declare (not safe)) (##cdr _%e259547259854%_)))
                      (_%hd259548259857%_
                       (let ()
                         (declare (not safe))
                         (##car _%e259547259854%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd259548259857%_))
                      (let ((_%e259550259862%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd259548259857%_))))
                        (let ((_%tl259552259867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259550259862%_)))
                              (_%hd259551259865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259550259862%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd259551259865%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd259551259865%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259552259867%_))
                                      (let ((_%e259553259870%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl259552259867%_))))
                                        (let ((_%tl259555259875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259553259870%_)))
                                              (_%hd259554259873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259553259870%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259555259875%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl259549259859%_))
                                                  (let ((_%e259556259878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl259549259859%_))))
                                                    (let ((_%tl259558259883%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259556259878%_)))
                                                          (_%hd259557259881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259556259878%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd259557259881%_))
                                                          (let ((_%e259559259886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd259557259881%_))))
                    (let ((_%tl259561259891%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259559259886%_)))
                          (_%hd259560259889%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259559259886%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd259560259889%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd259560259889%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl259561259891%_))
                                  (let ((_%e259562259894%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl259561259891%_))))
                                    (let ((_%tl259564259899%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259562259894%_)))
                                          (_%hd259563259897%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259562259894%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl259564259899%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259558259883%_))
                                              (_%__match260593260594%_
                                               _%e259517259774%_
                                               _%hd259518259777%_
                                               _%tl259519259779%_
                                               _%e259520259782%_
                                               _%hd259521259785%_
                                               _%tl259522259787%_
                                               _%e259523259790%_
                                               _%hd259524259793%_
                                               _%tl259525259795%_
                                               _%e259526259798%_
                                               _%hd259527259801%_
                                               _%tl259528259803%_
                                               _%e259529259806%_
                                               _%hd259530259809%_
                                               _%tl259531259811%_
                                               _%e259532259814%_
                                               _%hd259533259817%_
                                               _%tl259534259819%_
                                               _%e259535259822%_
                                               _%hd259536259825%_
                                               _%tl259537259827%_
                                               _%e259538259830%_
                                               _%hd259539259833%_
                                               _%tl259540259835%_
                                               _%e259541259838%_
                                               _%hd259542259841%_
                                               _%tl259543259843%_
                                               _%e259544259846%_
                                               _%hd259545259849%_
                                               _%tl259546259851%_
                                               _%e259547259854%_
                                               _%hd259548259857%_
                                               _%tl259549259859%_
                                               _%e259550259862%_
                                               _%hd259551259865%_
                                               _%tl259552259867%_
                                               _%e259553259870%_
                                               _%hd259554259873%_
                                               _%tl259555259875%_
                                               _%e259556259878%_
                                               _%hd259557259881%_
                                               _%tl259558259883%_
                                               _%e259559259886%_
                                               _%hd259560259889%_
                                               _%tl259561259891%_
                                               _%e259562259894%_
                                               _%hd259563259897%_
                                               _%tl259564259899%_)
                                              (_%__kont260464260465%_))
                                          (_%__kont260464260465%_))))
                                  (_%__kont260464260465%_))
                              (_%__kont260464260465%_))
                          (_%__kont260464260465%_))))
                  (_%__kont260464260465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259549259859%_))
                                                      (if (let ((__tmp260816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp260816 'bind-method!))
                  (let ((_%g259565259728%_ _%hd259554259873%_)
                        (_%g259566259729%_ _%hd259545259849%_)
                        (_%g259567259730%_ _%hd259536259825%_)
                        (_%g259568259731%_ _%hd259527259801%_))
                    (_%__kont260462260463%_
                     _%g259565259728%_
                     _%g259566259729%_
                     _%g259567259730%_
                     _%g259568259731%_))
                  (_%__kont260464260465%_))
              (_%__kont260464260465%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont260464260465%_))))
                                      (_%__kont260464260465%_))
                                  (_%__kont260464260465%_))
                              (_%__kont260464260465%_))))
                      (_%__kont260464260465%_))))
              (_%__kont260464260465%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont260464260465%_))))
                                          (_%__kont260464260465%_))
                                      (_%__kont260464260465%_))
                                  (_%__kont260464260465%_))))
                          (_%__kont260464260465%_))))
                  (_%__kont260464260465%_))
              (_%__kont260464260465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont260464260465%_))
                                          (_%__kont260464260465%_))
                                      (_%__kont260464260465%_))))
                              (_%__kont260464260465%_))))
                      (_%__kont260464260465%_))
                  (_%__kont260464260465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont260464260465%_))
                                              (_%__kont260464260465%_))
                                          (_%__kont260464260465%_))))
                                  (_%__kont260464260465%_))))
                          (_%__kont260464260465%_))))
                  (_%__kont260464260465%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self259329%_ _%stx259330%_)
        (let* ((_%__stx260702260703%_ _%stx259330%_)
               (_%g259333259373%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx260702260703%_)))))
          (let ((_%__kont260704260705%_
                 (lambda (_%g259335259479%_ _%g259336259480%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g259336259480%_))
                               (cons _%g259335259479%_ '())))))
                (_%__kont260706260707%_
                 (lambda (_%g259358259402%_ _%g259359259403%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx260702260703%_))
                (let ((_%e259337259423%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx260702260703%_))))
                  (let ((_%tl259339259428%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259337259423%_)))
                        (_%hd259338259426%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259337259423%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl259339259428%_))
                        (let ((_%e259340259431%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl259339259428%_))))
                          (let ((_%tl259342259436%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259340259431%_)))
                                (_%hd259341259434%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259340259431%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd259341259434%_))
                                (let ((_%e259343259439%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd259341259434%_))))
                                  (let ((_%tl259345259444%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259343259439%_)))
                                        (_%hd259344259442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259343259439%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd259344259442%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd259344259442%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259345259444%_))
                                                (let ((_%e259346259447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl259345259444%_))))
                                                  (let ((_%tl259348259452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259346259447%_)))
                                                        (_%hd259347259450%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259346259447%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259348259452%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl259342259436%_))
                                                            (let ((_%e259349259455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl259342259436%_))))
                      (let ((_%tl259351259460%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259349259455%_)))
                            (_%hd259350259458%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259349259455%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd259350259458%_))
                            (let ((_%e259352259463%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd259350259458%_))))
                              (let ((_%tl259354259468%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e259352259463%_)))
                                    (_%hd259353259466%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e259352259463%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd259353259466%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd259353259466%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259354259468%_))
                                            (let ((_%e259355259471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl259354259468%_))))
                                              (let ((_%tl259357259476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259355259471%_)))
                                                    (_%hd259356259474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259355259471%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl259357259476%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259351259460%_))
                                                        (_%__kont260704260705%_
                                                         _%hd259356259474%_
                                                         _%hd259347259450%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259333259373%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259351259460%_))
                                                        (_%__kont260706260707%_
                                                         _%hd259350259458%_
                                                         _%hd259341259434%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259333259373%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl259351259460%_))
                                                (_%__kont260706260707%_
                                                 _%hd259350259458%_
                                                 _%hd259341259434%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259333259373%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259351259460%_))
                                            (_%__kont260706260707%_
                                             _%hd259350259458%_
                                             _%hd259341259434%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g259333259373%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259351259460%_))
                                        (_%__kont260706260707%_
                                         _%hd259350259458%_
                                         _%hd259341259434%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g259333259373%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl259351259460%_))
                                (_%__kont260706260707%_
                                 _%hd259350259458%_
                                 _%hd259341259434%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g259333259373%_))))))
                    (let () (declare (not safe)) (_%g259333259373%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl259342259436%_))
                    (let ((_%e259366259394%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl259342259436%_))))
                      (let ((_%tl259368259399%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259366259394%_)))
                            (_%hd259367259397%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259366259394%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl259368259399%_))
                            (_%__kont260706260707%_
                             _%hd259367259397%_
                             _%hd259341259434%_)
                            (let ()
                              (declare (not safe))
                              (_%g259333259373%_)))))
                    (let () (declare (not safe)) (_%g259333259373%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl259342259436%_))
                                                    (let ((_%e259366259394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl259342259436%_))))
                                                      (let ((_%tl259368259399%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e259366259394%_)))
                    (_%hd259367259397%_
                     (let () (declare (not safe)) (##car _%e259366259394%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl259368259399%_))
                    (_%__kont260706260707%_
                     _%hd259367259397%_
                     _%hd259341259434%_)
                    (let () (declare (not safe)) (_%g259333259373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259333259373%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259342259436%_))
                                                (let ((_%e259366259394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl259342259436%_))))
                                                  (let ((_%tl259368259399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259366259394%_)))
                                                        (_%hd259367259397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259366259394%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259368259399%_))
                                                        (_%__kont260706260707%_
                                                         _%hd259367259397%_
                                                         _%hd259341259434%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259333259373%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259333259373%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259342259436%_))
                                            (let ((_%e259366259394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl259342259436%_))))
                                              (let ((_%tl259368259399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259366259394%_)))
                                                    (_%hd259367259397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259366259394%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl259368259399%_))
                                                    (_%__kont260706260707%_
                                                     _%hd259367259397%_
                                                     _%hd259341259434%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259333259373%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g259333259373%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl259342259436%_))
                                    (let ((_%e259366259394%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl259342259436%_))))
                                      (let ((_%tl259368259399%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259366259394%_)))
                                            (_%hd259367259397%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259366259394%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259368259399%_))
                                            (_%__kont260706260707%_
                                             _%hd259367259397%_
                                             _%hd259341259434%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g259333259373%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g259333259373%_))))))
                        (let () (declare (not safe)) (_%g259333259373%_)))))
                (let () (declare (not safe)) (_%g259333259373%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self259316%_)
        (let ((_%self259319%_ _%self259316%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259319%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self259090%_)
        (let* ((_%self259093%_ _%self259090%_)
               (_%self259102259118%_ _%self259093%_)
               (_%E259104259121%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self259102259118%_
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
               (_%K259105259136%_
                (lambda (_%methods259124%_
                         _%metaclass259125%_
                         _%system?259126%_
                         _%final?259127%_
                         _%struct?259128%_
                         _%constructor259129%_
                         _%fields259130%_
                         _%slots259131%_
                         _%precendence-list259132%_
                         _%super259133%_
                         _%id259134%_)
                  (cons '@class
                        (cons _%id259134%_
                              (cons _%super259133%_
                                    (cons _%precendence-list259132%_
                                          (cons _%slots259131%_
                                                (cons _%fields259130%_
                                                      (cons _%constructor259129%_
                                                            (cons _%struct?259128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?259127%_
                                (cons _%system?259126%_
                                      (cons _%metaclass259125%_
                                            (cons (if _%methods259124%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods259124%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e259106259139%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259102259118%_ '1 '#f '#f)))
               (_%id259142%_ _%e259106259139%_)
               (_%e259107259144%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259102259118%_ '2 '#f '#f)))
               (_%super259147%_ _%e259107259144%_)
               (_%e259108259149%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259102259118%_ '3 '#f '#f)))
               (_%precendence-list259152%_ _%e259108259149%_)
               (_%e259109259154%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259102259118%_ '4 '#f '#f)))
               (_%slots259157%_ _%e259109259154%_)
               (_%e259110259159%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259102259118%_ '5 '#f '#f)))
               (_%fields259162%_ _%e259110259159%_)
               (_%e259111259164%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259102259118%_ '6 '#f '#f)))
               (_%constructor259167%_ _%e259111259164%_)
               (_%e259112259169%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259102259118%_ '7 '#f '#f)))
               (_%struct?259172%_ _%e259112259169%_)
               (_%e259113259174%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259102259118%_ '8 '#f '#f)))
               (_%final?259177%_ _%e259113259174%_)
               (_%e259114259179%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259102259118%_ '9 '#f '#f)))
               (_%system?259182%_ _%e259114259179%_)
               (_%e259115259184%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self259102259118%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass259187%_ _%e259115259184%_)
               (_%e259116259189%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self259102259118%_
                   '11
                   '#f
                   '#f)))
               (_%methods259192%_ _%e259116259189%_))
          (_%K259105259136%_
           _%methods259192%_
           _%metaclass259187%_
           _%system?259182%_
           _%final?259177%_
           _%struct?259172%_
           _%constructor259167%_
           _%fields259162%_
           _%slots259157%_
           _%precendence-list259152%_
           _%super259147%_
           _%id259142%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self258955%_)
        (let ((_%self258958%_ _%self258955%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258958%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self258820%_)
        (let ((_%self258823%_ _%self258820%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258823%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self258685%_)
        (let ((_%self258688%_ _%self258685%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258688%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258688%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self258688%_
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
      (lambda (_%self258550%_)
        (let ((_%self258553%_ _%self258550%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258553%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258553%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self258553%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self258415%_)
        (let ((_%self258418%_ _%self258415%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258418%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258418%_
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
      (lambda (_%self258229%_)
        (let* ((_%self258232%_ _%self258229%_)
               (_%self258241258250%_ _%self258232%_)
               (_%E258243258253%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self258241258250%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K258244258272%_
                (lambda (_%dispatch258256%_
                         _%arity258257%_
                         _%signature258258%_)
                  (if _%signature258258%_
                      (let ((_%signature258260%_ _%signature258258%_))
                        (cons '@lambda
                              (cons _%arity258257%_
                                    (cons _%dispatch258256%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature258260%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature258260%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature258260%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature258260%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature258260%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity258257%_
                                  (cons _%dispatch258256%_ '()))))))
               (_%e258245258275%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258241258250%_ '1 '#f '#f)))
               (_%e258246258278%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258241258250%_ '2 '#f '#f)))
               (_%signature258281%_ _%e258246258278%_)
               (_%e258247258283%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258241258250%_ '3 '#f '#f)))
               (_%arity258286%_ _%e258247258283%_)
               (_%e258248258288%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258241258250%_ '4 '#f '#f)))
               (_%dispatch258291%_ _%e258248258288%_))
          (_%K258244258272%_
           _%dispatch258291%_
           _%arity258286%_
           _%signature258281%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self258089%_)
        (let ((_%self258092%_ _%self258089%_))
          (letrec ((_%clause-e258103%_
                    (lambda (_%clause258105%_)
                      (cdr (let ((__method260790
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause258105%_
                                     'typedecl))))
                             (if __method260790
                                 (let ()
                                   (declare (not safe))
                                   (__method260790 _%clause258105%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause258105%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e258103%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self258092%_
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
      (lambda (_%self257954%_)
        (let ((_%self257957%_ _%self257954%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257957%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self257957%_
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
      (lambda (_%self257819%_)
        (let ((_%self257822%_ _%self257819%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257822%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self257822%_
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
      (lambda (_%self257684%_)
        (let ((_%self257687%_ _%self257684%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257687%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
