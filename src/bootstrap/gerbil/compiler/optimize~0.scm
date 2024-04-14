(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1713453207)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp199420
                   (let ((__obj199414
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
                       (gxc#optimizer-info:::init! __obj199414))
                     __obj199414)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp199420)))))
    (define gxc#optimize!
      (lambda (_%ctx199023%_)
        (let ((__tmp199423
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx199023%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx199023%_)
                 (let ((__tmp199425
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp199424
                        (##structure-ref
                         _%ctx199023%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp199425 __tmp199424 '#t))
                 (let ((_%code199026%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx199023%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx199023%_
                    _%code199026%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp199422 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp199421 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp199423
           gxc#current-compile-mutators
           __tmp199422
           gxc#current-compile-local-type
           __tmp199421))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx199009%_)
        (letrec ((_%load-it!199011%_
                  (lambda (_%id199021%_)
                    (if (let ((__tmp199426
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp199426 _%id199021%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id199021%_)
                          (let ((__tmp199427
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp199427 _%id199021%_ '#t)))))))
          (let* ((_%modid199013%_
                  (##structure-ref
                   _%ctx199009%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str199015%_ (symbol->string _%modid199013%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str199015%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str199015%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!199011%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!199011%_
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
      (lambda (_%ctx198946%_)
        (letrec* ((_%deps198948%_
                   (let* ((_%imports198999%_
                           (##structure-ref
                            _%ctx198946%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e199001%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx198946%_))))
                     (if _%$e199001%_
                         ((lambda (_%g199003199005%_)
                            (cons _%g199003199005%_ _%imports198999%_))
                          _%$e199001%_)
                         _%imports198999%_))))
          (let _%lp198950%_ ((_%rest198952%_ _%deps198948%_))
            (let* ((_%rest198953198961%_ _%rest198952%_)
                   (_%else198955198969%_ (lambda () '#!void))
                   (_%K198957198987%_
                    (lambda (_%rest198972%_ _%hd198973%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd198973%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp199429
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp199428
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198973%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp199429 __tmp199428))
                                '#!void
                                (begin
                                  (let ((_%$e198976%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd198973%_))))
                                    (if _%$e198976%_
                                        ((lambda (_%pre198979%_)
                                           (_%lp198950%_
                                            (cons _%pre198979%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd198973%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e198976%_)
                                        (_%lp198950%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198973%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd198973%_)))
                            (_%lp198950%_ _%rest198972%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd198973%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp199431
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp199430
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd198973%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp199431 __tmp199430))
                                    '#!void
                                    (begin
                                      (_%lp198950%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198973%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd198973%_)))
                                (_%lp198950%_ _%rest198972%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd198973%_
                                     'gx#module-import::t))
                                  (_%lp198950%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198973%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest198972%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd198973%_
                                         'gx#module-export::t))
                                      (_%lp198950%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd198973%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest198972%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd198973%_
                                             'gx#import-set::t))
                                          (_%lp198950%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd198973%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest198972%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd198973%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest198953198961%_))
                  (let ((_%hd198958198990%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198953198961%_)))
                        (_%tl198959198992%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198953198961%_))))
                    (let* ((_%hd198995%_ _%hd198958198990%_)
                           (_%rest198997%_ _%tl198959198992%_))
                      (_%K198957198987%_ _%rest198997%_ _%hd198995%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx198926%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx198926%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx198926%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht198928%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id198930%_
                    (##structure-ref
                     _%ctx198926%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod198932%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht198928%_ _%id198930%_)))
                   (_%$e198935%_ _%mod198932%_))
              (if _%$e198935%_
                  _%$e198935%_
                  (let* ((_%mod198938%_
                          (gxc#optimizer-import-ssxi _%ctx198926%_))
                         (_%val198943%_
                          (let ((_%$e198940%_ _%mod198938%_))
                            (if _%$e198940%_ _%$e198940%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht198928%_ _%id198930%_ _%val198943%_))
                    _%val198943%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx198924%_)
        (if (##structure-ref _%ctx198924%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx198924%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id198901%_)
        (letrec ((_%catch-e198903%_
                  (lambda (_%exn198922%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn198922%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn198922%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id198901%_))))
                    '#f))
                 (_%import-e198904%_
                  (lambda ()
                    (let* ((_%str-id198907%_
                            (let ((__tmp199432
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id198901%_))))
                              (declare (not safe))
                              (##string-append __tmp199432 '".ssxi")))
                           (_%artefact-path198915%_
                            (let ((_%odir198908198910%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir198908198910%_
                                  (let ((_%odir198913%_ _%odir198908198910%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id198907%_
                                        '".ss"))
                                     _%odir198913%_))
                                  '#f)))
                           (_%library-path198917%_
                            (let ((__tmp199433
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id198907%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp199433)))
                           (_%ssxi-path198919%_
                            (if (and _%artefact-path198915%_
                                     (file-exists? _%artefact-path198915%_))
                                _%artefact-path198915%_
                                _%library-path198917%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path198919%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path198919%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e198903%_ _%import-e198904%_)))))
    (define gxc#optimize-source
      (lambda (_%stx198886%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx198886%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx198886%_))
        (let* ((_%stx198888%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx198886%_)))
               (_%stx198890%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx198888%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx198890%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx198890%_))
          (let _%fixpoint198893%_ ((_%current198895%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx198890%_))
            (let ((_%refined198897%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current198895%_ _%refined198897%_)
                  '#!void
                  (_%fixpoint198893%_ _%refined198897%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx198890%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx198890%_))
          (let ((_%stx198899%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx198890%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx198899%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp199435 (list gxc#::generate-runtime-empty::t))
            (__tmp199434 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp199435
         '()
         __tmp199434
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args198883%_
        (apply make-instance gxc#::generate-ssxi::t _%$args198883%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp199436
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
        (__make-promise __tmp199436)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx198875%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self198878%_
                (let ((__obj199416
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj199416))
               (__tmp199437
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self198878%_ _%stx198875%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp199437
           gxc#current-compile-method
           _%self198878%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self198835%_ _%stx198836%_)
        (let* ((_%g198838198848%_
                (lambda (_%g198839198845%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198839198845%_))))
               (_%g198837198872%_
                (lambda (_%g198839198851%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198839198851%_))
                      (let ((_%e198841198853%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198839198851%_))))
                        (let ((_%hd198842198856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198841198853%_)))
                              (_%tl198843198858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198841198853%_))))
                          ((lambda (_%L198861%_)
                             (let ((__tmp199440
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self198835%_
                                         _%stx198836%_))))
                                   (__tmp199438
                                    (let ((__tmp199439
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp199439 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp199440
                                gx#current-expander-phi
                                __tmp199438)))
                           _%tl198843198858%_)))
                      (_%g198838198848%_ _%g198839198851%_)))))
          (_%g198837198872%_ _%stx198836%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self198774%_ _%stx198775%_)
        (let* ((_%g198777198791%_
                (lambda (_%g198778198788%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198778198788%_))))
               (_%g198776198832%_
                (lambda (_%g198778198794%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198778198794%_))
                      (let ((_%e198781198796%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198778198794%_))))
                        (let ((_%hd198782198799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198781198796%_)))
                              (_%tl198783198801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198781198796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198783198801%_))
                              (let ((_%e198784198804%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198783198801%_))))
                                (let ((_%hd198785198807%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198784198804%_)))
                                      (_%tl198786198809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198784198804%_))))
                                  ((lambda (_%L198812%_ _%L198813%_)
                                     (let* ((_%ctx198826%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L198813%_)))
                                            (_%code198828%_
                                             (##structure-ref
                                              _%ctx198826%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp199441
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198774%_
                                                  _%code198828%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp199441
                                        gx#current-expander-context
                                        _%ctx198826%_)))
                                   _%tl198786198809%_
                                   _%hd198785198807%_)))
                              (_%g198777198791%_ _%g198778198794%_))))
                      (_%g198777198791%_ _%g198778198794%_)))))
          (_%g198776198832%_ _%stx198775%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self198579%_ _%stx198580%_)
        (letrec ((_%generate-e198582%_
                  (lambda (_%id198759%_)
                    (let* ((_%sym198761%_
                            (if (let ((__tmp199442
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp199442))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id198759%_))
                                '#f))
                           (_%$e198763%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym198761%_))))
                      (if _%$e198763%_
                          ((lambda (_%klass198766%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym198761%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym198761%_
                                                     (cons (let ((__method199417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass198766%_ 'typedecl))))
                     (if __method199417
                         (let ()
                           (declare (not safe))
                           (__method199417 _%klass198766%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass198766%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym198761%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym198761%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e198763%_)
                          (let ((_%$e198768%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym198761%_))))
                            (if _%$e198768%_
                                ((lambda (_%type198771%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym198761%_
                                      '" "
                                      _%type198771%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type198771%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym198761%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym198761%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type198771%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym198761%_
                                                   (cons (let ((__method199418
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type198771%_ 'typedecl))))
                   (if __method199418
                       (let ()
                         (declare (not safe))
                         (__method199418 _%type198771%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type198771%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e198768%_)
                                '(begin))))))))
          (let* ((_%__stx199029199030%_ _%stx198580%_)
                 (_%g198585198623%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx199029199030%_)))))
            (let ((_%__kont199031199032%_
                   (lambda (_%L198741%_) (_%generate-e198582%_ _%L198741%_)))
                  (_%__kont199033199034%_
                   (lambda (_%L198676%_)
                     (let ((_%types198702%_
                            (map _%generate-e198582%_
                                 (let ((__tmp199443
                                        (lambda (_%g198694198697%_
                                                 _%g198695198699%_)
                                          (cons _%g198694198697%_
                                                _%g198695198699%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp199443 '() _%L198676%_)))))
                       (cons 'begin _%types198702%_)))))
              (let ((_%__match199084199085%_
                     (lambda (_%e198601198628%_
                              _%hd198602198631%_
                              _%tl198603198633%_
                              _%e198604198636%_
                              _%hd198605198639%_
                              _%tl198606198641%_
                              _%__splice199035199036%_
                              _%target198607198644%_
                              _%tl198609198646%_)
                       (letrec ((_%loop198610198649%_
                                 (lambda (_%hd198608198652%_
                                          _%id198614198654%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd198608198652%_))
                                       (let ((_%e198611198657%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd198608198652%_))))
                                         (let ((_%lp-tl198613198662%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e198611198657%_)))
                                               (_%lp-hd198612198660%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e198611198657%_))))
                                           (_%loop198610198649%_
                                            _%lp-tl198613198662%_
                                            (cons _%lp-hd198612198660%_
                                                  _%id198614198654%_))))
                                       (let ((_%id198615198665%_
                                              (reverse _%id198614198654%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl198606198641%_))
                                             (let ((_%e198616198668%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl198606198641%_))))
                                               (let ((_%tl198618198673%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e198616198668%_)))
                                                     (_%hd198617198671%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e198616198668%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl198618198673%_))
                                                     (_%__kont199033199034%_
                                                      _%id198615198665%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g198585198623%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g198585198623%_))))))))
                         (_%loop198610198649%_ _%target198607198644%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx199029199030%_))
                    (let ((_%e198588198709%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx199029199030%_))))
                      (let ((_%tl198590198714%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198588198709%_)))
                            (_%hd198589198712%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198588198709%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198590198714%_))
                            (let ((_%e198591198717%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl198590198714%_))))
                              (let ((_%tl198593198722%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198591198717%_)))
                                    (_%hd198592198720%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198591198717%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198592198720%_))
                                    (let ((_%e198594198725%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198592198720%_))))
                                      (let ((_%tl198596198730%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198594198725%_)))
                                            (_%hd198595198728%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198594198725%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198596198730%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198593198722%_))
                                                (let ((_%e198597198733%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198593198722%_))))
                                                  (let ((_%tl198599198738%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198597198733%_)))
                                                        (_%hd198598198736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198597198733%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198599198738%_))
                                                        (_%__kont199031199032%_
                                                         _%hd198595198728%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd198592198720%_))
                                                            (let ((_%__splice199035199036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd198592198720%_ '0))))
                      (let ((_%tl198609198646%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice199035199036%_ '1)))
                            (_%target198607198644%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice199035199036%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198609198646%_))
                            (_%__match199084199085%_
                             _%e198588198709%_
                             _%hd198589198712%_
                             _%tl198590198714%_
                             _%e198591198717%_
                             _%hd198592198720%_
                             _%tl198593198722%_
                             _%__splice199035199036%_
                             _%target198607198644%_
                             _%tl198609198646%_)
                            (let ()
                              (declare (not safe))
                              (_%g198585198623%_)))))
                    (let () (declare (not safe)) (_%g198585198623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd198592198720%_))
                                                    (let ((_%__splice199035199036%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd198592198720%_
                                                              '0))))
                                                      (let ((_%tl198609198646%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice199035199036%_ '1)))
                    (_%target198607198644%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice199035199036%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl198609198646%_))
                    (_%__match199084199085%_
                     _%e198588198709%_
                     _%hd198589198712%_
                     _%tl198590198714%_
                     _%e198591198717%_
                     _%hd198592198720%_
                     _%tl198593198722%_
                     _%__splice199035199036%_
                     _%target198607198644%_
                     _%tl198609198646%_)
                    (let () (declare (not safe)) (_%g198585198623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198585198623%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd198592198720%_))
                                                (let ((_%__splice199035199036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd198592198720%_
                                                          '0))))
                                                  (let ((_%tl198609198646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice199035199036%_
                                                            '1)))
                                                        (_%target198607198644%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice199035199036%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198609198646%_))
                                                        (_%__match199084199085%_
                                                         _%e198588198709%_
                                                         _%hd198589198712%_
                                                         _%tl198590198714%_
                                                         _%e198591198717%_
                                                         _%hd198592198720%_
                                                         _%tl198593198722%_
                                                         _%__splice199035199036%_
                                                         _%target198607198644%_
                                                         _%tl198609198646%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g198585198623%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198585198623%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd198592198720%_))
                                        (let ((_%__splice199035199036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd198592198720%_
                                                  '0))))
                                          (let ((_%tl198609198646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice199035199036%_
                                                    '1)))
                                                (_%target198607198644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice199035199036%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198609198646%_))
                                                (_%__match199084199085%_
                                                 _%e198588198709%_
                                                 _%hd198589198712%_
                                                 _%tl198590198714%_
                                                 _%e198591198717%_
                                                 _%hd198592198720%_
                                                 _%tl198593198722%_
                                                 _%__splice199035199036%_
                                                 _%target198607198644%_
                                                 _%tl198609198646%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198585198623%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198585198623%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g198585198623%_)))))
                    (let () (declare (not safe)) (_%g198585198623%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self198132%_ _%stx198133%_)
        (let* ((_%__stx199087199088%_ _%stx198133%_)
               (_%g198137198239%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx199087199088%_)))))
          (let ((_%__kont199089199090%_
                 (lambda (_%L198529%_
                          _%L198530%_
                          _%L198531%_
                          _%L198532%_
                          _%L198533%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L198532%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L198531%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L198530%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L198529%_))
                                                 '())))))))
                (_%__kont199091199092%_
                 (lambda (_%L198355%_ _%L198356%_ _%L198357%_ _%L198358%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L198357%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L198356%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L198355%_))
                                           (cons '#f '())))))))
                (_%__kont199093199094%_ (lambda () '(begin))))
            (let ((_%__match199222199223%_
                   (lambda (_%e198144198401%_
                            _%hd198145198404%_
                            _%tl198146198406%_
                            _%e198147198409%_
                            _%hd198148198412%_
                            _%tl198149198414%_
                            _%e198150198417%_
                            _%hd198151198420%_
                            _%tl198152198422%_
                            _%e198153198425%_
                            _%hd198154198428%_
                            _%tl198155198430%_
                            _%e198156198433%_
                            _%hd198157198436%_
                            _%tl198158198438%_
                            _%e198159198441%_
                            _%hd198160198444%_
                            _%tl198161198446%_
                            _%e198162198449%_
                            _%hd198163198452%_
                            _%tl198164198454%_
                            _%e198165198457%_
                            _%hd198166198460%_
                            _%tl198167198462%_
                            _%e198168198465%_
                            _%hd198169198468%_
                            _%tl198170198470%_
                            _%e198171198473%_
                            _%hd198172198476%_
                            _%tl198173198478%_
                            _%e198174198481%_
                            _%hd198175198484%_
                            _%tl198176198486%_
                            _%e198177198489%_
                            _%hd198178198492%_
                            _%tl198179198494%_
                            _%e198180198497%_
                            _%hd198181198500%_
                            _%tl198182198502%_
                            _%e198183198505%_
                            _%hd198184198508%_
                            _%tl198185198510%_
                            _%e198186198513%_
                            _%hd198187198516%_
                            _%tl198188198518%_
                            _%e198189198521%_
                            _%hd198190198524%_
                            _%tl198191198526%_)
                     (let ((_%L198529%_ _%hd198190198524%_)
                           (_%L198530%_ _%hd198181198500%_)
                           (_%L198531%_ _%hd198172198476%_)
                           (_%L198532%_ _%hd198163198452%_)
                           (_%L198533%_ _%hd198154198428%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L198533%_
                              'bind-method!))
                           (_%__kont199089199090%_
                            _%L198529%_
                            _%L198530%_
                            _%L198531%_
                            _%L198532%_
                            _%L198533%_)
                           (_%__kont199093199094%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx199087199088%_))
                  (let ((_%e198144198401%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx199087199088%_))))
                    (let ((_%tl198146198406%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198144198401%_)))
                          (_%hd198145198404%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198144198401%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198146198406%_))
                          (let ((_%e198147198409%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198146198406%_))))
                            (let ((_%tl198149198414%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198147198409%_)))
                                  (_%hd198148198412%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198147198409%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd198148198412%_))
                                  (let ((_%e198150198417%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198148198412%_))))
                                    (let ((_%tl198152198422%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198150198417%_)))
                                          (_%hd198151198420%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198150198417%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd198151198420%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd198151198420%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198152198422%_))
                                                  (let ((_%e198153198425%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl198152198422%_))))
                                                    (let ((_%tl198155198430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198153198425%_)))
                                                          (_%hd198154198428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198153198425%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198155198430%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl198149198414%_))
                      (let ((_%e198156198433%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl198149198414%_))))
                        (let ((_%tl198158198438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198156198433%_)))
                              (_%hd198157198436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198156198433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198157198436%_))
                              (let ((_%e198159198441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd198157198436%_))))
                                (let ((_%tl198161198446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198159198441%_)))
                                      (_%hd198160198444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198159198441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198160198444%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd198160198444%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198161198446%_))
                                              (let ((_%e198162198449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198161198446%_))))
                                                (let ((_%tl198164198454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198162198449%_)))
                                                      (_%hd198163198452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198162198449%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198164198454%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198158198438%_))
                                                          (let ((_%e198165198457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl198158198438%_))))
                    (let ((_%tl198167198462%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198165198457%_)))
                          (_%hd198166198460%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198165198457%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd198166198460%_))
                          (let ((_%e198168198465%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198166198460%_))))
                            (let ((_%tl198170198470%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198168198465%_)))
                                  (_%hd198169198468%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198168198465%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd198169198468%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd198169198468%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl198170198470%_))
                                          (let ((_%e198171198473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl198170198470%_))))
                                            (let ((_%tl198173198478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198171198473%_)))
                                                  (_%hd198172198476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198171198473%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl198173198478%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198167198462%_))
                                                      (let ((_%e198174198481%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198167198462%_))))
                (let ((_%tl198176198486%_
                       (let () (declare (not safe)) (##cdr _%e198174198481%_)))
                      (_%hd198175198484%_
                       (let ()
                         (declare (not safe))
                         (##car _%e198174198481%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd198175198484%_))
                      (let ((_%e198177198489%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198175198484%_))))
                        (let ((_%tl198179198494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198177198489%_)))
                              (_%hd198178198492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198177198489%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd198178198492%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd198178198492%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198179198494%_))
                                      (let ((_%e198180198497%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198179198494%_))))
                                        (let ((_%tl198182198502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198180198497%_)))
                                              (_%hd198181198500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198180198497%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198182198502%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198176198486%_))
                                                  (let ((_%e198183198505%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl198176198486%_))))
                                                    (let ((_%tl198185198510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198183198505%_)))
                                                          (_%hd198184198508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198183198505%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198184198508%_))
                                                          (let ((_%e198186198513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd198184198508%_))))
                    (let ((_%tl198188198518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198186198513%_)))
                          (_%hd198187198516%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198186198513%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd198187198516%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd198187198516%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198188198518%_))
                                  (let ((_%e198189198521%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl198188198518%_))))
                                    (let ((_%tl198191198526%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198189198521%_)))
                                          (_%hd198190198524%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198189198521%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198191198526%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198185198510%_))
                                              (_%__match199222199223%_
                                               _%e198144198401%_
                                               _%hd198145198404%_
                                               _%tl198146198406%_
                                               _%e198147198409%_
                                               _%hd198148198412%_
                                               _%tl198149198414%_
                                               _%e198150198417%_
                                               _%hd198151198420%_
                                               _%tl198152198422%_
                                               _%e198153198425%_
                                               _%hd198154198428%_
                                               _%tl198155198430%_
                                               _%e198156198433%_
                                               _%hd198157198436%_
                                               _%tl198158198438%_
                                               _%e198159198441%_
                                               _%hd198160198444%_
                                               _%tl198161198446%_
                                               _%e198162198449%_
                                               _%hd198163198452%_
                                               _%tl198164198454%_
                                               _%e198165198457%_
                                               _%hd198166198460%_
                                               _%tl198167198462%_
                                               _%e198168198465%_
                                               _%hd198169198468%_
                                               _%tl198170198470%_
                                               _%e198171198473%_
                                               _%hd198172198476%_
                                               _%tl198173198478%_
                                               _%e198174198481%_
                                               _%hd198175198484%_
                                               _%tl198176198486%_
                                               _%e198177198489%_
                                               _%hd198178198492%_
                                               _%tl198179198494%_
                                               _%e198180198497%_
                                               _%hd198181198500%_
                                               _%tl198182198502%_
                                               _%e198183198505%_
                                               _%hd198184198508%_
                                               _%tl198185198510%_
                                               _%e198186198513%_
                                               _%hd198187198516%_
                                               _%tl198188198518%_
                                               _%e198189198521%_
                                               _%hd198190198524%_
                                               _%tl198191198526%_)
                                              (_%__kont199093199094%_))
                                          (_%__kont199093199094%_))))
                                  (_%__kont199093199094%_))
                              (_%__kont199093199094%_))
                          (_%__kont199093199094%_))))
                  (_%__kont199093199094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198176198486%_))
                                                      (if (let ((__tmp199444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp199444 'bind-method!))
                  (let ((_%L198355%_ _%hd198181198500%_)
                        (_%L198356%_ _%hd198172198476%_)
                        (_%L198357%_ _%hd198163198452%_)
                        (_%L198358%_ _%hd198154198428%_))
                    (_%__kont199091199092%_
                     _%L198355%_
                     _%L198356%_
                     _%L198357%_
                     _%L198358%_))
                  (_%__kont199093199094%_))
              (_%__kont199093199094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont199093199094%_))))
                                      (_%__kont199093199094%_))
                                  (_%__kont199093199094%_))
                              (_%__kont199093199094%_))))
                      (_%__kont199093199094%_))))
              (_%__kont199093199094%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont199093199094%_))))
                                          (_%__kont199093199094%_))
                                      (_%__kont199093199094%_))
                                  (_%__kont199093199094%_))))
                          (_%__kont199093199094%_))))
                  (_%__kont199093199094%_))
              (_%__kont199093199094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont199093199094%_))
                                          (_%__kont199093199094%_))
                                      (_%__kont199093199094%_))))
                              (_%__kont199093199094%_))))
                      (_%__kont199093199094%_))
                  (_%__kont199093199094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont199093199094%_))
                                              (_%__kont199093199094%_))
                                          (_%__kont199093199094%_))))
                                  (_%__kont199093199094%_))))
                          (_%__kont199093199094%_))))
                  (_%__kont199093199094%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self197956%_ _%stx197957%_)
        (let* ((_%__stx199331199332%_ _%stx197957%_)
               (_%g197960198000%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx199331199332%_)))))
          (let ((_%__kont199333199334%_
                 (lambda (_%L198106%_ _%L198107%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L198107%_))
                               (cons _%L198106%_ '())))))
                (_%__kont199335199336%_
                 (lambda (_%L198029%_ _%L198030%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx199331199332%_))
                (let ((_%e197964198050%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx199331199332%_))))
                  (let ((_%tl197966198055%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197964198050%_)))
                        (_%hd197965198053%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197964198050%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197966198055%_))
                        (let ((_%e197967198058%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197966198055%_))))
                          (let ((_%tl197969198063%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197967198058%_)))
                                (_%hd197968198061%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197967198058%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197968198061%_))
                                (let ((_%e197970198066%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197968198061%_))))
                                  (let ((_%tl197972198071%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197970198066%_)))
                                        (_%hd197971198069%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197970198066%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197971198069%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd197971198069%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197972198071%_))
                                                (let ((_%e197973198074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197972198071%_))))
                                                  (let ((_%tl197975198079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197973198074%_)))
                                                        (_%hd197974198077%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197973198074%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197975198079%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197969198063%_))
                                                            (let ((_%e197976198082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197969198063%_))))
                      (let ((_%tl197978198087%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197976198082%_)))
                            (_%hd197977198085%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197976198082%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd197977198085%_))
                            (let ((_%e197979198090%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd197977198085%_))))
                              (let ((_%tl197981198095%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197979198090%_)))
                                    (_%hd197980198093%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197979198090%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd197980198093%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd197980198093%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197981198095%_))
                                            (let ((_%e197982198098%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197981198095%_))))
                                              (let ((_%tl197984198103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197982198098%_)))
                                                    (_%hd197983198101%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197982198098%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197984198103%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197978198087%_))
                                                        (_%__kont199333199334%_
                                                         _%hd197983198101%_
                                                         _%hd197974198077%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197960198000%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197978198087%_))
                                                        (_%__kont199335199336%_
                                                         _%hd197977198085%_
                                                         _%hd197968198061%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197960198000%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197978198087%_))
                                                (_%__kont199335199336%_
                                                 _%hd197977198085%_
                                                 _%hd197968198061%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197960198000%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197978198087%_))
                                            (_%__kont199335199336%_
                                             _%hd197977198085%_
                                             _%hd197968198061%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197960198000%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197978198087%_))
                                        (_%__kont199335199336%_
                                         _%hd197977198085%_
                                         _%hd197968198061%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g197960198000%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197978198087%_))
                                (_%__kont199335199336%_
                                 _%hd197977198085%_
                                 _%hd197968198061%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197960198000%_))))))
                    (let () (declare (not safe)) (_%g197960198000%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197969198063%_))
                    (let ((_%e197993198021%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197969198063%_))))
                      (let ((_%tl197995198026%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197993198021%_)))
                            (_%hd197994198024%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197993198021%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197995198026%_))
                            (_%__kont199335199336%_
                             _%hd197994198024%_
                             _%hd197968198061%_)
                            (let ()
                              (declare (not safe))
                              (_%g197960198000%_)))))
                    (let () (declare (not safe)) (_%g197960198000%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197969198063%_))
                                                    (let ((_%e197993198021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197969198063%_))))
                                                      (let ((_%tl197995198026%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197993198021%_)))
                    (_%hd197994198024%_
                     (let () (declare (not safe)) (##car _%e197993198021%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197995198026%_))
                    (_%__kont199335199336%_
                     _%hd197994198024%_
                     _%hd197968198061%_)
                    (let () (declare (not safe)) (_%g197960198000%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197960198000%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197969198063%_))
                                                (let ((_%e197993198021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197969198063%_))))
                                                  (let ((_%tl197995198026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197993198021%_)))
                                                        (_%hd197994198024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197993198021%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197995198026%_))
                                                        (_%__kont199335199336%_
                                                         _%hd197994198024%_
                                                         _%hd197968198061%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197960198000%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197960198000%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197969198063%_))
                                            (let ((_%e197993198021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197969198063%_))))
                                              (let ((_%tl197995198026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197993198021%_)))
                                                    (_%hd197994198024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197993198021%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197995198026%_))
                                                    (_%__kont199335199336%_
                                                     _%hd197994198024%_
                                                     _%hd197968198061%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197960198000%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197960198000%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197969198063%_))
                                    (let ((_%e197993198021%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197969198063%_))))
                                      (let ((_%tl197995198026%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197993198021%_)))
                                            (_%hd197994198024%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197993198021%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197995198026%_))
                                            (_%__kont199335199336%_
                                             _%hd197994198024%_
                                             _%hd197968198061%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197960198000%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197960198000%_))))))
                        (let () (declare (not safe)) (_%g197960198000%_)))))
                (let () (declare (not safe)) (_%g197960198000%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self196150197941%_)
        (let* ((_%self197944%_ _%self196150197941%_)
               (_%self197946%_ _%self197944%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197946%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self196151197712%_)
        (let* ((_%self197715%_ _%self196151197712%_)
               (_%self197717%_ _%self197715%_)
               (_%self197726197742%_ _%self197717%_)
               (_%E197728197746%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self197726197742%_
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
               (_%K197729197761%_
                (lambda (_%methods197749%_
                         _%metaclass197750%_
                         _%system?197751%_
                         _%final?197752%_
                         _%struct?197753%_
                         _%constructor197754%_
                         _%fields197755%_
                         _%slots197756%_
                         _%precendence-list197757%_
                         _%super197758%_
                         _%id197759%_)
                  (cons '@class
                        (cons _%id197759%_
                              (cons _%super197758%_
                                    (cons _%precendence-list197757%_
                                          (cons _%slots197756%_
                                                (cons _%fields197755%_
                                                      (cons _%constructor197754%_
                                                            (cons _%struct?197753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?197752%_
                                (cons _%system?197751%_
                                      (cons _%metaclass197750%_
                                            (cons (if _%methods197749%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods197749%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e197730197764%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197726197742%_ '1 '#f '#f)))
               (_%id197767%_ _%e197730197764%_)
               (_%e197731197769%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197726197742%_ '2 '#f '#f)))
               (_%super197772%_ _%e197731197769%_)
               (_%e197732197774%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197726197742%_ '3 '#f '#f)))
               (_%precendence-list197777%_ _%e197732197774%_)
               (_%e197733197779%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197726197742%_ '4 '#f '#f)))
               (_%slots197782%_ _%e197733197779%_)
               (_%e197734197784%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197726197742%_ '5 '#f '#f)))
               (_%fields197787%_ _%e197734197784%_)
               (_%e197735197789%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197726197742%_ '6 '#f '#f)))
               (_%constructor197792%_ _%e197735197789%_)
               (_%e197736197794%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197726197742%_ '7 '#f '#f)))
               (_%struct?197797%_ _%e197736197794%_)
               (_%e197737197799%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197726197742%_ '8 '#f '#f)))
               (_%final?197802%_ _%e197737197799%_)
               (_%e197738197804%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197726197742%_ '9 '#f '#f)))
               (_%system?197807%_ _%e197738197804%_)
               (_%e197739197809%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self197726197742%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass197812%_ _%e197739197809%_)
               (_%e197740197814%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self197726197742%_
                   '11
                   '#f
                   '#f)))
               (_%methods197817%_ _%e197740197814%_))
          (_%K197729197761%_
           _%methods197817%_
           _%metaclass197812%_
           _%system?197807%_
           _%final?197802%_
           _%struct?197797%_
           _%constructor197792%_
           _%fields197787%_
           _%slots197782%_
           _%precendence-list197777%_
           _%super197772%_
           _%id197767%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self196152197575%_)
        (let* ((_%self197578%_ _%self196152197575%_)
               (_%self197580%_ _%self197578%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197580%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self196153197438%_)
        (let* ((_%self197441%_ _%self196153197438%_)
               (_%self197443%_ _%self197441%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197443%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self196154197301%_)
        (let* ((_%self197304%_ _%self196154197301%_)
               (_%self197306%_ _%self197304%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197306%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197306%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self197306%_
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
      (lambda (_%self196155197164%_)
        (let* ((_%self197167%_ _%self196155197164%_)
               (_%self197169%_ _%self197167%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197169%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197169%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self197169%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self196156197027%_)
        (let* ((_%self197030%_ _%self196156197027%_)
               (_%self197032%_ _%self197030%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197032%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197032%_
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
      (lambda (_%self196157196838%_)
        (let* ((_%self196841%_ _%self196157196838%_)
               (_%self196843%_ _%self196841%_)
               (_%self196852196861%_ _%self196843%_)
               (_%E196854196865%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self196852196861%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K196855196884%_
                (lambda (_%dispatch196868%_
                         _%arity196869%_
                         _%signature196870%_)
                  (if _%signature196870%_
                      (let ((_%signature196872%_ _%signature196870%_))
                        (cons '@lambda
                              (cons _%arity196869%_
                                    (cons _%dispatch196868%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature196872%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature196872%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature196872%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature196872%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature196872%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity196869%_
                                  (cons _%dispatch196868%_ '()))))))
               (_%e196856196887%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196852196861%_ '1 '#f '#f)))
               (_%e196857196890%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196852196861%_ '2 '#f '#f)))
               (_%signature196893%_ _%e196857196890%_)
               (_%e196858196895%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196852196861%_ '3 '#f '#f)))
               (_%arity196898%_ _%e196858196895%_)
               (_%e196859196900%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196852196861%_ '4 '#f '#f)))
               (_%dispatch196903%_ _%e196859196900%_))
          (_%K196855196884%_
           _%dispatch196903%_
           _%arity196898%_
           _%signature196893%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self196158196697%_)
        (let* ((_%self196700%_ _%self196158196697%_)
               (_%self196702%_ _%self196700%_))
          (letrec ((_%clause-e196712%_
                    (lambda (_%clause196714%_)
                      (cdr (let ((__method199419
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause196714%_
                                     'typedecl))))
                             (if __method199419
                                 (let ()
                                   (declare (not safe))
                                   (__method199419 _%clause196714%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause196714%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e196712%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self196702%_
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
      (lambda (_%self196159196560%_)
        (let* ((_%self196563%_ _%self196159196560%_)
               (_%self196565%_ _%self196563%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196565%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196565%_
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
      (lambda (_%self196160196423%_)
        (let* ((_%self196426%_ _%self196160196423%_)
               (_%self196428%_ _%self196426%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196428%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196428%_
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
      (lambda (_%self196161196286%_)
        (let* ((_%self196289%_ _%self196161196286%_)
               (_%self196291%_ _%self196289%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196291%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
