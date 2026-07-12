(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1783878484)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp265570
                   (let ((__obj265564
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
                       (gxc#optimizer-info:::init! __obj265564))
                     __obj265564)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp265570)))))
    (define gxc#optimize!
      (lambda (_%ctx265172%_)
        (let ((__tmp265572
               (lambda ()
                 (let ((__tmp265574
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx265172%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx265172%_)
                          (let ((__tmp265576
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp265575
                                 (##structure-ref
                                  _%ctx265172%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp265576 __tmp265575 '#t))
                          (let ((_%code265176%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx265172%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx265172%_
                             _%code265176%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp265573
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp265574
                    gxc#current-compile-local-type
                    __tmp265573))))
              (__tmp265571 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp265572
           gxc#current-compile-mutators
           __tmp265571))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx265158%_)
        (letrec ((_%load-it!265160%_
                  (lambda (_%id265170%_)
                    (if (let ((__tmp265577
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp265577 _%id265170%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id265170%_)
                          (let ((__tmp265578
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp265578 _%id265170%_ '#t)))))))
          (let* ((_%modid265162%_
                  (##structure-ref
                   _%ctx265158%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str265164%_ (symbol->string _%modid265162%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str265164%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str265164%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!265160%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!265160%_
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
      (lambda (_%ctx265095%_)
        (letrec* ((_%deps265097%_
                   (let* ((_%imports265148%_
                           (##structure-ref
                            _%ctx265095%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e265150%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx265095%_))))
                     (if _%$e265150%_
                         (cons _%$e265150%_ _%imports265148%_)
                         _%imports265148%_))))
          (let _%lp265099%_ ((_%rest265101%_ _%deps265097%_))
            (let* ((_%$%rest265102265110%_ _%rest265101%_)
                   (_%$%else265104265118%_ (lambda () '#!void))
                   (_%$%K265106265136%_
                    (lambda (_%rest265121%_ _%hd265122%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd265122%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp265580
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp265579
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd265122%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp265580 __tmp265579))
                                '#!void
                                (begin
                                  (let ((_%$e265125%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd265122%_))))
                                    (if _%$e265125%_
                                        (_%lp265099%_
                                         (cons _%$e265125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd265122%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp265099%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd265122%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd265122%_)))
                            (_%lp265099%_ _%rest265121%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd265122%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp265582
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp265581
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd265122%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp265582 __tmp265581))
                                    '#!void
                                    (begin
                                      (_%lp265099%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd265122%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd265122%_)))
                                (_%lp265099%_ _%rest265121%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd265122%_
                                     'gx#module-import::t))
                                  (_%lp265099%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd265122%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest265121%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd265122%_
                                         'gx#module-export::t))
                                      (_%lp265099%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd265122%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest265121%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd265122%_
                                             'gx#import-set::t))
                                          (_%lp265099%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd265122%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest265121%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd265122%_))))))))))
              (if (pair? _%$%rest265102265110%_)
                  (let ((_%$%hd265107265139%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest265102265110%_)))
                        (_%$%tl265108265141%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest265102265110%_))))
                    (let* ((_%hd265144%_ _%$%hd265107265139%_)
                           (_%rest265146%_ _%$%tl265108265141%_))
                      (_%$%K265106265136%_ _%rest265146%_ _%hd265144%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx265075%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx265075%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx265075%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht265077%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id265079%_
                    (##structure-ref
                     _%ctx265075%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod265081%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht265077%_ _%id265079%_)))
                   (_%$e265084%_ _%mod265081%_))
              (if _%$e265084%_
                  _%$e265084%_
                  (let* ((_%mod265087%_
                          (gxc#optimizer-import-ssxi _%ctx265075%_))
                         (_%val265092%_
                          (let ((_%$e265089%_ _%mod265087%_))
                            (if _%$e265089%_ _%$e265089%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht265077%_ _%id265079%_ _%val265092%_))
                    _%val265092%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx265073%_)
        (if (##structure-ref _%ctx265073%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx265073%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id265051%_)
        (letrec ((_%catch-e265053%_
                  (lambda (_%exn265071%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn265071%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn265071%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id265051%_))))
                    '#f))
                 (_%import-e265054%_
                  (lambda ()
                    (let* ((_%str-id265057%_
                            (let ((__tmp265583
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id265051%_))))
                              (declare (not safe))
                              (##string-append __tmp265583 '".ssxi")))
                           (_%artefact-path265064%_
                            (let ((_%$%odir265058265060%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir265058265060%_
                                  (let ((_%odir265062%_
                                         _%$%odir265058265060%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id265057%_
                                        '".ss"))
                                     _%odir265062%_))
                                  '#f)))
                           (_%library-path265066%_
                            (let ((__tmp265584
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id265057%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp265584)))
                           (_%ssxi-path265068%_
                            (if (and _%artefact-path265064%_
                                     (file-exists? _%artefact-path265064%_))
                                _%artefact-path265064%_
                                _%library-path265066%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path265068%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path265068%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e265053%_ _%import-e265054%_)))))
    (define gxc#optimize-source
      (lambda (_%stx265036%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx265036%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx265036%_))
        (let* ((_%stx265038%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx265036%_)))
               (_%stx265040%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx265038%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx265040%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx265040%_))
          (let _%fixpoint265043%_ ((_%current265045%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx265040%_))
            (let ((_%refined265047%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current265045%_ _%refined265047%_)
                  '#!void
                  (_%fixpoint265043%_ _%refined265047%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx265040%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx265040%_))
          (let ((_%stx265049%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx265040%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx265049%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp265586 (list gxc#::generate-runtime-empty::t))
            (__tmp265585 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp265586
         '()
         __tmp265585
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args265033%_
        (apply make-instance gxc#::generate-ssxi::t _%$args265033%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp265587
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
        (__make-atomic-promise __tmp265587)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx265025%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self265028%_
                (let ((__obj265566
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj265566))
               (__tmp265588
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self265028%_ _%stx265025%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp265588
           gxc#current-compile-method
           _%self265028%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self264985%_ _%stx264986%_)
        (let* ((_%$%g264988264998%_
                (lambda (_%$%g264989264995%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264989264995%_))))
               (_%$%g264987265022%_
                (lambda (_%$%g264989265001%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264989265001%_))
                      (let ((_%$%e264991265003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g264989265001%_))))
                        (let ((_%$%hd264992265006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264991265003%_)))
                              (_%$%tl264993265008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264991265003%_))))
                          (let ((__tmp265591
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self264985%_
                                      _%stx264986%_))))
                                (__tmp265589
                                 (let ((__tmp265590
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp265590 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp265591
                             gx#current-expander-phi
                             __tmp265589))))
                      (_%$%g264988264998%_ _%$%g264989265001%_)))))
          (_%$%g264987265022%_ _%stx264986%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self264924%_ _%stx264925%_)
        (let* ((_%$%g264927264941%_
                (lambda (_%$%g264928264938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264928264938%_))))
               (_%$%g264926264982%_
                (lambda (_%$%g264928264944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264928264944%_))
                      (let ((_%$%e264931264946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g264928264944%_))))
                        (let ((_%$%hd264932264949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264931264946%_)))
                              (_%$%tl264933264951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264931264946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264933264951%_))
                              (let ((_%$%e264934264954%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl264933264951%_))))
                                (let ((_%$%hd264935264957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264934264954%_)))
                                      (_%$%tl264936264959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264934264954%_))))
                                  (let* ((_%ctx264976%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd264935264957%_)))
                                         (_%code264978%_
                                          (##structure-ref
                                           _%ctx264976%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp265592
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self264924%_
                                               _%code264978%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp265592
                                     gx#current-expander-context
                                     _%ctx264976%_))))
                              (_%$%g264927264941%_ _%$%g264928264944%_))))
                      (_%$%g264927264941%_ _%$%g264928264944%_)))))
          (_%$%g264926264982%_ _%stx264925%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self264731%_ _%stx264732%_)
        (letrec ((_%generate-e264734%_
                  (lambda (_%id264909%_)
                    (let* ((_%sym264911%_
                            (if (let ((__tmp265593
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp265593))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id264909%_))
                                '#f))
                           (_%$e264913%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym264911%_))))
                      (if _%$e264913%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym264911%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym264911%_
                                                    (cons (let ((__method265567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e264913%_ 'typedecl))))
                    (if __method265567
                        (let ()
                          (declare (not safe))
                          (__method265567 _%$e264913%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e264913%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym264911%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'quote
                                          (cons (cons 'typedecl
                                                      (cons _%sym264911%_ '()))
                                                '()))
                                    (cons (cons 'quote (cons 'class::t '()))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e264918%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym264911%_))))
                            (if _%$e264918%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym264911%_
                                     '" "
                                     _%$e264918%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e264918%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym264911%_
                                                  (cons (cons 'optimizer-resolve-class
                                                              (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons 'typedecl
                                              (cons _%sym264911%_ '()))
                                        '()))
                            (cons (cons 'quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#optimizer-lookup-class-name
                                                 _%$e264918%_))
                                              '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym264911%_
                                                  (cons (let ((__method265568
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e264918%_ 'typedecl))))
                  (if __method265568
                      (let ()
                        (declare (not safe))
                        (__method265568 _%$e264918%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e264918%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx265179265180%_ _%stx264732%_)
                 (_%$%g264737264775%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx265179265180%_)))))
            (let ((_%__kont265181265182%_
                   (lambda (_%$%g264739264891%_)
                     (_%generate-e264734%_ _%$%g264739264891%_)))
                  (_%__kont265183265184%_
                   (lambda (_%$%g264752264826%_)
                     (let ((_%types264852%_
                            (map _%generate-e264734%_
                                 (let ((__tmp265594
                                        (lambda (_%$%g264844264847%_
                                                 _%$%g264845264849%_)
                                          (cons _%$%g264844264847%_
                                                _%$%g264845264849%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp265594
                                    '()
                                    _%$%g264752264826%_)))))
                       (cons 'begin _%types264852%_)))))
              (let ((_%__match265234265235%_
                     (lambda (_%$%e264753264780%_
                              _%$%hd264754264783%_
                              _%$%tl264755264785%_
                              _%$%e264756264788%_
                              _%$%hd264757264791%_
                              _%$%tl264758264793%_
                              _%__splice265185265186%_
                              _%$%target264759264796%_
                              _%$%tl264761264798%_)
                       (letrec ((_%$%loop264762264801%_
                                 (lambda (_%$%hd264760264804%_
                                          _%$%id264766264806%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd264760264804%_))
                                       (let ((_%$%e264763264808%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd264760264804%_))))
                                         (let ((_%$%lp-tl264765264813%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e264763264808%_)))
                                               (_%$%lp-hd264764264811%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e264763264808%_))))
                                           (_%$%loop264762264801%_
                                            _%$%lp-tl264765264813%_
                                            (cons _%$%lp-hd264764264811%_
                                                  _%$%id264766264806%_))))
                                       (let ((_%$%id264767264816%_
                                              (reverse _%$%id264766264806%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl264758264793%_))
                                             (let ((_%$%e264768264818%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl264758264793%_))))
                                               (let ((_%$%tl264770264823%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e264768264818%_)))
                                                     (_%$%hd264769264821%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e264768264818%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl264770264823%_))
                                                     (_%__kont265183265184%_
                                                      _%$%id264767264816%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g264737264775%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g264737264775%_))))))))
                         (_%$%loop264762264801%_
                          _%$%target264759264796%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx265179265180%_))
                    (let ((_%$%e264740264859%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx265179265180%_))))
                      (let ((_%$%tl264742264864%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e264740264859%_)))
                            (_%$%hd264741264862%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e264740264859%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl264742264864%_))
                            (let ((_%$%e264743264867%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl264742264864%_))))
                              (let ((_%$%tl264745264872%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e264743264867%_)))
                                    (_%$%hd264744264870%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e264743264867%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd264744264870%_))
                                    (let ((_%$%e264746264875%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd264744264870%_))))
                                      (let ((_%$%tl264748264880%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e264746264875%_)))
                                            (_%$%hd264747264878%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e264746264875%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl264748264880%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl264745264872%_))
                                                (let ((_%$%e264749264883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl264745264872%_))))
                                                  (let ((_%$%tl264751264888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e264749264883%_)))
                                                        (_%$%hd264750264886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e264749264883%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl264751264888%_))
                                                        (_%__kont265181265182%_
                                                         _%$%hd264747264878%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd264744264870%_))
                                                            (let ((_%__splice265185265186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd264744264870%_
                              '0))))
                      (let ((_%$%tl264761264798%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice265185265186%_ '1)))
                            (_%$%target264759264796%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice265185265186%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl264761264798%_))
                            (_%__match265234265235%_
                             _%$%e264740264859%_
                             _%$%hd264741264862%_
                             _%$%tl264742264864%_
                             _%$%e264743264867%_
                             _%$%hd264744264870%_
                             _%$%tl264745264872%_
                             _%__splice265185265186%_
                             _%$%target264759264796%_
                             _%$%tl264761264798%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g264737264775%_)))))
                    (let () (declare (not safe)) (_%$%g264737264775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd264744264870%_))
                                                    (let ((_%__splice265185265186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd264744264870%_
                                                              '0))))
                                                      (let ((_%$%tl264761264798%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice265185265186%_ '1)))
                    (_%$%target264759264796%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice265185265186%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl264761264798%_))
                    (_%__match265234265235%_
                     _%$%e264740264859%_
                     _%$%hd264741264862%_
                     _%$%tl264742264864%_
                     _%$%e264743264867%_
                     _%$%hd264744264870%_
                     _%$%tl264745264872%_
                     _%__splice265185265186%_
                     _%$%target264759264796%_
                     _%$%tl264761264798%_)
                    (let () (declare (not safe)) (_%$%g264737264775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g264737264775%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd264744264870%_))
                                                (let ((_%__splice265185265186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd264744264870%_
                                                          '0))))
                                                  (let ((_%$%tl264761264798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice265185265186%_
                                                            '1)))
                                                        (_%$%target264759264796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice265185265186%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl264761264798%_))
                                                        (_%__match265234265235%_
                                                         _%$%e264740264859%_
                                                         _%$%hd264741264862%_
                                                         _%$%tl264742264864%_
                                                         _%$%e264743264867%_
                                                         _%$%hd264744264870%_
                                                         _%$%tl264745264872%_
                                                         _%__splice265185265186%_
                                                         _%$%target264759264796%_
                                                         _%$%tl264761264798%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g264737264775%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g264737264775%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd264744264870%_))
                                        (let ((_%__splice265185265186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd264744264870%_
                                                  '0))))
                                          (let ((_%$%tl264761264798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice265185265186%_
                                                    '1)))
                                                (_%$%target264759264796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice265185265186%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl264761264798%_))
                                                (_%__match265234265235%_
                                                 _%$%e264740264859%_
                                                 _%$%hd264741264862%_
                                                 _%$%tl264742264864%_
                                                 _%$%e264743264867%_
                                                 _%$%hd264744264870%_
                                                 _%$%tl264745264872%_
                                                 _%__splice265185265186%_
                                                 _%$%target264759264796%_
                                                 _%$%tl264761264798%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g264737264775%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g264737264775%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g264737264775%_)))))
                    (let () (declare (not safe)) (_%$%g264737264775%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self264284%_ _%stx264285%_)
        (let* ((_%__stx265237265238%_ _%stx264285%_)
               (_%$%g264289264391%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265237265238%_)))))
          (let ((_%__kont265239265240%_
                 (lambda (_%$%g264291264681%_
                          _%$%g264292264682%_
                          _%$%g264293264683%_
                          _%$%g264294264684%_
                          _%$%g264295264685%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g264294264684%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g264293264683%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g264292264682%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g264291264681%_))
                                                 '())))))))
                (_%__kont265241265242%_
                 (lambda (_%$%g264344264507%_
                          _%$%g264345264508%_
                          _%$%g264346264509%_
                          _%$%g264347264510%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g264346264509%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g264345264508%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g264344264507%_))
                                           (cons '#f '())))))))
                (_%__kont265243265244%_ (lambda () '(begin))))
            (let ((_%__match265372265373%_
                   (lambda (_%$%e264296264553%_
                            _%$%hd264297264556%_
                            _%$%tl264298264558%_
                            _%$%e264299264561%_
                            _%$%hd264300264564%_
                            _%$%tl264301264566%_
                            _%$%e264302264569%_
                            _%$%hd264303264572%_
                            _%$%tl264304264574%_
                            _%$%e264305264577%_
                            _%$%hd264306264580%_
                            _%$%tl264307264582%_
                            _%$%e264308264585%_
                            _%$%hd264309264588%_
                            _%$%tl264310264590%_
                            _%$%e264311264593%_
                            _%$%hd264312264596%_
                            _%$%tl264313264598%_
                            _%$%e264314264601%_
                            _%$%hd264315264604%_
                            _%$%tl264316264606%_
                            _%$%e264317264609%_
                            _%$%hd264318264612%_
                            _%$%tl264319264614%_
                            _%$%e264320264617%_
                            _%$%hd264321264620%_
                            _%$%tl264322264622%_
                            _%$%e264323264625%_
                            _%$%hd264324264628%_
                            _%$%tl264325264630%_
                            _%$%e264326264633%_
                            _%$%hd264327264636%_
                            _%$%tl264328264638%_
                            _%$%e264329264641%_
                            _%$%hd264330264644%_
                            _%$%tl264331264646%_
                            _%$%e264332264649%_
                            _%$%hd264333264652%_
                            _%$%tl264334264654%_
                            _%$%e264335264657%_
                            _%$%hd264336264660%_
                            _%$%tl264337264662%_
                            _%$%e264338264665%_
                            _%$%hd264339264668%_
                            _%$%tl264340264670%_
                            _%$%e264341264673%_
                            _%$%hd264342264676%_
                            _%$%tl264343264678%_)
                     (let ((_%$%g264291264681%_ _%$%hd264342264676%_)
                           (_%$%g264292264682%_ _%$%hd264333264652%_)
                           (_%$%g264293264683%_ _%$%hd264324264628%_)
                           (_%$%g264294264684%_ _%$%hd264315264604%_)
                           (_%$%g264295264685%_ _%$%hd264306264580%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g264295264685%_
                              'bind-method!))
                           (_%__kont265239265240%_
                            _%$%g264291264681%_
                            _%$%g264292264682%_
                            _%$%g264293264683%_
                            _%$%g264294264684%_
                            _%$%g264295264685%_)
                           (_%__kont265243265244%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265237265238%_))
                  (let ((_%$%e264296264553%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx265237265238%_))))
                    (let ((_%$%tl264298264558%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e264296264553%_)))
                          (_%$%hd264297264556%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e264296264553%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl264298264558%_))
                          (let ((_%$%e264299264561%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl264298264558%_))))
                            (let ((_%$%tl264301264566%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e264299264561%_)))
                                  (_%$%hd264300264564%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e264299264561%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd264300264564%_))
                                  (let ((_%$%e264302264569%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd264300264564%_))))
                                    (let ((_%$%tl264304264574%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e264302264569%_)))
                                          (_%$%hd264303264572%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e264302264569%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd264303264572%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd264303264572%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl264304264574%_))
                                                  (let ((_%$%e264305264577%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl264304264574%_))))
                                                    (let ((_%$%tl264307264582%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e264305264577%_)))
                                                          (_%$%hd264306264580%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e264305264577%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl264307264582%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl264301264566%_))
                      (let ((_%$%e264308264585%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl264301264566%_))))
                        (let ((_%$%tl264310264590%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264308264585%_)))
                              (_%$%hd264309264588%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264308264585%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd264309264588%_))
                              (let ((_%$%e264311264593%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd264309264588%_))))
                                (let ((_%$%tl264313264598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264311264593%_)))
                                      (_%$%hd264312264596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264311264593%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd264312264596%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd264312264596%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl264313264598%_))
                                              (let ((_%$%e264314264601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl264313264598%_))))
                                                (let ((_%$%tl264316264606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e264314264601%_)))
                                                      (_%$%hd264315264604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e264314264601%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl264316264606%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl264310264590%_))
                                                          (let ((_%$%e264317264609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl264310264590%_))))
                    (let ((_%$%tl264319264614%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e264317264609%_)))
                          (_%$%hd264318264612%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e264317264609%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd264318264612%_))
                          (let ((_%$%e264320264617%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd264318264612%_))))
                            (let ((_%$%tl264322264622%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e264320264617%_)))
                                  (_%$%hd264321264620%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e264320264617%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd264321264620%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd264321264620%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl264322264622%_))
                                          (let ((_%$%e264323264625%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl264322264622%_))))
                                            (let ((_%$%tl264325264630%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e264323264625%_)))
                                                  (_%$%hd264324264628%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e264323264625%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl264325264630%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl264319264614%_))
                                                      (let ((_%$%e264326264633%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl264319264614%_))))
                (let ((_%$%tl264328264638%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e264326264633%_)))
                      (_%$%hd264327264636%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e264326264633%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd264327264636%_))
                      (let ((_%$%e264329264641%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd264327264636%_))))
                        (let ((_%$%tl264331264646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264329264641%_)))
                              (_%$%hd264330264644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264329264641%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd264330264644%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd264330264644%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl264331264646%_))
                                      (let ((_%$%e264332264649%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl264331264646%_))))
                                        (let ((_%$%tl264334264654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e264332264649%_)))
                                              (_%$%hd264333264652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e264332264649%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl264334264654%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl264328264638%_))
                                                  (let ((_%$%e264335264657%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl264328264638%_))))
                                                    (let ((_%$%tl264337264662%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e264335264657%_)))
                                                          (_%$%hd264336264660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e264335264657%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd264336264660%_))
                                                          (let ((_%$%e264338264665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd264336264660%_))))
                    (let ((_%$%tl264340264670%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e264338264665%_)))
                          (_%$%hd264339264668%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e264338264665%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd264339264668%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd264339264668%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl264340264670%_))
                                  (let ((_%$%e264341264673%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl264340264670%_))))
                                    (let ((_%$%tl264343264678%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e264341264673%_)))
                                          (_%$%hd264342264676%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e264341264673%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl264343264678%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl264337264662%_))
                                              (_%__match265372265373%_
                                               _%$%e264296264553%_
                                               _%$%hd264297264556%_
                                               _%$%tl264298264558%_
                                               _%$%e264299264561%_
                                               _%$%hd264300264564%_
                                               _%$%tl264301264566%_
                                               _%$%e264302264569%_
                                               _%$%hd264303264572%_
                                               _%$%tl264304264574%_
                                               _%$%e264305264577%_
                                               _%$%hd264306264580%_
                                               _%$%tl264307264582%_
                                               _%$%e264308264585%_
                                               _%$%hd264309264588%_
                                               _%$%tl264310264590%_
                                               _%$%e264311264593%_
                                               _%$%hd264312264596%_
                                               _%$%tl264313264598%_
                                               _%$%e264314264601%_
                                               _%$%hd264315264604%_
                                               _%$%tl264316264606%_
                                               _%$%e264317264609%_
                                               _%$%hd264318264612%_
                                               _%$%tl264319264614%_
                                               _%$%e264320264617%_
                                               _%$%hd264321264620%_
                                               _%$%tl264322264622%_
                                               _%$%e264323264625%_
                                               _%$%hd264324264628%_
                                               _%$%tl264325264630%_
                                               _%$%e264326264633%_
                                               _%$%hd264327264636%_
                                               _%$%tl264328264638%_
                                               _%$%e264329264641%_
                                               _%$%hd264330264644%_
                                               _%$%tl264331264646%_
                                               _%$%e264332264649%_
                                               _%$%hd264333264652%_
                                               _%$%tl264334264654%_
                                               _%$%e264335264657%_
                                               _%$%hd264336264660%_
                                               _%$%tl264337264662%_
                                               _%$%e264338264665%_
                                               _%$%hd264339264668%_
                                               _%$%tl264340264670%_
                                               _%$%e264341264673%_
                                               _%$%hd264342264676%_
                                               _%$%tl264343264678%_)
                                              (_%__kont265243265244%_))
                                          (_%__kont265243265244%_))))
                                  (_%__kont265243265244%_))
                              (_%__kont265243265244%_))
                          (_%__kont265243265244%_))))
                  (_%__kont265243265244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl264328264638%_))
                                                      (if (let ((__tmp265595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp265595 'bind-method!))
                  (let ((_%$%g264344264507%_ _%$%hd264333264652%_)
                        (_%$%g264345264508%_ _%$%hd264324264628%_)
                        (_%$%g264346264509%_ _%$%hd264315264604%_)
                        (_%$%g264347264510%_ _%$%hd264306264580%_))
                    (_%__kont265241265242%_
                     _%$%g264344264507%_
                     _%$%g264345264508%_
                     _%$%g264346264509%_
                     _%$%g264347264510%_))
                  (_%__kont265243265244%_))
              (_%__kont265243265244%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont265243265244%_))))
                                      (_%__kont265243265244%_))
                                  (_%__kont265243265244%_))
                              (_%__kont265243265244%_))))
                      (_%__kont265243265244%_))))
              (_%__kont265243265244%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont265243265244%_))))
                                          (_%__kont265243265244%_))
                                      (_%__kont265243265244%_))
                                  (_%__kont265243265244%_))))
                          (_%__kont265243265244%_))))
                  (_%__kont265243265244%_))
              (_%__kont265243265244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont265243265244%_))
                                          (_%__kont265243265244%_))
                                      (_%__kont265243265244%_))))
                              (_%__kont265243265244%_))))
                      (_%__kont265243265244%_))
                  (_%__kont265243265244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont265243265244%_))
                                              (_%__kont265243265244%_))
                                          (_%__kont265243265244%_))))
                                  (_%__kont265243265244%_))))
                          (_%__kont265243265244%_))))
                  (_%__kont265243265244%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self264108%_ _%stx264109%_)
        (let* ((_%__stx265481265482%_ _%stx264109%_)
               (_%$%g264112264152%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265481265482%_)))))
          (let ((_%__kont265483265484%_
                 (lambda (_%$%g264114264258%_ _%$%g264115264259%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g264115264259%_))
                               (cons _%$%g264114264258%_ '())))))
                (_%__kont265485265486%_
                 (lambda (_%$%g264137264181%_ _%$%g264138264182%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265481265482%_))
                (let ((_%$%e264116264202%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx265481265482%_))))
                  (let ((_%$%tl264118264207%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e264116264202%_)))
                        (_%$%hd264117264205%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e264116264202%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl264118264207%_))
                        (let ((_%$%e264119264210%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl264118264207%_))))
                          (let ((_%$%tl264121264215%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e264119264210%_)))
                                (_%$%hd264120264213%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e264119264210%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd264120264213%_))
                                (let ((_%$%e264122264218%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd264120264213%_))))
                                  (let ((_%$%tl264124264223%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e264122264218%_)))
                                        (_%$%hd264123264221%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e264122264218%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd264123264221%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd264123264221%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl264124264223%_))
                                                (let ((_%$%e264125264226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl264124264223%_))))
                                                  (let ((_%$%tl264127264231%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e264125264226%_)))
                                                        (_%$%hd264126264229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e264125264226%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl264127264231%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl264121264215%_))
                                                            (let ((_%$%e264128264234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl264121264215%_))))
                      (let ((_%$%tl264130264239%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e264128264234%_)))
                            (_%$%hd264129264237%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e264128264234%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd264129264237%_))
                            (let ((_%$%e264131264242%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd264129264237%_))))
                              (let ((_%$%tl264133264247%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e264131264242%_)))
                                    (_%$%hd264132264245%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e264131264242%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd264132264245%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd264132264245%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl264133264247%_))
                                            (let ((_%$%e264134264250%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl264133264247%_))))
                                              (let ((_%$%tl264136264255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e264134264250%_)))
                                                    (_%$%hd264135264253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e264134264250%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl264136264255%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl264130264239%_))
                                                        (_%__kont265483265484%_
                                                         _%$%hd264135264253%_
                                                         _%$%hd264126264229%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g264112264152%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl264130264239%_))
                                                        (_%__kont265485265486%_
                                                         _%$%hd264129264237%_
                                                         _%$%hd264120264213%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g264112264152%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl264130264239%_))
                                                (_%__kont265485265486%_
                                                 _%$%hd264129264237%_
                                                 _%$%hd264120264213%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g264112264152%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl264130264239%_))
                                            (_%__kont265485265486%_
                                             _%$%hd264129264237%_
                                             _%$%hd264120264213%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g264112264152%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl264130264239%_))
                                        (_%__kont265485265486%_
                                         _%$%hd264129264237%_
                                         _%$%hd264120264213%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g264112264152%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl264130264239%_))
                                (_%__kont265485265486%_
                                 _%$%hd264129264237%_
                                 _%$%hd264120264213%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g264112264152%_))))))
                    (let () (declare (not safe)) (_%$%g264112264152%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl264121264215%_))
                    (let ((_%$%e264145264173%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl264121264215%_))))
                      (let ((_%$%tl264147264178%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e264145264173%_)))
                            (_%$%hd264146264176%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e264145264173%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl264147264178%_))
                            (_%__kont265485265486%_
                             _%$%hd264146264176%_
                             _%$%hd264120264213%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g264112264152%_)))))
                    (let () (declare (not safe)) (_%$%g264112264152%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl264121264215%_))
                                                    (let ((_%$%e264145264173%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl264121264215%_))))
                                                      (let ((_%$%tl264147264178%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e264145264173%_)))
                    (_%$%hd264146264176%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e264145264173%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl264147264178%_))
                    (_%__kont265485265486%_
                     _%$%hd264146264176%_
                     _%$%hd264120264213%_)
                    (let () (declare (not safe)) (_%$%g264112264152%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g264112264152%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl264121264215%_))
                                                (let ((_%$%e264145264173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl264121264215%_))))
                                                  (let ((_%$%tl264147264178%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e264145264173%_)))
                                                        (_%$%hd264146264176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e264145264173%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl264147264178%_))
                                                        (_%__kont265485265486%_
                                                         _%$%hd264146264176%_
                                                         _%$%hd264120264213%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g264112264152%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g264112264152%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl264121264215%_))
                                            (let ((_%$%e264145264173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl264121264215%_))))
                                              (let ((_%$%tl264147264178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e264145264173%_)))
                                                    (_%$%hd264146264176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e264145264173%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl264147264178%_))
                                                    (_%__kont265485265486%_
                                                     _%$%hd264146264176%_
                                                     _%$%hd264120264213%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g264112264152%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g264112264152%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl264121264215%_))
                                    (let ((_%$%e264145264173%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl264121264215%_))))
                                      (let ((_%$%tl264147264178%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e264145264173%_)))
                                            (_%$%hd264146264176%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e264145264173%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl264147264178%_))
                                            (_%__kont265485265486%_
                                             _%$%hd264146264176%_
                                             _%$%hd264120264213%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g264112264152%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g264112264152%_))))))
                        (let () (declare (not safe)) (_%$%g264112264152%_)))))
                (let () (declare (not safe)) (_%$%g264112264152%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self264095%_)
        (let ((_%self264098%_ _%self264095%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264098%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self263869%_)
        (let* ((_%self263872%_ _%self263869%_)
               (_%$%self263881263897%_ _%self263872%_)
               (_%$%E263883263900%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self263881263897%_
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
               (_%$%K263884263915%_
                (lambda (_%methods263903%_
                         _%metaclass263904%_
                         _%system?263905%_
                         _%final?263906%_
                         _%struct?263907%_
                         _%constructor263908%_
                         _%fields263909%_
                         _%slots263910%_
                         _%precendence-list263911%_
                         _%super263912%_
                         _%id263913%_)
                  (cons '@class
                        (cons _%id263913%_
                              (cons _%super263912%_
                                    (cons _%precendence-list263911%_
                                          (cons _%slots263910%_
                                                (cons _%fields263909%_
                                                      (cons _%constructor263908%_
                                                            (cons _%struct?263907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?263906%_
                                (cons _%system?263905%_
                                      (cons _%metaclass263904%_
                                            (cons (if _%methods263903%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods263903%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e263885263918%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '1
                   '#f
                   '#f)))
               (_%id263921%_ _%$%e263885263918%_)
               (_%$%e263886263923%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '2
                   '#f
                   '#f)))
               (_%super263926%_ _%$%e263886263923%_)
               (_%$%e263887263928%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list263931%_ _%$%e263887263928%_)
               (_%$%e263888263933%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '4
                   '#f
                   '#f)))
               (_%slots263936%_ _%$%e263888263933%_)
               (_%$%e263889263938%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '5
                   '#f
                   '#f)))
               (_%fields263941%_ _%$%e263889263938%_)
               (_%$%e263890263943%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '6
                   '#f
                   '#f)))
               (_%constructor263946%_ _%$%e263890263943%_)
               (_%$%e263891263948%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '7
                   '#f
                   '#f)))
               (_%struct?263951%_ _%$%e263891263948%_)
               (_%$%e263892263953%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '8
                   '#f
                   '#f)))
               (_%final?263956%_ _%$%e263892263953%_)
               (_%$%e263893263958%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '9
                   '#f
                   '#f)))
               (_%system?263961%_ _%$%e263893263958%_)
               (_%$%e263894263963%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass263966%_ _%$%e263894263963%_)
               (_%$%e263895263968%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263881263897%_
                   '11
                   '#f
                   '#f)))
               (_%methods263971%_ _%$%e263895263968%_))
          (_%$%K263884263915%_
           _%methods263971%_
           _%metaclass263966%_
           _%system?263961%_
           _%final?263956%_
           _%struct?263951%_
           _%constructor263946%_
           _%fields263941%_
           _%slots263936%_
           _%precendence-list263931%_
           _%super263926%_
           _%id263921%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self263734%_)
        (let ((_%self263737%_ _%self263734%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263737%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self263599%_)
        (let ((_%self263602%_ _%self263599%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263602%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self263464%_)
        (let ((_%self263467%_ _%self263464%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263467%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self263467%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self263467%_
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
      (lambda (_%self263329%_)
        (let ((_%self263332%_ _%self263329%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263332%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self263332%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self263332%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self263194%_)
        (let ((_%self263197%_ _%self263194%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263197%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self263197%_
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
      (lambda (_%self263008%_)
        (let* ((_%self263011%_ _%self263008%_)
               (_%$%self263020263029%_ _%self263011%_)
               (_%$%E263022263032%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self263020263029%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K263023263051%_
                (lambda (_%dispatch263035%_
                         _%arity263036%_
                         _%signature263037%_)
                  (if _%signature263037%_
                      (let ((_%signature263039%_ _%signature263037%_))
                        (cons '@lambda
                              (cons _%arity263036%_
                                    (cons _%dispatch263035%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature263039%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature263039%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature263039%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature263039%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature263039%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity263036%_
                                  (cons _%dispatch263035%_ '()))))))
               (_%$%e263024263054%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263020263029%_
                   '1
                   '#f
                   '#f)))
               (_%$%e263025263057%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263020263029%_
                   '2
                   '#f
                   '#f)))
               (_%signature263060%_ _%$%e263025263057%_)
               (_%$%e263026263062%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263020263029%_
                   '3
                   '#f
                   '#f)))
               (_%arity263065%_ _%$%e263026263062%_)
               (_%$%e263027263067%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263020263029%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch263070%_ _%$%e263027263067%_))
          (_%$%K263023263051%_
           _%dispatch263070%_
           _%arity263065%_
           _%signature263060%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self262868%_)
        (let ((_%self262871%_ _%self262868%_))
          (letrec ((_%clause-e262882%_
                    (lambda (_%clause262884%_)
                      (cdr (let ((__method265569
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause262884%_
                                     'typedecl))))
                             (if __method265569
                                 (let ()
                                   (declare (not safe))
                                   (__method265569 _%clause262884%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause262884%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e262882%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self262871%_
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
      (lambda (_%self262733%_)
        (let ((_%self262736%_ _%self262733%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self262736%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self262736%_
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
      (lambda (_%self262598%_)
        (let ((_%self262601%_ _%self262598%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self262601%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self262601%_
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
      (lambda (_%self262463%_)
        (let ((_%self262466%_ _%self262463%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self262466%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
