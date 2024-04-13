(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1713001415)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp199087
                   (let ((__obj199081
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
                       (gxc#optimizer-info:::init! __obj199081))
                     __obj199081)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp199087)))))
    (define gxc#optimize!
      (lambda (_%ctx198690%_)
        (let ((__tmp199090
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx198690%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx198690%_)
                 (let ((__tmp199092
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp199091
                        (##structure-ref
                         _%ctx198690%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp199092 __tmp199091 '#t))
                 (let ((_%code198693%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx198690%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx198690%_
                    _%code198693%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp199089 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp199088 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp199090
           gxc#current-compile-mutators
           __tmp199089
           gxc#current-compile-local-type
           __tmp199088))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx198676%_)
        (letrec ((_%load-it!198678%_
                  (lambda (_%id198688%_)
                    (if (let ((__tmp199093
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp199093 _%id198688%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id198688%_)
                          (let ((__tmp199094
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp199094 _%id198688%_ '#t)))))))
          (let* ((_%modid198680%_
                  (##structure-ref
                   _%ctx198676%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str198682%_ (symbol->string _%modid198680%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str198682%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str198682%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198678%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198678%_
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
      (lambda (_%ctx198613%_)
        (letrec* ((_%deps198615%_
                   (let* ((_%imports198666%_
                           (##structure-ref
                            _%ctx198613%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e198668%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx198613%_))))
                     (if _%$e198668%_
                         ((lambda (_%g198670198672%_)
                            (cons _%g198670198672%_ _%imports198666%_))
                          _%$e198668%_)
                         _%imports198666%_))))
          (let _%lp198617%_ ((_%rest198619%_ _%deps198615%_))
            (let* ((_%rest198620198628%_ _%rest198619%_)
                   (_%else198622198636%_ (lambda () '#!void))
                   (_%K198624198654%_
                    (lambda (_%rest198639%_ _%hd198640%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd198640%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp199096
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp199095
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198640%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp199096 __tmp199095))
                                '#!void
                                (begin
                                  (let ((_%$e198643%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd198640%_))))
                                    (if _%$e198643%_
                                        ((lambda (_%pre198646%_)
                                           (_%lp198617%_
                                            (cons _%pre198646%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd198640%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e198643%_)
                                        (_%lp198617%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198640%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd198640%_)))
                            (_%lp198617%_ _%rest198639%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd198640%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp199098
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp199097
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd198640%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp199098 __tmp199097))
                                    '#!void
                                    (begin
                                      (_%lp198617%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198640%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd198640%_)))
                                (_%lp198617%_ _%rest198639%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd198640%_
                                     'gx#module-import::t))
                                  (_%lp198617%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198640%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest198639%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd198640%_
                                         'gx#module-export::t))
                                      (_%lp198617%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd198640%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest198639%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd198640%_
                                             'gx#import-set::t))
                                          (_%lp198617%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd198640%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest198639%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd198640%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest198620198628%_))
                  (let ((_%hd198625198657%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198620198628%_)))
                        (_%tl198626198659%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198620198628%_))))
                    (let* ((_%hd198662%_ _%hd198625198657%_)
                           (_%rest198664%_ _%tl198626198659%_))
                      (_%K198624198654%_ _%rest198664%_ _%hd198662%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx198593%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx198593%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx198593%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht198595%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id198597%_
                    (##structure-ref
                     _%ctx198593%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod198599%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht198595%_ _%id198597%_)))
                   (_%$e198602%_ _%mod198599%_))
              (if _%$e198602%_
                  _%$e198602%_
                  (let* ((_%mod198605%_
                          (gxc#optimizer-import-ssxi _%ctx198593%_))
                         (_%val198610%_
                          (let ((_%$e198607%_ _%mod198605%_))
                            (if _%$e198607%_ _%$e198607%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht198595%_ _%id198597%_ _%val198610%_))
                    _%val198610%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx198591%_)
        (if (##structure-ref _%ctx198591%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx198591%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id198568%_)
        (letrec ((_%catch-e198570%_
                  (lambda (_%exn198589%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn198589%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn198589%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id198568%_))))
                    '#f))
                 (_%import-e198571%_
                  (lambda ()
                    (let* ((_%str-id198574%_
                            (let ((__tmp199099
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id198568%_))))
                              (declare (not safe))
                              (##string-append __tmp199099 '".ssxi")))
                           (_%artefact-path198582%_
                            (let ((_%odir198575198577%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir198575198577%_
                                  (let ((_%odir198580%_ _%odir198575198577%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id198574%_
                                        '".ss"))
                                     _%odir198580%_))
                                  '#f)))
                           (_%library-path198584%_
                            (let ((__tmp199100
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id198574%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp199100)))
                           (_%ssxi-path198586%_
                            (if (and _%artefact-path198582%_
                                     (file-exists? _%artefact-path198582%_))
                                _%artefact-path198582%_
                                _%library-path198584%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path198586%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path198586%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e198570%_ _%import-e198571%_)))))
    (define gxc#optimize-source
      (lambda (_%stx198553%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx198553%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx198553%_))
        (let* ((_%stx198555%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx198553%_)))
               (_%stx198557%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx198555%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx198557%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx198557%_))
          (let _%fixpoint198560%_ ((_%current198562%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx198557%_))
            (let ((_%refined198564%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current198562%_ _%refined198564%_)
                  '#!void
                  (_%fixpoint198560%_ _%refined198564%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx198557%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx198557%_))
          (let ((_%stx198566%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx198557%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx198566%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp199102 (list gxc#::generate-runtime-empty::t))
            (__tmp199101 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp199102
         '()
         __tmp199101
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args198550%_
        (apply make-instance gxc#::generate-ssxi::t _%$args198550%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp199103
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
        (__make-promise __tmp199103)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx198542%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self198545%_
                (let ((__obj199083
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj199083))
               (__tmp199104
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self198545%_ _%stx198542%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp199104
           gxc#current-compile-method
           _%self198545%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self198502%_ _%stx198503%_)
        (let* ((_%g198505198515%_
                (lambda (_%g198506198512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198506198512%_))))
               (_%g198504198539%_
                (lambda (_%g198506198518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198506198518%_))
                      (let ((_%e198508198520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198506198518%_))))
                        (let ((_%hd198509198523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198508198520%_)))
                              (_%tl198510198525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198508198520%_))))
                          ((lambda (_%L198528%_)
                             (let ((__tmp199107
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self198502%_
                                         _%stx198503%_))))
                                   (__tmp199105
                                    (let ((__tmp199106
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp199106 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp199107
                                gx#current-expander-phi
                                __tmp199105)))
                           _%tl198510198525%_)))
                      (_%g198505198515%_ _%g198506198518%_)))))
          (_%g198504198539%_ _%stx198503%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self198441%_ _%stx198442%_)
        (let* ((_%g198444198458%_
                (lambda (_%g198445198455%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198445198455%_))))
               (_%g198443198499%_
                (lambda (_%g198445198461%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198445198461%_))
                      (let ((_%e198448198463%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198445198461%_))))
                        (let ((_%hd198449198466%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198448198463%_)))
                              (_%tl198450198468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198448198463%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198450198468%_))
                              (let ((_%e198451198471%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198450198468%_))))
                                (let ((_%hd198452198474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198451198471%_)))
                                      (_%tl198453198476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198451198471%_))))
                                  ((lambda (_%L198479%_ _%L198480%_)
                                     (let* ((_%ctx198493%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L198480%_)))
                                            (_%code198495%_
                                             (##structure-ref
                                              _%ctx198493%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp199108
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198441%_
                                                  _%code198495%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp199108
                                        gx#current-expander-context
                                        _%ctx198493%_)))
                                   _%tl198453198476%_
                                   _%hd198452198474%_)))
                              (_%g198444198458%_ _%g198445198461%_))))
                      (_%g198444198458%_ _%g198445198461%_)))))
          (_%g198443198499%_ _%stx198442%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self198246%_ _%stx198247%_)
        (letrec ((_%generate-e198249%_
                  (lambda (_%id198426%_)
                    (let* ((_%sym198428%_
                            (if (let ((__tmp199109
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp199109))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id198426%_))
                                '#f))
                           (_%$e198430%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym198428%_))))
                      (if _%$e198430%_
                          ((lambda (_%klass198433%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym198428%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym198428%_
                                                     (cons (let ((__method199084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass198433%_ 'typedecl))))
                     (if __method199084
                         (let ()
                           (declare (not safe))
                           (__method199084 _%klass198433%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass198433%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym198428%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym198428%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e198430%_)
                          (let ((_%$e198435%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym198428%_))))
                            (if _%$e198435%_
                                ((lambda (_%type198438%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym198428%_
                                      '" "
                                      _%type198438%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type198438%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym198428%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym198428%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type198438%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym198428%_
                                                   (cons (let ((__method199085
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type198438%_ 'typedecl))))
                   (if __method199085
                       (let ()
                         (declare (not safe))
                         (__method199085 _%type198438%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type198438%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e198435%_)
                                '(begin))))))))
          (let* ((_%__stx198696198697%_ _%stx198247%_)
                 (_%g198252198290%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx198696198697%_)))))
            (let ((_%__kont198698198699%_
                   (lambda (_%L198408%_) (_%generate-e198249%_ _%L198408%_)))
                  (_%__kont198700198701%_
                   (lambda (_%L198343%_)
                     (let ((_%types198369%_
                            (map _%generate-e198249%_
                                 (let ((__tmp199110
                                        (lambda (_%g198361198364%_
                                                 _%g198362198366%_)
                                          (cons _%g198361198364%_
                                                _%g198362198366%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp199110 '() _%L198343%_)))))
                       (cons 'begin _%types198369%_)))))
              (let ((_%__match198751198752%_
                     (lambda (_%e198268198295%_
                              _%hd198269198298%_
                              _%tl198270198300%_
                              _%e198271198303%_
                              _%hd198272198306%_
                              _%tl198273198308%_
                              _%__splice198702198703%_
                              _%target198274198311%_
                              _%tl198276198313%_)
                       (letrec ((_%loop198277198316%_
                                 (lambda (_%hd198275198319%_
                                          _%id198281198321%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd198275198319%_))
                                       (let ((_%e198278198324%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd198275198319%_))))
                                         (let ((_%lp-tl198280198329%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e198278198324%_)))
                                               (_%lp-hd198279198327%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e198278198324%_))))
                                           (_%loop198277198316%_
                                            _%lp-tl198280198329%_
                                            (cons _%lp-hd198279198327%_
                                                  _%id198281198321%_))))
                                       (let ((_%id198282198332%_
                                              (reverse _%id198281198321%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl198273198308%_))
                                             (let ((_%e198283198335%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl198273198308%_))))
                                               (let ((_%tl198285198340%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e198283198335%_)))
                                                     (_%hd198284198338%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e198283198335%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl198285198340%_))
                                                     (_%__kont198700198701%_
                                                      _%id198282198332%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g198252198290%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g198252198290%_))))))))
                         (_%loop198277198316%_ _%target198274198311%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx198696198697%_))
                    (let ((_%e198255198376%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx198696198697%_))))
                      (let ((_%tl198257198381%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198255198376%_)))
                            (_%hd198256198379%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198255198376%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198257198381%_))
                            (let ((_%e198258198384%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl198257198381%_))))
                              (let ((_%tl198260198389%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198258198384%_)))
                                    (_%hd198259198387%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198258198384%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198259198387%_))
                                    (let ((_%e198261198392%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198259198387%_))))
                                      (let ((_%tl198263198397%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198261198392%_)))
                                            (_%hd198262198395%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198261198392%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198263198397%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198260198389%_))
                                                (let ((_%e198264198400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198260198389%_))))
                                                  (let ((_%tl198266198405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198264198400%_)))
                                                        (_%hd198265198403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198264198400%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198266198405%_))
                                                        (_%__kont198698198699%_
                                                         _%hd198262198395%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd198259198387%_))
                                                            (let ((_%__splice198702198703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd198259198387%_ '0))))
                      (let ((_%tl198276198313%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198702198703%_ '1)))
                            (_%target198274198311%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198702198703%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198276198313%_))
                            (_%__match198751198752%_
                             _%e198255198376%_
                             _%hd198256198379%_
                             _%tl198257198381%_
                             _%e198258198384%_
                             _%hd198259198387%_
                             _%tl198260198389%_
                             _%__splice198702198703%_
                             _%target198274198311%_
                             _%tl198276198313%_)
                            (let ()
                              (declare (not safe))
                              (_%g198252198290%_)))))
                    (let () (declare (not safe)) (_%g198252198290%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd198259198387%_))
                                                    (let ((_%__splice198702198703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd198259198387%_
                                                              '0))))
                                                      (let ((_%tl198276198313%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice198702198703%_ '1)))
                    (_%target198274198311%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice198702198703%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl198276198313%_))
                    (_%__match198751198752%_
                     _%e198255198376%_
                     _%hd198256198379%_
                     _%tl198257198381%_
                     _%e198258198384%_
                     _%hd198259198387%_
                     _%tl198260198389%_
                     _%__splice198702198703%_
                     _%target198274198311%_
                     _%tl198276198313%_)
                    (let () (declare (not safe)) (_%g198252198290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198252198290%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd198259198387%_))
                                                (let ((_%__splice198702198703%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd198259198387%_
                                                          '0))))
                                                  (let ((_%tl198276198313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198702198703%_
                                                            '1)))
                                                        (_%target198274198311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198702198703%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198276198313%_))
                                                        (_%__match198751198752%_
                                                         _%e198255198376%_
                                                         _%hd198256198379%_
                                                         _%tl198257198381%_
                                                         _%e198258198384%_
                                                         _%hd198259198387%_
                                                         _%tl198260198389%_
                                                         _%__splice198702198703%_
                                                         _%target198274198311%_
                                                         _%tl198276198313%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g198252198290%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198252198290%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd198259198387%_))
                                        (let ((_%__splice198702198703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd198259198387%_
                                                  '0))))
                                          (let ((_%tl198276198313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198702198703%_
                                                    '1)))
                                                (_%target198274198311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198702198703%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198276198313%_))
                                                (_%__match198751198752%_
                                                 _%e198255198376%_
                                                 _%hd198256198379%_
                                                 _%tl198257198381%_
                                                 _%e198258198384%_
                                                 _%hd198259198387%_
                                                 _%tl198260198389%_
                                                 _%__splice198702198703%_
                                                 _%target198274198311%_
                                                 _%tl198276198313%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198252198290%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198252198290%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g198252198290%_)))))
                    (let () (declare (not safe)) (_%g198252198290%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self197799%_ _%stx197800%_)
        (let* ((_%__stx198754198755%_ _%stx197800%_)
               (_%g197804197906%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198754198755%_)))))
          (let ((_%__kont198756198757%_
                 (lambda (_%L198196%_
                          _%L198197%_
                          _%L198198%_
                          _%L198199%_
                          _%L198200%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L198199%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L198198%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L198197%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L198196%_))
                                                 '())))))))
                (_%__kont198758198759%_
                 (lambda (_%L198022%_ _%L198023%_ _%L198024%_ _%L198025%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L198024%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L198023%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L198022%_))
                                           (cons '#f '())))))))
                (_%__kont198760198761%_ (lambda () '(begin))))
            (let ((_%__match198889198890%_
                   (lambda (_%e197811198068%_
                            _%hd197812198071%_
                            _%tl197813198073%_
                            _%e197814198076%_
                            _%hd197815198079%_
                            _%tl197816198081%_
                            _%e197817198084%_
                            _%hd197818198087%_
                            _%tl197819198089%_
                            _%e197820198092%_
                            _%hd197821198095%_
                            _%tl197822198097%_
                            _%e197823198100%_
                            _%hd197824198103%_
                            _%tl197825198105%_
                            _%e197826198108%_
                            _%hd197827198111%_
                            _%tl197828198113%_
                            _%e197829198116%_
                            _%hd197830198119%_
                            _%tl197831198121%_
                            _%e197832198124%_
                            _%hd197833198127%_
                            _%tl197834198129%_
                            _%e197835198132%_
                            _%hd197836198135%_
                            _%tl197837198137%_
                            _%e197838198140%_
                            _%hd197839198143%_
                            _%tl197840198145%_
                            _%e197841198148%_
                            _%hd197842198151%_
                            _%tl197843198153%_
                            _%e197844198156%_
                            _%hd197845198159%_
                            _%tl197846198161%_
                            _%e197847198164%_
                            _%hd197848198167%_
                            _%tl197849198169%_
                            _%e197850198172%_
                            _%hd197851198175%_
                            _%tl197852198177%_
                            _%e197853198180%_
                            _%hd197854198183%_
                            _%tl197855198185%_
                            _%e197856198188%_
                            _%hd197857198191%_
                            _%tl197858198193%_)
                     (let ((_%L198196%_ _%hd197857198191%_)
                           (_%L198197%_ _%hd197848198167%_)
                           (_%L198198%_ _%hd197839198143%_)
                           (_%L198199%_ _%hd197830198119%_)
                           (_%L198200%_ _%hd197821198095%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L198200%_
                              'bind-method!))
                           (_%__kont198756198757%_
                            _%L198196%_
                            _%L198197%_
                            _%L198198%_
                            _%L198199%_
                            _%L198200%_)
                           (_%__kont198760198761%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198754198755%_))
                  (let ((_%e197811198068%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198754198755%_))))
                    (let ((_%tl197813198073%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197811198068%_)))
                          (_%hd197812198071%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197811198068%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197813198073%_))
                          (let ((_%e197814198076%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197813198073%_))))
                            (let ((_%tl197816198081%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197814198076%_)))
                                  (_%hd197815198079%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197814198076%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197815198079%_))
                                  (let ((_%e197817198084%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197815198079%_))))
                                    (let ((_%tl197819198089%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197817198084%_)))
                                          (_%hd197818198087%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197817198084%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197818198087%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197818198087%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197819198089%_))
                                                  (let ((_%e197820198092%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197819198089%_))))
                                                    (let ((_%tl197822198097%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197820198092%_)))
                                                          (_%hd197821198095%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197820198092%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197822198097%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl197816198081%_))
                      (let ((_%e197823198100%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197816198081%_))))
                        (let ((_%tl197825198105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197823198100%_)))
                              (_%hd197824198103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197823198100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197824198103%_))
                              (let ((_%e197826198108%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd197824198103%_))))
                                (let ((_%tl197828198113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197826198108%_)))
                                      (_%hd197827198111%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197826198108%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197827198111%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd197827198111%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197828198113%_))
                                              (let ((_%e197829198116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197828198113%_))))
                                                (let ((_%tl197831198121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197829198116%_)))
                                                      (_%hd197830198119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197829198116%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197831198121%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197825198105%_))
                                                          (let ((_%e197832198124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197825198105%_))))
                    (let ((_%tl197834198129%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197832198124%_)))
                          (_%hd197833198127%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197832198124%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd197833198127%_))
                          (let ((_%e197835198132%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197833198127%_))))
                            (let ((_%tl197837198137%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197835198132%_)))
                                  (_%hd197836198135%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197835198132%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd197836198135%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd197836198135%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197837198137%_))
                                          (let ((_%e197838198140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197837198137%_))))
                                            (let ((_%tl197840198145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197838198140%_)))
                                                  (_%hd197839198143%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197838198140%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197840198145%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197834198129%_))
                                                      (let ((_%e197841198148%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197834198129%_))))
                (let ((_%tl197843198153%_
                       (let () (declare (not safe)) (##cdr _%e197841198148%_)))
                      (_%hd197842198151%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197841198148%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd197842198151%_))
                      (let ((_%e197844198156%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197842198151%_))))
                        (let ((_%tl197846198161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197844198156%_)))
                              (_%hd197845198159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197844198156%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd197845198159%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd197845198159%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197846198161%_))
                                      (let ((_%e197847198164%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197846198161%_))))
                                        (let ((_%tl197849198169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197847198164%_)))
                                              (_%hd197848198167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197847198164%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197849198169%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197843198153%_))
                                                  (let ((_%e197850198172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197843198153%_))))
                                                    (let ((_%tl197852198177%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197850198172%_)))
                                                          (_%hd197851198175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197850198172%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197851198175%_))
                                                          (let ((_%e197853198180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197851198175%_))))
                    (let ((_%tl197855198185%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197853198180%_)))
                          (_%hd197854198183%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197853198180%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197854198183%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd197854198183%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197855198185%_))
                                  (let ((_%e197856198188%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197855198185%_))))
                                    (let ((_%tl197858198193%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197856198188%_)))
                                          (_%hd197857198191%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197856198188%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197858198193%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197852198177%_))
                                              (_%__match198889198890%_
                                               _%e197811198068%_
                                               _%hd197812198071%_
                                               _%tl197813198073%_
                                               _%e197814198076%_
                                               _%hd197815198079%_
                                               _%tl197816198081%_
                                               _%e197817198084%_
                                               _%hd197818198087%_
                                               _%tl197819198089%_
                                               _%e197820198092%_
                                               _%hd197821198095%_
                                               _%tl197822198097%_
                                               _%e197823198100%_
                                               _%hd197824198103%_
                                               _%tl197825198105%_
                                               _%e197826198108%_
                                               _%hd197827198111%_
                                               _%tl197828198113%_
                                               _%e197829198116%_
                                               _%hd197830198119%_
                                               _%tl197831198121%_
                                               _%e197832198124%_
                                               _%hd197833198127%_
                                               _%tl197834198129%_
                                               _%e197835198132%_
                                               _%hd197836198135%_
                                               _%tl197837198137%_
                                               _%e197838198140%_
                                               _%hd197839198143%_
                                               _%tl197840198145%_
                                               _%e197841198148%_
                                               _%hd197842198151%_
                                               _%tl197843198153%_
                                               _%e197844198156%_
                                               _%hd197845198159%_
                                               _%tl197846198161%_
                                               _%e197847198164%_
                                               _%hd197848198167%_
                                               _%tl197849198169%_
                                               _%e197850198172%_
                                               _%hd197851198175%_
                                               _%tl197852198177%_
                                               _%e197853198180%_
                                               _%hd197854198183%_
                                               _%tl197855198185%_
                                               _%e197856198188%_
                                               _%hd197857198191%_
                                               _%tl197858198193%_)
                                              (_%__kont198760198761%_))
                                          (_%__kont198760198761%_))))
                                  (_%__kont198760198761%_))
                              (_%__kont198760198761%_))
                          (_%__kont198760198761%_))))
                  (_%__kont198760198761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197843198153%_))
                                                      (if (let ((__tmp199111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp199111 'bind-method!))
                  (let ((_%L198022%_ _%hd197848198167%_)
                        (_%L198023%_ _%hd197839198143%_)
                        (_%L198024%_ _%hd197830198119%_)
                        (_%L198025%_ _%hd197821198095%_))
                    (_%__kont198758198759%_
                     _%L198022%_
                     _%L198023%_
                     _%L198024%_
                     _%L198025%_))
                  (_%__kont198760198761%_))
              (_%__kont198760198761%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198760198761%_))))
                                      (_%__kont198760198761%_))
                                  (_%__kont198760198761%_))
                              (_%__kont198760198761%_))))
                      (_%__kont198760198761%_))))
              (_%__kont198760198761%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198760198761%_))))
                                          (_%__kont198760198761%_))
                                      (_%__kont198760198761%_))
                                  (_%__kont198760198761%_))))
                          (_%__kont198760198761%_))))
                  (_%__kont198760198761%_))
              (_%__kont198760198761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198760198761%_))
                                          (_%__kont198760198761%_))
                                      (_%__kont198760198761%_))))
                              (_%__kont198760198761%_))))
                      (_%__kont198760198761%_))
                  (_%__kont198760198761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198760198761%_))
                                              (_%__kont198760198761%_))
                                          (_%__kont198760198761%_))))
                                  (_%__kont198760198761%_))))
                          (_%__kont198760198761%_))))
                  (_%__kont198760198761%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self197623%_ _%stx197624%_)
        (let* ((_%__stx198998198999%_ _%stx197624%_)
               (_%g197627197667%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198998198999%_)))))
          (let ((_%__kont199000199001%_
                 (lambda (_%L197773%_ _%L197774%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197774%_))
                               (cons _%L197773%_ '())))))
                (_%__kont199002199003%_
                 (lambda (_%L197696%_ _%L197697%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx198998198999%_))
                (let ((_%e197631197717%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx198998198999%_))))
                  (let ((_%tl197633197722%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197631197717%_)))
                        (_%hd197632197720%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197631197717%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197633197722%_))
                        (let ((_%e197634197725%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197633197722%_))))
                          (let ((_%tl197636197730%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197634197725%_)))
                                (_%hd197635197728%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197634197725%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197635197728%_))
                                (let ((_%e197637197733%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197635197728%_))))
                                  (let ((_%tl197639197738%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197637197733%_)))
                                        (_%hd197638197736%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197637197733%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197638197736%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd197638197736%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197639197738%_))
                                                (let ((_%e197640197741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197639197738%_))))
                                                  (let ((_%tl197642197746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197640197741%_)))
                                                        (_%hd197641197744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197640197741%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197642197746%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197636197730%_))
                                                            (let ((_%e197643197749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197636197730%_))))
                      (let ((_%tl197645197754%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197643197749%_)))
                            (_%hd197644197752%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197643197749%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd197644197752%_))
                            (let ((_%e197646197757%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd197644197752%_))))
                              (let ((_%tl197648197762%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197646197757%_)))
                                    (_%hd197647197760%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197646197757%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd197647197760%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd197647197760%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197648197762%_))
                                            (let ((_%e197649197765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197648197762%_))))
                                              (let ((_%tl197651197770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197649197765%_)))
                                                    (_%hd197650197768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197649197765%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197651197770%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197645197754%_))
                                                        (_%__kont199000199001%_
                                                         _%hd197650197768%_
                                                         _%hd197641197744%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197627197667%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197645197754%_))
                                                        (_%__kont199002199003%_
                                                         _%hd197644197752%_
                                                         _%hd197635197728%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197627197667%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197645197754%_))
                                                (_%__kont199002199003%_
                                                 _%hd197644197752%_
                                                 _%hd197635197728%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197627197667%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197645197754%_))
                                            (_%__kont199002199003%_
                                             _%hd197644197752%_
                                             _%hd197635197728%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197627197667%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197645197754%_))
                                        (_%__kont199002199003%_
                                         _%hd197644197752%_
                                         _%hd197635197728%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g197627197667%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197645197754%_))
                                (_%__kont199002199003%_
                                 _%hd197644197752%_
                                 _%hd197635197728%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197627197667%_))))))
                    (let () (declare (not safe)) (_%g197627197667%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197636197730%_))
                    (let ((_%e197660197688%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197636197730%_))))
                      (let ((_%tl197662197693%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197660197688%_)))
                            (_%hd197661197691%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197660197688%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197662197693%_))
                            (_%__kont199002199003%_
                             _%hd197661197691%_
                             _%hd197635197728%_)
                            (let ()
                              (declare (not safe))
                              (_%g197627197667%_)))))
                    (let () (declare (not safe)) (_%g197627197667%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197636197730%_))
                                                    (let ((_%e197660197688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197636197730%_))))
                                                      (let ((_%tl197662197693%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197660197688%_)))
                    (_%hd197661197691%_
                     (let () (declare (not safe)) (##car _%e197660197688%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197662197693%_))
                    (_%__kont199002199003%_
                     _%hd197661197691%_
                     _%hd197635197728%_)
                    (let () (declare (not safe)) (_%g197627197667%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197627197667%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197636197730%_))
                                                (let ((_%e197660197688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197636197730%_))))
                                                  (let ((_%tl197662197693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197660197688%_)))
                                                        (_%hd197661197691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197660197688%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197662197693%_))
                                                        (_%__kont199002199003%_
                                                         _%hd197661197691%_
                                                         _%hd197635197728%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197627197667%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197627197667%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197636197730%_))
                                            (let ((_%e197660197688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197636197730%_))))
                                              (let ((_%tl197662197693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197660197688%_)))
                                                    (_%hd197661197691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197660197688%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197662197693%_))
                                                    (_%__kont199002199003%_
                                                     _%hd197661197691%_
                                                     _%hd197635197728%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197627197667%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197627197667%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197636197730%_))
                                    (let ((_%e197660197688%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197636197730%_))))
                                      (let ((_%tl197662197693%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197660197688%_)))
                                            (_%hd197661197691%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197660197688%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197662197693%_))
                                            (_%__kont199002199003%_
                                             _%hd197661197691%_
                                             _%hd197635197728%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197627197667%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197627197667%_))))))
                        (let () (declare (not safe)) (_%g197627197667%_)))))
                (let () (declare (not safe)) (_%g197627197667%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self195817197608%_)
        (let* ((_%self197611%_ _%self195817197608%_)
               (_%self197613%_ _%self197611%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197613%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self195818197379%_)
        (let* ((_%self197382%_ _%self195818197379%_)
               (_%self197384%_ _%self197382%_)
               (_%self197393197409%_ _%self197384%_)
               (_%E197395197413%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self197393197409%_
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
               (_%K197396197428%_
                (lambda (_%methods197416%_
                         _%metaclass197417%_
                         _%system?197418%_
                         _%final?197419%_
                         _%struct?197420%_
                         _%constructor197421%_
                         _%fields197422%_
                         _%slots197423%_
                         _%precendence-list197424%_
                         _%super197425%_
                         _%id197426%_)
                  (cons '@class
                        (cons _%id197426%_
                              (cons _%super197425%_
                                    (cons _%precendence-list197424%_
                                          (cons _%slots197423%_
                                                (cons _%fields197422%_
                                                      (cons _%constructor197421%_
                                                            (cons _%struct?197420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?197419%_
                                (cons _%system?197418%_
                                      (cons _%metaclass197417%_
                                            (cons (if _%methods197416%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods197416%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e197397197431%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197393197409%_ '1 '#f '#f)))
               (_%id197434%_ _%e197397197431%_)
               (_%e197398197436%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197393197409%_ '2 '#f '#f)))
               (_%super197439%_ _%e197398197436%_)
               (_%e197399197441%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197393197409%_ '3 '#f '#f)))
               (_%precendence-list197444%_ _%e197399197441%_)
               (_%e197400197446%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197393197409%_ '4 '#f '#f)))
               (_%slots197449%_ _%e197400197446%_)
               (_%e197401197451%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197393197409%_ '5 '#f '#f)))
               (_%fields197454%_ _%e197401197451%_)
               (_%e197402197456%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197393197409%_ '6 '#f '#f)))
               (_%constructor197459%_ _%e197402197456%_)
               (_%e197403197461%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197393197409%_ '7 '#f '#f)))
               (_%struct?197464%_ _%e197403197461%_)
               (_%e197404197466%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197393197409%_ '8 '#f '#f)))
               (_%final?197469%_ _%e197404197466%_)
               (_%e197405197471%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197393197409%_ '9 '#f '#f)))
               (_%system?197474%_ _%e197405197471%_)
               (_%e197406197476%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self197393197409%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass197479%_ _%e197406197476%_)
               (_%e197407197481%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self197393197409%_
                   '11
                   '#f
                   '#f)))
               (_%methods197484%_ _%e197407197481%_))
          (_%K197396197428%_
           _%methods197484%_
           _%metaclass197479%_
           _%system?197474%_
           _%final?197469%_
           _%struct?197464%_
           _%constructor197459%_
           _%fields197454%_
           _%slots197449%_
           _%precendence-list197444%_
           _%super197439%_
           _%id197434%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self195819197242%_)
        (let* ((_%self197245%_ _%self195819197242%_)
               (_%self197247%_ _%self197245%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197247%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self195820197105%_)
        (let* ((_%self197108%_ _%self195820197105%_)
               (_%self197110%_ _%self197108%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197110%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self195821196968%_)
        (let* ((_%self196971%_ _%self195821196968%_)
               (_%self196973%_ _%self196971%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196973%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196973%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self196973%_
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
      (lambda (_%self195822196831%_)
        (let* ((_%self196834%_ _%self195822196831%_)
               (_%self196836%_ _%self196834%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196836%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196836%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self196836%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self195823196694%_)
        (let* ((_%self196697%_ _%self195823196694%_)
               (_%self196699%_ _%self196697%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196699%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196699%_
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
      (lambda (_%self195824196505%_)
        (let* ((_%self196508%_ _%self195824196505%_)
               (_%self196510%_ _%self196508%_)
               (_%self196519196528%_ _%self196510%_)
               (_%E196521196532%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self196519196528%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K196522196551%_
                (lambda (_%dispatch196535%_
                         _%arity196536%_
                         _%signature196537%_)
                  (if _%signature196537%_
                      (let ((_%signature196539%_ _%signature196537%_))
                        (cons '@lambda
                              (cons _%arity196536%_
                                    (cons _%dispatch196535%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature196539%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature196539%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature196539%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature196539%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature196539%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity196536%_
                                  (cons _%dispatch196535%_ '()))))))
               (_%e196523196554%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196519196528%_ '1 '#f '#f)))
               (_%e196524196557%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196519196528%_ '2 '#f '#f)))
               (_%signature196560%_ _%e196524196557%_)
               (_%e196525196562%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196519196528%_ '3 '#f '#f)))
               (_%arity196565%_ _%e196525196562%_)
               (_%e196526196567%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196519196528%_ '4 '#f '#f)))
               (_%dispatch196570%_ _%e196526196567%_))
          (_%K196522196551%_
           _%dispatch196570%_
           _%arity196565%_
           _%signature196560%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self195825196364%_)
        (let* ((_%self196367%_ _%self195825196364%_)
               (_%self196369%_ _%self196367%_))
          (letrec ((_%clause-e196379%_
                    (lambda (_%clause196381%_)
                      (cdr (let ((__method199086
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause196381%_
                                     'typedecl))))
                             (if __method199086
                                 (let ()
                                   (declare (not safe))
                                   (__method199086 _%clause196381%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause196381%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e196379%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self196369%_
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
      (lambda (_%self195826196227%_)
        (let* ((_%self196230%_ _%self195826196227%_)
               (_%self196232%_ _%self196230%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196232%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196232%_
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
      (lambda (_%self195827196090%_)
        (let* ((_%self196093%_ _%self195827196090%_)
               (_%self196095%_ _%self196093%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196095%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196095%_
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
      (lambda (_%self195828195953%_)
        (let* ((_%self195956%_ _%self195828195953%_)
               (_%self195958%_ _%self195956%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195958%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
