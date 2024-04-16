(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1713044323)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp199146
                   (let ((__obj199140
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
                       (gxc#optimizer-info:::init! __obj199140))
                     __obj199140)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp199146)))))
    (define gxc#optimize!
      (lambda (_%ctx198749%_)
        (let ((__tmp199149
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx198749%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx198749%_)
                 (let ((__tmp199151
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp199150
                        (##structure-ref
                         _%ctx198749%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp199151 __tmp199150 '#t))
                 (let ((_%code198752%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx198749%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx198749%_
                    _%code198752%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp199148 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp199147 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp199149
           gxc#current-compile-mutators
           __tmp199148
           gxc#current-compile-local-type
           __tmp199147))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx198735%_)
        (letrec ((_%load-it!198737%_
                  (lambda (_%id198747%_)
                    (if (let ((__tmp199152
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp199152 _%id198747%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id198747%_)
                          (let ((__tmp199153
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp199153 _%id198747%_ '#t)))))))
          (let* ((_%modid198739%_
                  (##structure-ref
                   _%ctx198735%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str198741%_ (symbol->string _%modid198739%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str198741%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str198741%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198737%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198737%_
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
      (lambda (_%ctx198672%_)
        (letrec* ((_%deps198674%_
                   (let* ((_%imports198725%_
                           (##structure-ref
                            _%ctx198672%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e198727%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx198672%_))))
                     (if _%$e198727%_
                         ((lambda (_%g198729198731%_)
                            (cons _%g198729198731%_ _%imports198725%_))
                          _%$e198727%_)
                         _%imports198725%_))))
          (let _%lp198676%_ ((_%rest198678%_ _%deps198674%_))
            (let* ((_%rest198679198687%_ _%rest198678%_)
                   (_%else198681198695%_ (lambda () '#!void))
                   (_%K198683198713%_
                    (lambda (_%rest198698%_ _%hd198699%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd198699%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp199155
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp199154
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198699%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp199155 __tmp199154))
                                '#!void
                                (begin
                                  (let ((_%$e198702%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd198699%_))))
                                    (if _%$e198702%_
                                        ((lambda (_%pre198705%_)
                                           (_%lp198676%_
                                            (cons _%pre198705%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd198699%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e198702%_)
                                        (_%lp198676%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198699%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd198699%_)))
                            (_%lp198676%_ _%rest198698%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd198699%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp199157
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp199156
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd198699%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp199157 __tmp199156))
                                    '#!void
                                    (begin
                                      (_%lp198676%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198699%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd198699%_)))
                                (_%lp198676%_ _%rest198698%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd198699%_
                                     'gx#module-import::t))
                                  (_%lp198676%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198699%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest198698%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd198699%_
                                         'gx#module-export::t))
                                      (_%lp198676%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd198699%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest198698%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd198699%_
                                             'gx#import-set::t))
                                          (_%lp198676%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd198699%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest198698%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd198699%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest198679198687%_))
                  (let ((_%hd198684198716%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198679198687%_)))
                        (_%tl198685198718%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198679198687%_))))
                    (let* ((_%hd198721%_ _%hd198684198716%_)
                           (_%rest198723%_ _%tl198685198718%_))
                      (_%K198683198713%_ _%rest198723%_ _%hd198721%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx198652%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx198652%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx198652%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht198654%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id198656%_
                    (##structure-ref
                     _%ctx198652%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod198658%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht198654%_ _%id198656%_)))
                   (_%$e198661%_ _%mod198658%_))
              (if _%$e198661%_
                  _%$e198661%_
                  (let* ((_%mod198664%_
                          (gxc#optimizer-import-ssxi _%ctx198652%_))
                         (_%val198669%_
                          (let ((_%$e198666%_ _%mod198664%_))
                            (if _%$e198666%_ _%$e198666%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht198654%_ _%id198656%_ _%val198669%_))
                    _%val198669%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx198650%_)
        (if (##structure-ref _%ctx198650%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx198650%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id198627%_)
        (letrec ((_%catch-e198629%_
                  (lambda (_%exn198648%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn198648%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn198648%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id198627%_))))
                    '#f))
                 (_%import-e198630%_
                  (lambda ()
                    (let* ((_%str-id198633%_
                            (let ((__tmp199158
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id198627%_))))
                              (declare (not safe))
                              (##string-append __tmp199158 '".ssxi")))
                           (_%artefact-path198641%_
                            (let ((_%odir198634198636%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir198634198636%_
                                  (let ((_%odir198639%_ _%odir198634198636%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id198633%_
                                        '".ss"))
                                     _%odir198639%_))
                                  '#f)))
                           (_%library-path198643%_
                            (let ((__tmp199159
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id198633%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp199159)))
                           (_%ssxi-path198645%_
                            (if (and _%artefact-path198641%_
                                     (file-exists? _%artefact-path198641%_))
                                _%artefact-path198641%_
                                _%library-path198643%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path198645%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path198645%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e198629%_ _%import-e198630%_)))))
    (define gxc#optimize-source
      (lambda (_%stx198612%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx198612%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx198612%_))
        (let* ((_%stx198614%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx198612%_)))
               (_%stx198616%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx198614%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx198616%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx198616%_))
          (let _%fixpoint198619%_ ((_%current198621%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx198616%_))
            (let ((_%refined198623%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current198621%_ _%refined198623%_)
                  '#!void
                  (_%fixpoint198619%_ _%refined198623%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx198616%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx198616%_))
          (let ((_%stx198625%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx198616%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx198625%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp199161 (list gxc#::generate-runtime-empty::t))
            (__tmp199160 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp199161
         '()
         __tmp199160
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args198609%_
        (apply make-instance gxc#::generate-ssxi::t _%$args198609%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp199162
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
        (__make-promise __tmp199162)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx198601%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self198604%_
                (let ((__obj199142
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj199142))
               (__tmp199163
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self198604%_ _%stx198601%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp199163
           gxc#current-compile-method
           _%self198604%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self198561%_ _%stx198562%_)
        (let* ((_%g198564198574%_
                (lambda (_%g198565198571%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198565198571%_))))
               (_%g198563198598%_
                (lambda (_%g198565198577%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198565198577%_))
                      (let ((_%e198567198579%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198565198577%_))))
                        (let ((_%hd198568198582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198567198579%_)))
                              (_%tl198569198584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198567198579%_))))
                          ((lambda (_%L198587%_)
                             (let ((__tmp199166
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self198561%_
                                         _%stx198562%_))))
                                   (__tmp199164
                                    (let ((__tmp199165
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp199165 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp199166
                                gx#current-expander-phi
                                __tmp199164)))
                           _%tl198569198584%_)))
                      (_%g198564198574%_ _%g198565198577%_)))))
          (_%g198563198598%_ _%stx198562%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self198500%_ _%stx198501%_)
        (let* ((_%g198503198517%_
                (lambda (_%g198504198514%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198504198514%_))))
               (_%g198502198558%_
                (lambda (_%g198504198520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198504198520%_))
                      (let ((_%e198507198522%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198504198520%_))))
                        (let ((_%hd198508198525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198507198522%_)))
                              (_%tl198509198527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198507198522%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198509198527%_))
                              (let ((_%e198510198530%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198509198527%_))))
                                (let ((_%hd198511198533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198510198530%_)))
                                      (_%tl198512198535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198510198530%_))))
                                  ((lambda (_%L198538%_ _%L198539%_)
                                     (let* ((_%ctx198552%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L198539%_)))
                                            (_%code198554%_
                                             (##structure-ref
                                              _%ctx198552%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp199167
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198500%_
                                                  _%code198554%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp199167
                                        gx#current-expander-context
                                        _%ctx198552%_)))
                                   _%tl198512198535%_
                                   _%hd198511198533%_)))
                              (_%g198503198517%_ _%g198504198520%_))))
                      (_%g198503198517%_ _%g198504198520%_)))))
          (_%g198502198558%_ _%stx198501%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self198305%_ _%stx198306%_)
        (letrec ((_%generate-e198308%_
                  (lambda (_%id198485%_)
                    (let* ((_%sym198487%_
                            (if (let ((__tmp199168
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp199168))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id198485%_))
                                '#f))
                           (_%$e198489%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym198487%_))))
                      (if _%$e198489%_
                          ((lambda (_%klass198492%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym198487%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym198487%_
                                                     (cons (let ((__method199143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass198492%_ 'typedecl))))
                     (if __method199143
                         (let ()
                           (declare (not safe))
                           (__method199143 _%klass198492%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass198492%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym198487%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym198487%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e198489%_)
                          (let ((_%$e198494%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym198487%_))))
                            (if _%$e198494%_
                                ((lambda (_%type198497%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym198487%_
                                      '" "
                                      _%type198497%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type198497%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym198487%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym198487%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type198497%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym198487%_
                                                   (cons (let ((__method199144
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type198497%_ 'typedecl))))
                   (if __method199144
                       (let ()
                         (declare (not safe))
                         (__method199144 _%type198497%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type198497%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e198494%_)
                                '(begin))))))))
          (let* ((_%__stx198755198756%_ _%stx198306%_)
                 (_%g198311198349%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx198755198756%_)))))
            (let ((_%__kont198757198758%_
                   (lambda (_%L198467%_) (_%generate-e198308%_ _%L198467%_)))
                  (_%__kont198759198760%_
                   (lambda (_%L198402%_)
                     (let ((_%types198428%_
                            (map _%generate-e198308%_
                                 (let ((__tmp199169
                                        (lambda (_%g198420198423%_
                                                 _%g198421198425%_)
                                          (cons _%g198420198423%_
                                                _%g198421198425%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp199169 '() _%L198402%_)))))
                       (cons 'begin _%types198428%_)))))
              (let ((_%__match198810198811%_
                     (lambda (_%e198327198354%_
                              _%hd198328198357%_
                              _%tl198329198359%_
                              _%e198330198362%_
                              _%hd198331198365%_
                              _%tl198332198367%_
                              _%__splice198761198762%_
                              _%target198333198370%_
                              _%tl198335198372%_)
                       (letrec ((_%loop198336198375%_
                                 (lambda (_%hd198334198378%_
                                          _%id198340198380%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd198334198378%_))
                                       (let ((_%e198337198383%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd198334198378%_))))
                                         (let ((_%lp-tl198339198388%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e198337198383%_)))
                                               (_%lp-hd198338198386%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e198337198383%_))))
                                           (_%loop198336198375%_
                                            _%lp-tl198339198388%_
                                            (cons _%lp-hd198338198386%_
                                                  _%id198340198380%_))))
                                       (let ((_%id198341198391%_
                                              (reverse _%id198340198380%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl198332198367%_))
                                             (let ((_%e198342198394%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl198332198367%_))))
                                               (let ((_%tl198344198399%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e198342198394%_)))
                                                     (_%hd198343198397%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e198342198394%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl198344198399%_))
                                                     (_%__kont198759198760%_
                                                      _%id198341198391%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g198311198349%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g198311198349%_))))))))
                         (_%loop198336198375%_ _%target198333198370%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx198755198756%_))
                    (let ((_%e198314198435%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx198755198756%_))))
                      (let ((_%tl198316198440%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198314198435%_)))
                            (_%hd198315198438%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198314198435%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198316198440%_))
                            (let ((_%e198317198443%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl198316198440%_))))
                              (let ((_%tl198319198448%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198317198443%_)))
                                    (_%hd198318198446%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198317198443%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198318198446%_))
                                    (let ((_%e198320198451%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198318198446%_))))
                                      (let ((_%tl198322198456%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198320198451%_)))
                                            (_%hd198321198454%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198320198451%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198322198456%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198319198448%_))
                                                (let ((_%e198323198459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198319198448%_))))
                                                  (let ((_%tl198325198464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198323198459%_)))
                                                        (_%hd198324198462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198323198459%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198325198464%_))
                                                        (_%__kont198757198758%_
                                                         _%hd198321198454%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd198318198446%_))
                                                            (let ((_%__splice198761198762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd198318198446%_ '0))))
                      (let ((_%tl198335198372%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198761198762%_ '1)))
                            (_%target198333198370%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198761198762%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198335198372%_))
                            (_%__match198810198811%_
                             _%e198314198435%_
                             _%hd198315198438%_
                             _%tl198316198440%_
                             _%e198317198443%_
                             _%hd198318198446%_
                             _%tl198319198448%_
                             _%__splice198761198762%_
                             _%target198333198370%_
                             _%tl198335198372%_)
                            (let ()
                              (declare (not safe))
                              (_%g198311198349%_)))))
                    (let () (declare (not safe)) (_%g198311198349%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd198318198446%_))
                                                    (let ((_%__splice198761198762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd198318198446%_
                                                              '0))))
                                                      (let ((_%tl198335198372%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice198761198762%_ '1)))
                    (_%target198333198370%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice198761198762%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl198335198372%_))
                    (_%__match198810198811%_
                     _%e198314198435%_
                     _%hd198315198438%_
                     _%tl198316198440%_
                     _%e198317198443%_
                     _%hd198318198446%_
                     _%tl198319198448%_
                     _%__splice198761198762%_
                     _%target198333198370%_
                     _%tl198335198372%_)
                    (let () (declare (not safe)) (_%g198311198349%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198311198349%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd198318198446%_))
                                                (let ((_%__splice198761198762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd198318198446%_
                                                          '0))))
                                                  (let ((_%tl198335198372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198761198762%_
                                                            '1)))
                                                        (_%target198333198370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198761198762%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198335198372%_))
                                                        (_%__match198810198811%_
                                                         _%e198314198435%_
                                                         _%hd198315198438%_
                                                         _%tl198316198440%_
                                                         _%e198317198443%_
                                                         _%hd198318198446%_
                                                         _%tl198319198448%_
                                                         _%__splice198761198762%_
                                                         _%target198333198370%_
                                                         _%tl198335198372%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g198311198349%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198311198349%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd198318198446%_))
                                        (let ((_%__splice198761198762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd198318198446%_
                                                  '0))))
                                          (let ((_%tl198335198372%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198761198762%_
                                                    '1)))
                                                (_%target198333198370%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198761198762%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198335198372%_))
                                                (_%__match198810198811%_
                                                 _%e198314198435%_
                                                 _%hd198315198438%_
                                                 _%tl198316198440%_
                                                 _%e198317198443%_
                                                 _%hd198318198446%_
                                                 _%tl198319198448%_
                                                 _%__splice198761198762%_
                                                 _%target198333198370%_
                                                 _%tl198335198372%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198311198349%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198311198349%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g198311198349%_)))))
                    (let () (declare (not safe)) (_%g198311198349%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self197858%_ _%stx197859%_)
        (let* ((_%__stx198813198814%_ _%stx197859%_)
               (_%g197863197965%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198813198814%_)))))
          (let ((_%__kont198815198816%_
                 (lambda (_%L198255%_
                          _%L198256%_
                          _%L198257%_
                          _%L198258%_
                          _%L198259%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L198258%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L198257%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L198256%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L198255%_))
                                                 '())))))))
                (_%__kont198817198818%_
                 (lambda (_%L198081%_ _%L198082%_ _%L198083%_ _%L198084%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L198083%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L198082%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L198081%_))
                                           (cons '#f '())))))))
                (_%__kont198819198820%_ (lambda () '(begin))))
            (let ((_%__match198948198949%_
                   (lambda (_%e197870198127%_
                            _%hd197871198130%_
                            _%tl197872198132%_
                            _%e197873198135%_
                            _%hd197874198138%_
                            _%tl197875198140%_
                            _%e197876198143%_
                            _%hd197877198146%_
                            _%tl197878198148%_
                            _%e197879198151%_
                            _%hd197880198154%_
                            _%tl197881198156%_
                            _%e197882198159%_
                            _%hd197883198162%_
                            _%tl197884198164%_
                            _%e197885198167%_
                            _%hd197886198170%_
                            _%tl197887198172%_
                            _%e197888198175%_
                            _%hd197889198178%_
                            _%tl197890198180%_
                            _%e197891198183%_
                            _%hd197892198186%_
                            _%tl197893198188%_
                            _%e197894198191%_
                            _%hd197895198194%_
                            _%tl197896198196%_
                            _%e197897198199%_
                            _%hd197898198202%_
                            _%tl197899198204%_
                            _%e197900198207%_
                            _%hd197901198210%_
                            _%tl197902198212%_
                            _%e197903198215%_
                            _%hd197904198218%_
                            _%tl197905198220%_
                            _%e197906198223%_
                            _%hd197907198226%_
                            _%tl197908198228%_
                            _%e197909198231%_
                            _%hd197910198234%_
                            _%tl197911198236%_
                            _%e197912198239%_
                            _%hd197913198242%_
                            _%tl197914198244%_
                            _%e197915198247%_
                            _%hd197916198250%_
                            _%tl197917198252%_)
                     (let ((_%L198255%_ _%hd197916198250%_)
                           (_%L198256%_ _%hd197907198226%_)
                           (_%L198257%_ _%hd197898198202%_)
                           (_%L198258%_ _%hd197889198178%_)
                           (_%L198259%_ _%hd197880198154%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L198259%_
                              'bind-method!))
                           (_%__kont198815198816%_
                            _%L198255%_
                            _%L198256%_
                            _%L198257%_
                            _%L198258%_
                            _%L198259%_)
                           (_%__kont198819198820%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198813198814%_))
                  (let ((_%e197870198127%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198813198814%_))))
                    (let ((_%tl197872198132%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197870198127%_)))
                          (_%hd197871198130%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197870198127%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197872198132%_))
                          (let ((_%e197873198135%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197872198132%_))))
                            (let ((_%tl197875198140%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197873198135%_)))
                                  (_%hd197874198138%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197873198135%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197874198138%_))
                                  (let ((_%e197876198143%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197874198138%_))))
                                    (let ((_%tl197878198148%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197876198143%_)))
                                          (_%hd197877198146%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197876198143%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197877198146%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197877198146%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197878198148%_))
                                                  (let ((_%e197879198151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197878198148%_))))
                                                    (let ((_%tl197881198156%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197879198151%_)))
                                                          (_%hd197880198154%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197879198151%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197881198156%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl197875198140%_))
                      (let ((_%e197882198159%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197875198140%_))))
                        (let ((_%tl197884198164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197882198159%_)))
                              (_%hd197883198162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197882198159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197883198162%_))
                              (let ((_%e197885198167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd197883198162%_))))
                                (let ((_%tl197887198172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197885198167%_)))
                                      (_%hd197886198170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197885198167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197886198170%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd197886198170%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197887198172%_))
                                              (let ((_%e197888198175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197887198172%_))))
                                                (let ((_%tl197890198180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197888198175%_)))
                                                      (_%hd197889198178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197888198175%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197890198180%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197884198164%_))
                                                          (let ((_%e197891198183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197884198164%_))))
                    (let ((_%tl197893198188%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197891198183%_)))
                          (_%hd197892198186%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197891198183%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd197892198186%_))
                          (let ((_%e197894198191%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197892198186%_))))
                            (let ((_%tl197896198196%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197894198191%_)))
                                  (_%hd197895198194%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197894198191%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd197895198194%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd197895198194%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197896198196%_))
                                          (let ((_%e197897198199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197896198196%_))))
                                            (let ((_%tl197899198204%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197897198199%_)))
                                                  (_%hd197898198202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197897198199%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197899198204%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197893198188%_))
                                                      (let ((_%e197900198207%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197893198188%_))))
                (let ((_%tl197902198212%_
                       (let () (declare (not safe)) (##cdr _%e197900198207%_)))
                      (_%hd197901198210%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197900198207%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd197901198210%_))
                      (let ((_%e197903198215%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197901198210%_))))
                        (let ((_%tl197905198220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197903198215%_)))
                              (_%hd197904198218%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197903198215%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd197904198218%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd197904198218%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197905198220%_))
                                      (let ((_%e197906198223%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197905198220%_))))
                                        (let ((_%tl197908198228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197906198223%_)))
                                              (_%hd197907198226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197906198223%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197908198228%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197902198212%_))
                                                  (let ((_%e197909198231%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197902198212%_))))
                                                    (let ((_%tl197911198236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197909198231%_)))
                                                          (_%hd197910198234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197909198231%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197910198234%_))
                                                          (let ((_%e197912198239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197910198234%_))))
                    (let ((_%tl197914198244%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197912198239%_)))
                          (_%hd197913198242%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197912198239%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197913198242%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd197913198242%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197914198244%_))
                                  (let ((_%e197915198247%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197914198244%_))))
                                    (let ((_%tl197917198252%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197915198247%_)))
                                          (_%hd197916198250%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197915198247%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197917198252%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197911198236%_))
                                              (_%__match198948198949%_
                                               _%e197870198127%_
                                               _%hd197871198130%_
                                               _%tl197872198132%_
                                               _%e197873198135%_
                                               _%hd197874198138%_
                                               _%tl197875198140%_
                                               _%e197876198143%_
                                               _%hd197877198146%_
                                               _%tl197878198148%_
                                               _%e197879198151%_
                                               _%hd197880198154%_
                                               _%tl197881198156%_
                                               _%e197882198159%_
                                               _%hd197883198162%_
                                               _%tl197884198164%_
                                               _%e197885198167%_
                                               _%hd197886198170%_
                                               _%tl197887198172%_
                                               _%e197888198175%_
                                               _%hd197889198178%_
                                               _%tl197890198180%_
                                               _%e197891198183%_
                                               _%hd197892198186%_
                                               _%tl197893198188%_
                                               _%e197894198191%_
                                               _%hd197895198194%_
                                               _%tl197896198196%_
                                               _%e197897198199%_
                                               _%hd197898198202%_
                                               _%tl197899198204%_
                                               _%e197900198207%_
                                               _%hd197901198210%_
                                               _%tl197902198212%_
                                               _%e197903198215%_
                                               _%hd197904198218%_
                                               _%tl197905198220%_
                                               _%e197906198223%_
                                               _%hd197907198226%_
                                               _%tl197908198228%_
                                               _%e197909198231%_
                                               _%hd197910198234%_
                                               _%tl197911198236%_
                                               _%e197912198239%_
                                               _%hd197913198242%_
                                               _%tl197914198244%_
                                               _%e197915198247%_
                                               _%hd197916198250%_
                                               _%tl197917198252%_)
                                              (_%__kont198819198820%_))
                                          (_%__kont198819198820%_))))
                                  (_%__kont198819198820%_))
                              (_%__kont198819198820%_))
                          (_%__kont198819198820%_))))
                  (_%__kont198819198820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197902198212%_))
                                                      (if (let ((__tmp199170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp199170 'bind-method!))
                  (let ((_%L198081%_ _%hd197907198226%_)
                        (_%L198082%_ _%hd197898198202%_)
                        (_%L198083%_ _%hd197889198178%_)
                        (_%L198084%_ _%hd197880198154%_))
                    (_%__kont198817198818%_
                     _%L198081%_
                     _%L198082%_
                     _%L198083%_
                     _%L198084%_))
                  (_%__kont198819198820%_))
              (_%__kont198819198820%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198819198820%_))))
                                      (_%__kont198819198820%_))
                                  (_%__kont198819198820%_))
                              (_%__kont198819198820%_))))
                      (_%__kont198819198820%_))))
              (_%__kont198819198820%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198819198820%_))))
                                          (_%__kont198819198820%_))
                                      (_%__kont198819198820%_))
                                  (_%__kont198819198820%_))))
                          (_%__kont198819198820%_))))
                  (_%__kont198819198820%_))
              (_%__kont198819198820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198819198820%_))
                                          (_%__kont198819198820%_))
                                      (_%__kont198819198820%_))))
                              (_%__kont198819198820%_))))
                      (_%__kont198819198820%_))
                  (_%__kont198819198820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198819198820%_))
                                              (_%__kont198819198820%_))
                                          (_%__kont198819198820%_))))
                                  (_%__kont198819198820%_))))
                          (_%__kont198819198820%_))))
                  (_%__kont198819198820%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self197682%_ _%stx197683%_)
        (let* ((_%__stx199057199058%_ _%stx197683%_)
               (_%g197686197726%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx199057199058%_)))))
          (let ((_%__kont199059199060%_
                 (lambda (_%L197832%_ _%L197833%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197833%_))
                               (cons _%L197832%_ '())))))
                (_%__kont199061199062%_
                 (lambda (_%L197755%_ _%L197756%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx199057199058%_))
                (let ((_%e197690197776%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx199057199058%_))))
                  (let ((_%tl197692197781%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197690197776%_)))
                        (_%hd197691197779%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197690197776%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197692197781%_))
                        (let ((_%e197693197784%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197692197781%_))))
                          (let ((_%tl197695197789%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197693197784%_)))
                                (_%hd197694197787%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197693197784%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197694197787%_))
                                (let ((_%e197696197792%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197694197787%_))))
                                  (let ((_%tl197698197797%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197696197792%_)))
                                        (_%hd197697197795%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197696197792%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197697197795%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd197697197795%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197698197797%_))
                                                (let ((_%e197699197800%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197698197797%_))))
                                                  (let ((_%tl197701197805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197699197800%_)))
                                                        (_%hd197700197803%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197699197800%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197701197805%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197695197789%_))
                                                            (let ((_%e197702197808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197695197789%_))))
                      (let ((_%tl197704197813%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197702197808%_)))
                            (_%hd197703197811%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197702197808%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd197703197811%_))
                            (let ((_%e197705197816%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd197703197811%_))))
                              (let ((_%tl197707197821%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197705197816%_)))
                                    (_%hd197706197819%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197705197816%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd197706197819%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd197706197819%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197707197821%_))
                                            (let ((_%e197708197824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197707197821%_))))
                                              (let ((_%tl197710197829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197708197824%_)))
                                                    (_%hd197709197827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197708197824%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197710197829%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197704197813%_))
                                                        (_%__kont199059199060%_
                                                         _%hd197709197827%_
                                                         _%hd197700197803%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197686197726%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197704197813%_))
                                                        (_%__kont199061199062%_
                                                         _%hd197703197811%_
                                                         _%hd197694197787%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197686197726%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197704197813%_))
                                                (_%__kont199061199062%_
                                                 _%hd197703197811%_
                                                 _%hd197694197787%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197686197726%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197704197813%_))
                                            (_%__kont199061199062%_
                                             _%hd197703197811%_
                                             _%hd197694197787%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197686197726%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197704197813%_))
                                        (_%__kont199061199062%_
                                         _%hd197703197811%_
                                         _%hd197694197787%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g197686197726%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197704197813%_))
                                (_%__kont199061199062%_
                                 _%hd197703197811%_
                                 _%hd197694197787%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197686197726%_))))))
                    (let () (declare (not safe)) (_%g197686197726%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197695197789%_))
                    (let ((_%e197719197747%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197695197789%_))))
                      (let ((_%tl197721197752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197719197747%_)))
                            (_%hd197720197750%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197719197747%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197721197752%_))
                            (_%__kont199061199062%_
                             _%hd197720197750%_
                             _%hd197694197787%_)
                            (let ()
                              (declare (not safe))
                              (_%g197686197726%_)))))
                    (let () (declare (not safe)) (_%g197686197726%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197695197789%_))
                                                    (let ((_%e197719197747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197695197789%_))))
                                                      (let ((_%tl197721197752%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197719197747%_)))
                    (_%hd197720197750%_
                     (let () (declare (not safe)) (##car _%e197719197747%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197721197752%_))
                    (_%__kont199061199062%_
                     _%hd197720197750%_
                     _%hd197694197787%_)
                    (let () (declare (not safe)) (_%g197686197726%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197686197726%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197695197789%_))
                                                (let ((_%e197719197747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197695197789%_))))
                                                  (let ((_%tl197721197752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197719197747%_)))
                                                        (_%hd197720197750%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197719197747%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197721197752%_))
                                                        (_%__kont199061199062%_
                                                         _%hd197720197750%_
                                                         _%hd197694197787%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197686197726%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197686197726%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197695197789%_))
                                            (let ((_%e197719197747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197695197789%_))))
                                              (let ((_%tl197721197752%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197719197747%_)))
                                                    (_%hd197720197750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197719197747%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197721197752%_))
                                                    (_%__kont199061199062%_
                                                     _%hd197720197750%_
                                                     _%hd197694197787%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197686197726%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197686197726%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197695197789%_))
                                    (let ((_%e197719197747%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197695197789%_))))
                                      (let ((_%tl197721197752%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197719197747%_)))
                                            (_%hd197720197750%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197719197747%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197721197752%_))
                                            (_%__kont199061199062%_
                                             _%hd197720197750%_
                                             _%hd197694197787%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197686197726%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197686197726%_))))))
                        (let () (declare (not safe)) (_%g197686197726%_)))))
                (let () (declare (not safe)) (_%g197686197726%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self195876197667%_)
        (let* ((_%self197670%_ _%self195876197667%_)
               (_%self197672%_ _%self197670%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197672%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self195877197438%_)
        (let* ((_%self197441%_ _%self195877197438%_)
               (_%self197443%_ _%self197441%_)
               (_%self197452197468%_ _%self197443%_)
               (_%E197454197472%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self197452197468%_
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
               (_%K197455197487%_
                (lambda (_%methods197475%_
                         _%metaclass197476%_
                         _%system?197477%_
                         _%final?197478%_
                         _%struct?197479%_
                         _%constructor197480%_
                         _%fields197481%_
                         _%slots197482%_
                         _%precendence-list197483%_
                         _%super197484%_
                         _%id197485%_)
                  (cons '@class
                        (cons _%id197485%_
                              (cons _%super197484%_
                                    (cons _%precendence-list197483%_
                                          (cons _%slots197482%_
                                                (cons _%fields197481%_
                                                      (cons _%constructor197480%_
                                                            (cons _%struct?197479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?197478%_
                                (cons _%system?197477%_
                                      (cons _%metaclass197476%_
                                            (cons (if _%methods197475%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods197475%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e197456197490%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197452197468%_ '1 '#f '#f)))
               (_%id197493%_ _%e197456197490%_)
               (_%e197457197495%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197452197468%_ '2 '#f '#f)))
               (_%super197498%_ _%e197457197495%_)
               (_%e197458197500%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197452197468%_ '3 '#f '#f)))
               (_%precendence-list197503%_ _%e197458197500%_)
               (_%e197459197505%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197452197468%_ '4 '#f '#f)))
               (_%slots197508%_ _%e197459197505%_)
               (_%e197460197510%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197452197468%_ '5 '#f '#f)))
               (_%fields197513%_ _%e197460197510%_)
               (_%e197461197515%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197452197468%_ '6 '#f '#f)))
               (_%constructor197518%_ _%e197461197515%_)
               (_%e197462197520%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197452197468%_ '7 '#f '#f)))
               (_%struct?197523%_ _%e197462197520%_)
               (_%e197463197525%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197452197468%_ '8 '#f '#f)))
               (_%final?197528%_ _%e197463197525%_)
               (_%e197464197530%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197452197468%_ '9 '#f '#f)))
               (_%system?197533%_ _%e197464197530%_)
               (_%e197465197535%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self197452197468%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass197538%_ _%e197465197535%_)
               (_%e197466197540%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self197452197468%_
                   '11
                   '#f
                   '#f)))
               (_%methods197543%_ _%e197466197540%_))
          (_%K197455197487%_
           _%methods197543%_
           _%metaclass197538%_
           _%system?197533%_
           _%final?197528%_
           _%struct?197523%_
           _%constructor197518%_
           _%fields197513%_
           _%slots197508%_
           _%precendence-list197503%_
           _%super197498%_
           _%id197493%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self195878197301%_)
        (let* ((_%self197304%_ _%self195878197301%_)
               (_%self197306%_ _%self197304%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197306%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self195879197164%_)
        (let* ((_%self197167%_ _%self195879197164%_)
               (_%self197169%_ _%self197167%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197169%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self195880197027%_)
        (let* ((_%self197030%_ _%self195880197027%_)
               (_%self197032%_ _%self197030%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197032%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197032%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self197032%_
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
      (lambda (_%self195881196890%_)
        (let* ((_%self196893%_ _%self195881196890%_)
               (_%self196895%_ _%self196893%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196895%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196895%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self196895%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self195882196753%_)
        (let* ((_%self196756%_ _%self195882196753%_)
               (_%self196758%_ _%self196756%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196758%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196758%_
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
      (lambda (_%self195883196564%_)
        (let* ((_%self196567%_ _%self195883196564%_)
               (_%self196569%_ _%self196567%_)
               (_%self196578196587%_ _%self196569%_)
               (_%E196580196591%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self196578196587%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K196581196610%_
                (lambda (_%dispatch196594%_
                         _%arity196595%_
                         _%signature196596%_)
                  (if _%signature196596%_
                      (let ((_%signature196598%_ _%signature196596%_))
                        (cons '@lambda
                              (cons _%arity196595%_
                                    (cons _%dispatch196594%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature196598%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature196598%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature196598%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature196598%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature196598%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity196595%_
                                  (cons _%dispatch196594%_ '()))))))
               (_%e196582196613%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196578196587%_ '1 '#f '#f)))
               (_%e196583196616%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196578196587%_ '2 '#f '#f)))
               (_%signature196619%_ _%e196583196616%_)
               (_%e196584196621%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196578196587%_ '3 '#f '#f)))
               (_%arity196624%_ _%e196584196621%_)
               (_%e196585196626%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196578196587%_ '4 '#f '#f)))
               (_%dispatch196629%_ _%e196585196626%_))
          (_%K196581196610%_
           _%dispatch196629%_
           _%arity196624%_
           _%signature196619%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self195884196423%_)
        (let* ((_%self196426%_ _%self195884196423%_)
               (_%self196428%_ _%self196426%_))
          (letrec ((_%clause-e196438%_
                    (lambda (_%clause196440%_)
                      (cdr (let ((__method199145
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause196440%_
                                     'typedecl))))
                             (if __method199145
                                 (let ()
                                   (declare (not safe))
                                   (__method199145 _%clause196440%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause196440%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e196438%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self196428%_
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
      (lambda (_%self195885196286%_)
        (let* ((_%self196289%_ _%self195885196286%_)
               (_%self196291%_ _%self196289%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196291%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196291%_
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
      (lambda (_%self195886196149%_)
        (let* ((_%self196152%_ _%self195886196149%_)
               (_%self196154%_ _%self196152%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196154%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196154%_
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
      (lambda (_%self195887196012%_)
        (let* ((_%self196015%_ _%self195887196012%_)
               (_%self196017%_ _%self196015%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196017%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
