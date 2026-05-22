(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1779435592)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp260793
                   (let ((__obj260787
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
                       (gxc#optimizer-info:::init! __obj260787))
                     __obj260787)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp260793)))))
    (define gxc#optimize!
      (lambda (_%ctx260395%_)
        (let ((__tmp260795
               (lambda ()
                 (let ((__tmp260797
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx260395%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx260395%_)
                          (let ((__tmp260799
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp260798
                                 (##structure-ref
                                  _%ctx260395%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp260799 __tmp260798 '#t))
                          (let ((_%code260399%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx260395%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx260395%_
                             _%code260399%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp260796
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp260797
                    gxc#current-compile-local-type
                    __tmp260796))))
              (__tmp260794 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260795
           gxc#current-compile-mutators
           __tmp260794))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx260381%_)
        (letrec ((_%load-it!260383%_
                  (lambda (_%id260393%_)
                    (if (let ((__tmp260800
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp260800 _%id260393%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id260393%_)
                          (let ((__tmp260801
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp260801 _%id260393%_ '#t)))))))
          (let* ((_%modid260385%_
                  (##structure-ref
                   _%ctx260381%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str260387%_ (symbol->string _%modid260385%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str260387%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str260387%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!260383%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!260383%_
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
      (lambda (_%ctx260318%_)
        (letrec* ((_%deps260320%_
                   (let* ((_%imports260371%_
                           (##structure-ref
                            _%ctx260318%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e260373%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx260318%_))))
                     (if _%$e260373%_
                         (cons _%$e260373%_ _%imports260371%_)
                         _%imports260371%_))))
          (let _%lp260322%_ ((_%rest260324%_ _%deps260320%_))
            (let* ((_%rest260325260333%_ _%rest260324%_)
                   (_%else260327260341%_ (lambda () '#!void))
                   (_%K260329260359%_
                    (lambda (_%rest260344%_ _%hd260345%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd260345%_
                             'gx#module-context::t))
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
                                          _%hd260345%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp260803 __tmp260802))
                                '#!void
                                (begin
                                  (let ((_%$e260348%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd260345%_))))
                                    (if _%$e260348%_
                                        (_%lp260322%_
                                         (cons _%$e260348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd260345%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp260322%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd260345%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd260345%_)))
                            (_%lp260322%_ _%rest260344%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd260345%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp260805
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp260804
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd260345%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp260805 __tmp260804))
                                    '#!void
                                    (begin
                                      (_%lp260322%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd260345%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd260345%_)))
                                (_%lp260322%_ _%rest260344%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd260345%_
                                     'gx#module-import::t))
                                  (_%lp260322%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd260345%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest260344%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd260345%_
                                         'gx#module-export::t))
                                      (_%lp260322%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd260345%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest260344%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd260345%_
                                             'gx#import-set::t))
                                          (_%lp260322%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd260345%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest260344%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd260345%_))))))))))
              (if (pair? _%rest260325260333%_)
                  (let ((_%hd260330260362%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest260325260333%_)))
                        (_%tl260331260364%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest260325260333%_))))
                    (let* ((_%hd260367%_ _%hd260330260362%_)
                           (_%rest260369%_ _%tl260331260364%_))
                      (_%K260329260359%_ _%rest260369%_ _%hd260367%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx260298%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx260298%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx260298%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht260300%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id260302%_
                    (##structure-ref
                     _%ctx260298%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod260304%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht260300%_ _%id260302%_)))
                   (_%$e260307%_ _%mod260304%_))
              (if _%$e260307%_
                  _%$e260307%_
                  (let* ((_%mod260310%_
                          (gxc#optimizer-import-ssxi _%ctx260298%_))
                         (_%val260315%_
                          (let ((_%$e260312%_ _%mod260310%_))
                            (if _%$e260312%_ _%$e260312%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht260300%_ _%id260302%_ _%val260315%_))
                    _%val260315%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx260296%_)
        (if (##structure-ref _%ctx260296%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx260296%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id260274%_)
        (letrec ((_%catch-e260276%_
                  (lambda (_%exn260294%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn260294%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn260294%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id260274%_))))
                    '#f))
                 (_%import-e260277%_
                  (lambda ()
                    (let* ((_%str-id260280%_
                            (let ((__tmp260806
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id260274%_))))
                              (declare (not safe))
                              (##string-append __tmp260806 '".ssxi")))
                           (_%artefact-path260287%_
                            (let ((_%odir260281260283%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir260281260283%_
                                  (let ((_%odir260285%_ _%odir260281260283%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id260280%_
                                        '".ss"))
                                     _%odir260285%_))
                                  '#f)))
                           (_%library-path260289%_
                            (let ((__tmp260807
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id260280%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp260807)))
                           (_%ssxi-path260291%_
                            (if (and _%artefact-path260287%_
                                     (file-exists? _%artefact-path260287%_))
                                _%artefact-path260287%_
                                _%library-path260289%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path260291%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path260291%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e260276%_ _%import-e260277%_)))))
    (define gxc#optimize-source
      (lambda (_%stx260259%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx260259%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx260259%_))
        (let* ((_%stx260261%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx260259%_)))
               (_%stx260263%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx260261%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx260263%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx260263%_))
          (let _%fixpoint260266%_ ((_%current260268%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx260263%_))
            (let ((_%refined260270%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current260268%_ _%refined260270%_)
                  '#!void
                  (_%fixpoint260266%_ _%refined260270%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx260263%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx260263%_))
          (let ((_%stx260272%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx260263%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx260272%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp260809 (list gxc#::generate-runtime-empty::t))
            (__tmp260808 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp260809
         '()
         __tmp260808
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args260256%_
        (apply make-instance gxc#::generate-ssxi::t _%$args260256%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp260810
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
        (__make-atomic-promise __tmp260810)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx260248%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self260251%_
                (let ((__obj260789
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj260789))
               (__tmp260811
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self260251%_ _%stx260248%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260811
           gxc#current-compile-method
           _%self260251%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self260208%_ _%stx260209%_)
        (let* ((_%g260211260221%_
                (lambda (_%g260212260218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260212260218%_))))
               (_%g260210260245%_
                (lambda (_%g260212260224%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260212260224%_))
                      (let ((_%e260214260226%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g260212260224%_))))
                        (let ((_%hd260215260229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260214260226%_)))
                              (_%tl260216260231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260214260226%_))))
                          (let ((__tmp260814
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self260208%_
                                      _%stx260209%_))))
                                (__tmp260812
                                 (let ((__tmp260813
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp260813 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp260814
                             gx#current-expander-phi
                             __tmp260812))))
                      (_%g260211260221%_ _%g260212260224%_)))))
          (_%g260210260245%_ _%stx260209%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self260147%_ _%stx260148%_)
        (let* ((_%g260150260164%_
                (lambda (_%g260151260161%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260151260161%_))))
               (_%g260149260205%_
                (lambda (_%g260151260167%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260151260167%_))
                      (let ((_%e260154260169%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g260151260167%_))))
                        (let ((_%hd260155260172%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260154260169%_)))
                              (_%tl260156260174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260154260169%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260156260174%_))
                              (let ((_%e260157260177%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl260156260174%_))))
                                (let ((_%hd260158260180%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260157260177%_)))
                                      (_%tl260159260182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260157260177%_))))
                                  (let* ((_%ctx260199%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%hd260158260180%_)))
                                         (_%code260201%_
                                          (##structure-ref
                                           _%ctx260199%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp260815
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self260147%_
                                               _%code260201%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp260815
                                     gx#current-expander-context
                                     _%ctx260199%_))))
                              (_%g260150260164%_ _%g260151260167%_))))
                      (_%g260150260164%_ _%g260151260167%_)))))
          (_%g260149260205%_ _%stx260148%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self259954%_ _%stx259955%_)
        (letrec ((_%generate-e259957%_
                  (lambda (_%id260132%_)
                    (let* ((_%sym260134%_
                            (if (let ((__tmp260816
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp260816))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id260132%_))
                                '#f))
                           (_%$e260136%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym260134%_))))
                      (if _%$e260136%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym260134%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym260134%_
                                                    (cons (let ((__method260790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e260136%_ 'typedecl))))
                    (if __method260790
                        (let ()
                          (declare (not safe))
                          (__method260790 _%$e260136%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e260136%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym260134%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'quote
                                          (cons (cons 'typedecl
                                                      (cons _%sym260134%_ '()))
                                                '()))
                                    (cons (cons 'quote (cons 'class::t '()))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e260141%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym260134%_))))
                            (if _%$e260141%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym260134%_
                                     '" "
                                     _%$e260141%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e260141%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym260134%_
                                                  (cons (cons 'optimizer-resolve-class
                                                              (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons 'typedecl
                                              (cons _%sym260134%_ '()))
                                        '()))
                            (cons (cons 'quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#optimizer-lookup-class-name
                                                 _%$e260141%_))
                                              '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym260134%_
                                                  (cons (let ((__method260791
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e260141%_ 'typedecl))))
                  (if __method260791
                      (let ()
                        (declare (not safe))
                        (__method260791 _%$e260141%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e260141%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx260402260403%_ _%stx259955%_)
                 (_%g259960259998%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx260402260403%_)))))
            (let ((_%__kont260404260405%_
                   (lambda (_%g259962260114%_)
                     (_%generate-e259957%_ _%g259962260114%_)))
                  (_%__kont260406260407%_
                   (lambda (_%g259975260049%_)
                     (let ((_%types260075%_
                            (map _%generate-e259957%_
                                 (let ((__tmp260817
                                        (lambda (_%g260067260070%_
                                                 _%g260068260072%_)
                                          (cons _%g260067260070%_
                                                _%g260068260072%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp260817
                                    '()
                                    _%g259975260049%_)))))
                       (cons 'begin _%types260075%_)))))
              (let ((_%__match260457260458%_
                     (lambda (_%e259976260003%_
                              _%hd259977260006%_
                              _%tl259978260008%_
                              _%e259979260011%_
                              _%hd259980260014%_
                              _%tl259981260016%_
                              _%__splice260408260409%_
                              _%target259982260019%_
                              _%tl259984260021%_)
                       (letrec ((_%loop259985260024%_
                                 (lambda (_%hd259983260027%_
                                          _%id259989260029%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd259983260027%_))
                                       (let ((_%e259986260031%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd259983260027%_))))
                                         (let ((_%lp-tl259988260036%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e259986260031%_)))
                                               (_%lp-hd259987260034%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e259986260031%_))))
                                           (_%loop259985260024%_
                                            _%lp-tl259988260036%_
                                            (cons _%lp-hd259987260034%_
                                                  _%id259989260029%_))))
                                       (let ((_%id259990260039%_
                                              (reverse _%id259989260029%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl259981260016%_))
                                             (let ((_%e259991260041%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl259981260016%_))))
                                               (let ((_%tl259993260046%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e259991260041%_)))
                                                     (_%hd259992260044%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e259991260041%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl259993260046%_))
                                                     (_%__kont260406260407%_
                                                      _%id259990260039%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g259960259998%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g259960259998%_))))))))
                         (_%loop259985260024%_ _%target259982260019%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx260402260403%_))
                    (let ((_%e259963260082%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx260402260403%_))))
                      (let ((_%tl259965260087%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259963260082%_)))
                            (_%hd259964260085%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259963260082%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl259965260087%_))
                            (let ((_%e259966260090%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl259965260087%_))))
                              (let ((_%tl259968260095%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e259966260090%_)))
                                    (_%hd259967260093%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e259966260090%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd259967260093%_))
                                    (let ((_%e259969260098%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd259967260093%_))))
                                      (let ((_%tl259971260103%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259969260098%_)))
                                            (_%hd259970260101%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259969260098%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259971260103%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259968260095%_))
                                                (let ((_%e259972260106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl259968260095%_))))
                                                  (let ((_%tl259974260111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259972260106%_)))
                                                        (_%hd259973260109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259972260106%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259974260111%_))
                                                        (_%__kont260404260405%_
                                                         _%hd259970260101%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd259967260093%_))
                                                            (let ((_%__splice260408260409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd259967260093%_
                              '0))))
                      (let ((_%tl259984260021%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice260408260409%_ '1)))
                            (_%target259982260019%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice260408260409%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl259984260021%_))
                            (_%__match260457260458%_
                             _%e259963260082%_
                             _%hd259964260085%_
                             _%tl259965260087%_
                             _%e259966260090%_
                             _%hd259967260093%_
                             _%tl259968260095%_
                             _%__splice260408260409%_
                             _%target259982260019%_
                             _%tl259984260021%_)
                            (let ()
                              (declare (not safe))
                              (_%g259960259998%_)))))
                    (let () (declare (not safe)) (_%g259960259998%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd259967260093%_))
                                                    (let ((_%__splice260408260409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd259967260093%_
                                                              '0))))
                                                      (let ((_%tl259984260021%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice260408260409%_ '1)))
                    (_%target259982260019%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice260408260409%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl259984260021%_))
                    (_%__match260457260458%_
                     _%e259963260082%_
                     _%hd259964260085%_
                     _%tl259965260087%_
                     _%e259966260090%_
                     _%hd259967260093%_
                     _%tl259968260095%_
                     _%__splice260408260409%_
                     _%target259982260019%_
                     _%tl259984260021%_)
                    (let () (declare (not safe)) (_%g259960259998%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259960259998%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd259967260093%_))
                                                (let ((_%__splice260408260409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd259967260093%_
                                                          '0))))
                                                  (let ((_%tl259984260021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice260408260409%_
                                                            '1)))
                                                        (_%target259982260019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice260408260409%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259984260021%_))
                                                        (_%__match260457260458%_
                                                         _%e259963260082%_
                                                         _%hd259964260085%_
                                                         _%tl259965260087%_
                                                         _%e259966260090%_
                                                         _%hd259967260093%_
                                                         _%tl259968260095%_
                                                         _%__splice260408260409%_
                                                         _%target259982260019%_
                                                         _%tl259984260021%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259960259998%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259960259998%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd259967260093%_))
                                        (let ((_%__splice260408260409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd259967260093%_
                                                  '0))))
                                          (let ((_%tl259984260021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice260408260409%_
                                                    '1)))
                                                (_%target259982260019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice260408260409%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl259984260021%_))
                                                (_%__match260457260458%_
                                                 _%e259963260082%_
                                                 _%hd259964260085%_
                                                 _%tl259965260087%_
                                                 _%e259966260090%_
                                                 _%hd259967260093%_
                                                 _%tl259968260095%_
                                                 _%__splice260408260409%_
                                                 _%target259982260019%_
                                                 _%tl259984260021%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259960259998%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g259960259998%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g259960259998%_)))))
                    (let () (declare (not safe)) (_%g259960259998%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self259507%_ _%stx259508%_)
        (let* ((_%__stx260460260461%_ _%stx259508%_)
               (_%g259512259614%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx260460260461%_)))))
          (let ((_%__kont260462260463%_
                 (lambda (_%g259514259904%_
                          _%g259515259905%_
                          _%g259516259906%_
                          _%g259517259907%_
                          _%g259518259908%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g259517259907%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g259516259906%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g259515259905%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g259514259904%_))
                                                 '())))))))
                (_%__kont260464260465%_
                 (lambda (_%g259567259730%_
                          _%g259568259731%_
                          _%g259569259732%_
                          _%g259570259733%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g259569259732%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g259568259731%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g259567259730%_))
                                           (cons '#f '())))))))
                (_%__kont260466260467%_ (lambda () '(begin))))
            (let ((_%__match260595260596%_
                   (lambda (_%e259519259776%_
                            _%hd259520259779%_
                            _%tl259521259781%_
                            _%e259522259784%_
                            _%hd259523259787%_
                            _%tl259524259789%_
                            _%e259525259792%_
                            _%hd259526259795%_
                            _%tl259527259797%_
                            _%e259528259800%_
                            _%hd259529259803%_
                            _%tl259530259805%_
                            _%e259531259808%_
                            _%hd259532259811%_
                            _%tl259533259813%_
                            _%e259534259816%_
                            _%hd259535259819%_
                            _%tl259536259821%_
                            _%e259537259824%_
                            _%hd259538259827%_
                            _%tl259539259829%_
                            _%e259540259832%_
                            _%hd259541259835%_
                            _%tl259542259837%_
                            _%e259543259840%_
                            _%hd259544259843%_
                            _%tl259545259845%_
                            _%e259546259848%_
                            _%hd259547259851%_
                            _%tl259548259853%_
                            _%e259549259856%_
                            _%hd259550259859%_
                            _%tl259551259861%_
                            _%e259552259864%_
                            _%hd259553259867%_
                            _%tl259554259869%_
                            _%e259555259872%_
                            _%hd259556259875%_
                            _%tl259557259877%_
                            _%e259558259880%_
                            _%hd259559259883%_
                            _%tl259560259885%_
                            _%e259561259888%_
                            _%hd259562259891%_
                            _%tl259563259893%_
                            _%e259564259896%_
                            _%hd259565259899%_
                            _%tl259566259901%_)
                     (let ((_%g259514259904%_ _%hd259565259899%_)
                           (_%g259515259905%_ _%hd259556259875%_)
                           (_%g259516259906%_ _%hd259547259851%_)
                           (_%g259517259907%_ _%hd259538259827%_)
                           (_%g259518259908%_ _%hd259529259803%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g259518259908%_
                              'bind-method!))
                           (_%__kont260462260463%_
                            _%g259514259904%_
                            _%g259515259905%_
                            _%g259516259906%_
                            _%g259517259907%_
                            _%g259518259908%_)
                           (_%__kont260466260467%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx260460260461%_))
                  (let ((_%e259519259776%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx260460260461%_))))
                    (let ((_%tl259521259781%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259519259776%_)))
                          (_%hd259520259779%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259519259776%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl259521259781%_))
                          (let ((_%e259522259784%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl259521259781%_))))
                            (let ((_%tl259524259789%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259522259784%_)))
                                  (_%hd259523259787%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259522259784%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd259523259787%_))
                                  (let ((_%e259525259792%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd259523259787%_))))
                                    (let ((_%tl259527259797%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259525259792%_)))
                                          (_%hd259526259795%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259525259792%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd259526259795%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd259526259795%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl259527259797%_))
                                                  (let ((_%e259528259800%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl259527259797%_))))
                                                    (let ((_%tl259530259805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259528259800%_)))
                                                          (_%hd259529259803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259528259800%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl259530259805%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl259524259789%_))
                      (let ((_%e259531259808%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl259524259789%_))))
                        (let ((_%tl259533259813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259531259808%_)))
                              (_%hd259532259811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259531259808%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd259532259811%_))
                              (let ((_%e259534259816%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd259532259811%_))))
                                (let ((_%tl259536259821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259534259816%_)))
                                      (_%hd259535259819%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259534259816%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd259535259819%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd259535259819%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259536259821%_))
                                              (let ((_%e259537259824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl259536259821%_))))
                                                (let ((_%tl259539259829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259537259824%_)))
                                                      (_%hd259538259827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259537259824%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259539259829%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl259533259813%_))
                                                          (let ((_%e259540259832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl259533259813%_))))
                    (let ((_%tl259542259837%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259540259832%_)))
                          (_%hd259541259835%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259540259832%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd259541259835%_))
                          (let ((_%e259543259840%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd259541259835%_))))
                            (let ((_%tl259545259845%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259543259840%_)))
                                  (_%hd259544259843%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259543259840%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd259544259843%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd259544259843%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl259545259845%_))
                                          (let ((_%e259546259848%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl259545259845%_))))
                                            (let ((_%tl259548259853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e259546259848%_)))
                                                  (_%hd259547259851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e259546259848%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl259548259853%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl259542259837%_))
                                                      (let ((_%e259549259856%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl259542259837%_))))
                (let ((_%tl259551259861%_
                       (let () (declare (not safe)) (##cdr _%e259549259856%_)))
                      (_%hd259550259859%_
                       (let ()
                         (declare (not safe))
                         (##car _%e259549259856%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd259550259859%_))
                      (let ((_%e259552259864%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd259550259859%_))))
                        (let ((_%tl259554259869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259552259864%_)))
                              (_%hd259553259867%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259552259864%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd259553259867%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd259553259867%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259554259869%_))
                                      (let ((_%e259555259872%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl259554259869%_))))
                                        (let ((_%tl259557259877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259555259872%_)))
                                              (_%hd259556259875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259555259872%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259557259877%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl259551259861%_))
                                                  (let ((_%e259558259880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl259551259861%_))))
                                                    (let ((_%tl259560259885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259558259880%_)))
                                                          (_%hd259559259883%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259558259880%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd259559259883%_))
                                                          (let ((_%e259561259888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd259559259883%_))))
                    (let ((_%tl259563259893%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259561259888%_)))
                          (_%hd259562259891%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259561259888%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd259562259891%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd259562259891%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl259563259893%_))
                                  (let ((_%e259564259896%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl259563259893%_))))
                                    (let ((_%tl259566259901%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259564259896%_)))
                                          (_%hd259565259899%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259564259896%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl259566259901%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259560259885%_))
                                              (_%__match260595260596%_
                                               _%e259519259776%_
                                               _%hd259520259779%_
                                               _%tl259521259781%_
                                               _%e259522259784%_
                                               _%hd259523259787%_
                                               _%tl259524259789%_
                                               _%e259525259792%_
                                               _%hd259526259795%_
                                               _%tl259527259797%_
                                               _%e259528259800%_
                                               _%hd259529259803%_
                                               _%tl259530259805%_
                                               _%e259531259808%_
                                               _%hd259532259811%_
                                               _%tl259533259813%_
                                               _%e259534259816%_
                                               _%hd259535259819%_
                                               _%tl259536259821%_
                                               _%e259537259824%_
                                               _%hd259538259827%_
                                               _%tl259539259829%_
                                               _%e259540259832%_
                                               _%hd259541259835%_
                                               _%tl259542259837%_
                                               _%e259543259840%_
                                               _%hd259544259843%_
                                               _%tl259545259845%_
                                               _%e259546259848%_
                                               _%hd259547259851%_
                                               _%tl259548259853%_
                                               _%e259549259856%_
                                               _%hd259550259859%_
                                               _%tl259551259861%_
                                               _%e259552259864%_
                                               _%hd259553259867%_
                                               _%tl259554259869%_
                                               _%e259555259872%_
                                               _%hd259556259875%_
                                               _%tl259557259877%_
                                               _%e259558259880%_
                                               _%hd259559259883%_
                                               _%tl259560259885%_
                                               _%e259561259888%_
                                               _%hd259562259891%_
                                               _%tl259563259893%_
                                               _%e259564259896%_
                                               _%hd259565259899%_
                                               _%tl259566259901%_)
                                              (_%__kont260466260467%_))
                                          (_%__kont260466260467%_))))
                                  (_%__kont260466260467%_))
                              (_%__kont260466260467%_))
                          (_%__kont260466260467%_))))
                  (_%__kont260466260467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259551259861%_))
                                                      (if (let ((__tmp260818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp260818 'bind-method!))
                  (let ((_%g259567259730%_ _%hd259556259875%_)
                        (_%g259568259731%_ _%hd259547259851%_)
                        (_%g259569259732%_ _%hd259538259827%_)
                        (_%g259570259733%_ _%hd259529259803%_))
                    (_%__kont260464260465%_
                     _%g259567259730%_
                     _%g259568259731%_
                     _%g259569259732%_
                     _%g259570259733%_))
                  (_%__kont260466260467%_))
              (_%__kont260466260467%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont260466260467%_))))
                                      (_%__kont260466260467%_))
                                  (_%__kont260466260467%_))
                              (_%__kont260466260467%_))))
                      (_%__kont260466260467%_))))
              (_%__kont260466260467%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont260466260467%_))))
                                          (_%__kont260466260467%_))
                                      (_%__kont260466260467%_))
                                  (_%__kont260466260467%_))))
                          (_%__kont260466260467%_))))
                  (_%__kont260466260467%_))
              (_%__kont260466260467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont260466260467%_))
                                          (_%__kont260466260467%_))
                                      (_%__kont260466260467%_))))
                              (_%__kont260466260467%_))))
                      (_%__kont260466260467%_))
                  (_%__kont260466260467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont260466260467%_))
                                              (_%__kont260466260467%_))
                                          (_%__kont260466260467%_))))
                                  (_%__kont260466260467%_))))
                          (_%__kont260466260467%_))))
                  (_%__kont260466260467%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self259331%_ _%stx259332%_)
        (let* ((_%__stx260704260705%_ _%stx259332%_)
               (_%g259335259375%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx260704260705%_)))))
          (let ((_%__kont260706260707%_
                 (lambda (_%g259337259481%_ _%g259338259482%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g259338259482%_))
                               (cons _%g259337259481%_ '())))))
                (_%__kont260708260709%_
                 (lambda (_%g259360259404%_ _%g259361259405%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx260704260705%_))
                (let ((_%e259339259425%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx260704260705%_))))
                  (let ((_%tl259341259430%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259339259425%_)))
                        (_%hd259340259428%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259339259425%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl259341259430%_))
                        (let ((_%e259342259433%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl259341259430%_))))
                          (let ((_%tl259344259438%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259342259433%_)))
                                (_%hd259343259436%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259342259433%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd259343259436%_))
                                (let ((_%e259345259441%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd259343259436%_))))
                                  (let ((_%tl259347259446%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259345259441%_)))
                                        (_%hd259346259444%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259345259441%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd259346259444%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd259346259444%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259347259446%_))
                                                (let ((_%e259348259449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl259347259446%_))))
                                                  (let ((_%tl259350259454%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259348259449%_)))
                                                        (_%hd259349259452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259348259449%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259350259454%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl259344259438%_))
                                                            (let ((_%e259351259457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl259344259438%_))))
                      (let ((_%tl259353259462%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259351259457%_)))
                            (_%hd259352259460%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259351259457%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd259352259460%_))
                            (let ((_%e259354259465%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd259352259460%_))))
                              (let ((_%tl259356259470%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e259354259465%_)))
                                    (_%hd259355259468%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e259354259465%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd259355259468%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd259355259468%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259356259470%_))
                                            (let ((_%e259357259473%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl259356259470%_))))
                                              (let ((_%tl259359259478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259357259473%_)))
                                                    (_%hd259358259476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259357259473%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl259359259478%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259353259462%_))
                                                        (_%__kont260706260707%_
                                                         _%hd259358259476%_
                                                         _%hd259349259452%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259335259375%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259353259462%_))
                                                        (_%__kont260708260709%_
                                                         _%hd259352259460%_
                                                         _%hd259343259436%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259335259375%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl259353259462%_))
                                                (_%__kont260708260709%_
                                                 _%hd259352259460%_
                                                 _%hd259343259436%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259335259375%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259353259462%_))
                                            (_%__kont260708260709%_
                                             _%hd259352259460%_
                                             _%hd259343259436%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g259335259375%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259353259462%_))
                                        (_%__kont260708260709%_
                                         _%hd259352259460%_
                                         _%hd259343259436%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g259335259375%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl259353259462%_))
                                (_%__kont260708260709%_
                                 _%hd259352259460%_
                                 _%hd259343259436%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g259335259375%_))))))
                    (let () (declare (not safe)) (_%g259335259375%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl259344259438%_))
                    (let ((_%e259368259396%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl259344259438%_))))
                      (let ((_%tl259370259401%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259368259396%_)))
                            (_%hd259369259399%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259368259396%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl259370259401%_))
                            (_%__kont260708260709%_
                             _%hd259369259399%_
                             _%hd259343259436%_)
                            (let ()
                              (declare (not safe))
                              (_%g259335259375%_)))))
                    (let () (declare (not safe)) (_%g259335259375%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl259344259438%_))
                                                    (let ((_%e259368259396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl259344259438%_))))
                                                      (let ((_%tl259370259401%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e259368259396%_)))
                    (_%hd259369259399%_
                     (let () (declare (not safe)) (##car _%e259368259396%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl259370259401%_))
                    (_%__kont260708260709%_
                     _%hd259369259399%_
                     _%hd259343259436%_)
                    (let () (declare (not safe)) (_%g259335259375%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259335259375%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259344259438%_))
                                                (let ((_%e259368259396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl259344259438%_))))
                                                  (let ((_%tl259370259401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259368259396%_)))
                                                        (_%hd259369259399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259368259396%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259370259401%_))
                                                        (_%__kont260708260709%_
                                                         _%hd259369259399%_
                                                         _%hd259343259436%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259335259375%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259335259375%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259344259438%_))
                                            (let ((_%e259368259396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl259344259438%_))))
                                              (let ((_%tl259370259401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259368259396%_)))
                                                    (_%hd259369259399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259368259396%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl259370259401%_))
                                                    (_%__kont260708260709%_
                                                     _%hd259369259399%_
                                                     _%hd259343259436%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259335259375%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g259335259375%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl259344259438%_))
                                    (let ((_%e259368259396%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl259344259438%_))))
                                      (let ((_%tl259370259401%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259368259396%_)))
                                            (_%hd259369259399%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259368259396%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259370259401%_))
                                            (_%__kont260708260709%_
                                             _%hd259369259399%_
                                             _%hd259343259436%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g259335259375%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g259335259375%_))))))
                        (let () (declare (not safe)) (_%g259335259375%_)))))
                (let () (declare (not safe)) (_%g259335259375%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self259318%_)
        (let ((_%self259321%_ _%self259318%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259321%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self259092%_)
        (let* ((_%self259095%_ _%self259092%_)
               (_%self259104259120%_ _%self259095%_)
               (_%E259106259123%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self259104259120%_
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
               (_%K259107259138%_
                (lambda (_%methods259126%_
                         _%metaclass259127%_
                         _%system?259128%_
                         _%final?259129%_
                         _%struct?259130%_
                         _%constructor259131%_
                         _%fields259132%_
                         _%slots259133%_
                         _%precendence-list259134%_
                         _%super259135%_
                         _%id259136%_)
                  (cons '@class
                        (cons _%id259136%_
                              (cons _%super259135%_
                                    (cons _%precendence-list259134%_
                                          (cons _%slots259133%_
                                                (cons _%fields259132%_
                                                      (cons _%constructor259131%_
                                                            (cons _%struct?259130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?259129%_
                                (cons _%system?259128%_
                                      (cons _%metaclass259127%_
                                            (cons (if _%methods259126%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods259126%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e259108259141%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259104259120%_ '1 '#f '#f)))
               (_%id259144%_ _%e259108259141%_)
               (_%e259109259146%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259104259120%_ '2 '#f '#f)))
               (_%super259149%_ _%e259109259146%_)
               (_%e259110259151%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259104259120%_ '3 '#f '#f)))
               (_%precendence-list259154%_ _%e259110259151%_)
               (_%e259111259156%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259104259120%_ '4 '#f '#f)))
               (_%slots259159%_ _%e259111259156%_)
               (_%e259112259161%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259104259120%_ '5 '#f '#f)))
               (_%fields259164%_ _%e259112259161%_)
               (_%e259113259166%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259104259120%_ '6 '#f '#f)))
               (_%constructor259169%_ _%e259113259166%_)
               (_%e259114259171%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259104259120%_ '7 '#f '#f)))
               (_%struct?259174%_ _%e259114259171%_)
               (_%e259115259176%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259104259120%_ '8 '#f '#f)))
               (_%final?259179%_ _%e259115259176%_)
               (_%e259116259181%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259104259120%_ '9 '#f '#f)))
               (_%system?259184%_ _%e259116259181%_)
               (_%e259117259186%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self259104259120%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass259189%_ _%e259117259186%_)
               (_%e259118259191%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self259104259120%_
                   '11
                   '#f
                   '#f)))
               (_%methods259194%_ _%e259118259191%_))
          (_%K259107259138%_
           _%methods259194%_
           _%metaclass259189%_
           _%system?259184%_
           _%final?259179%_
           _%struct?259174%_
           _%constructor259169%_
           _%fields259164%_
           _%slots259159%_
           _%precendence-list259154%_
           _%super259149%_
           _%id259144%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self258957%_)
        (let ((_%self258960%_ _%self258957%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258960%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self258822%_)
        (let ((_%self258825%_ _%self258822%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258825%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self258687%_)
        (let ((_%self258690%_ _%self258687%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258690%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258690%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self258690%_
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
      (lambda (_%self258552%_)
        (let ((_%self258555%_ _%self258552%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258555%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258555%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self258555%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self258417%_)
        (let ((_%self258420%_ _%self258417%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258420%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258420%_
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
      (lambda (_%self258231%_)
        (let* ((_%self258234%_ _%self258231%_)
               (_%self258243258252%_ _%self258234%_)
               (_%E258245258255%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self258243258252%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K258246258274%_
                (lambda (_%dispatch258258%_
                         _%arity258259%_
                         _%signature258260%_)
                  (if _%signature258260%_
                      (let ((_%signature258262%_ _%signature258260%_))
                        (cons '@lambda
                              (cons _%arity258259%_
                                    (cons _%dispatch258258%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature258262%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature258262%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature258262%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature258262%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature258262%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity258259%_
                                  (cons _%dispatch258258%_ '()))))))
               (_%e258247258277%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258243258252%_ '1 '#f '#f)))
               (_%e258248258280%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258243258252%_ '2 '#f '#f)))
               (_%signature258283%_ _%e258248258280%_)
               (_%e258249258285%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258243258252%_ '3 '#f '#f)))
               (_%arity258288%_ _%e258249258285%_)
               (_%e258250258290%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258243258252%_ '4 '#f '#f)))
               (_%dispatch258293%_ _%e258250258290%_))
          (_%K258246258274%_
           _%dispatch258293%_
           _%arity258288%_
           _%signature258283%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self258091%_)
        (let ((_%self258094%_ _%self258091%_))
          (letrec ((_%clause-e258105%_
                    (lambda (_%clause258107%_)
                      (cdr (let ((__method260792
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause258107%_
                                     'typedecl))))
                             (if __method260792
                                 (let ()
                                   (declare (not safe))
                                   (__method260792 _%clause258107%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause258107%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e258105%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self258094%_
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
      (lambda (_%self257956%_)
        (let ((_%self257959%_ _%self257956%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257959%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self257959%_
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
      (lambda (_%self257821%_)
        (let ((_%self257824%_ _%self257821%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257824%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self257824%_
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
      (lambda (_%self257686%_)
        (let ((_%self257689%_ _%self257686%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257689%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
