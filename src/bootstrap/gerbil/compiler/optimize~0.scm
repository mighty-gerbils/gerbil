(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712944169)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp197646
                   (let ((__obj197640
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
                       (gxc#optimizer-info:::init! __obj197640))
                     __obj197640)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp197646)))))
    (define gxc#optimize!
      (lambda (_%ctx197249%_)
        (let ((__tmp197649
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx197249%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx197249%_)
                 (let ((__tmp197651
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp197650
                        (##structure-ref
                         _%ctx197249%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp197651 __tmp197650 '#t))
                 (let ((_%code197252%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx197249%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx197249%_
                    _%code197252%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp197648 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp197647 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197649
           gxc#current-compile-mutators
           __tmp197648
           gxc#current-compile-local-type
           __tmp197647))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx197235%_)
        (letrec ((_%load-it!197237%_
                  (lambda (_%id197247%_)
                    (if (let ((__tmp197652
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp197652 _%id197247%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id197247%_)
                          (let ((__tmp197653
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp197653 _%id197247%_ '#t)))))))
          (let* ((_%modid197239%_
                  (##structure-ref
                   _%ctx197235%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str197241%_ (symbol->string _%modid197239%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str197241%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str197241%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!197237%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!197237%_
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
      (lambda (_%ctx197172%_)
        (letrec* ((_%deps197174%_
                   (let* ((_%imports197225%_
                           (##structure-ref
                            _%ctx197172%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e197227%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx197172%_))))
                     (if _%$e197227%_
                         ((lambda (_%g197229197231%_)
                            (cons _%g197229197231%_ _%imports197225%_))
                          _%$e197227%_)
                         _%imports197225%_))))
          (let _%lp197176%_ ((_%rest197178%_ _%deps197174%_))
            (let* ((_%rest197179197187%_ _%rest197178%_)
                   (_%else197181197195%_ (lambda () '#!void))
                   (_%K197183197213%_
                    (lambda (_%rest197198%_ _%hd197199%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd197199%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp197655
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp197654
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd197199%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp197655 __tmp197654))
                                '#!void
                                (begin
                                  (let ((_%$e197202%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd197199%_))))
                                    (if _%$e197202%_
                                        ((lambda (_%pre197205%_)
                                           (_%lp197176%_
                                            (cons _%pre197205%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd197199%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e197202%_)
                                        (_%lp197176%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd197199%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd197199%_)))
                            (_%lp197176%_ _%rest197198%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd197199%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp197657
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp197656
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd197199%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp197657 __tmp197656))
                                    '#!void
                                    (begin
                                      (_%lp197176%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd197199%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd197199%_)))
                                (_%lp197176%_ _%rest197198%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd197199%_
                                     'gx#module-import::t))
                                  (_%lp197176%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd197199%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest197198%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd197199%_
                                         'gx#module-export::t))
                                      (_%lp197176%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd197199%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest197198%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd197199%_
                                             'gx#import-set::t))
                                          (_%lp197176%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd197199%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest197198%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd197199%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest197179197187%_))
                  (let ((_%hd197184197216%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest197179197187%_)))
                        (_%tl197185197218%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest197179197187%_))))
                    (let* ((_%hd197221%_ _%hd197184197216%_)
                           (_%rest197223%_ _%tl197185197218%_))
                      (_%K197183197213%_ _%rest197223%_ _%hd197221%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx197152%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx197152%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx197152%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht197154%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id197156%_
                    (##structure-ref
                     _%ctx197152%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod197158%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht197154%_ _%id197156%_)))
                   (_%$e197161%_ _%mod197158%_))
              (if _%$e197161%_
                  _%$e197161%_
                  (let* ((_%mod197164%_
                          (gxc#optimizer-import-ssxi _%ctx197152%_))
                         (_%val197169%_
                          (let ((_%$e197166%_ _%mod197164%_))
                            (if _%$e197166%_ _%$e197166%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht197154%_ _%id197156%_ _%val197169%_))
                    _%val197169%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx197150%_)
        (if (##structure-ref _%ctx197150%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx197150%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id197127%_)
        (letrec ((_%catch-e197129%_
                  (lambda (_%exn197148%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn197148%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn197148%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id197127%_))))
                    '#f))
                 (_%import-e197130%_
                  (lambda ()
                    (let* ((_%str-id197133%_
                            (let ((__tmp197658
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id197127%_))))
                              (declare (not safe))
                              (##string-append __tmp197658 '".ssxi")))
                           (_%artefact-path197141%_
                            (let ((_%odir197134197136%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir197134197136%_
                                  (let ((_%odir197139%_ _%odir197134197136%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id197133%_
                                        '".ss"))
                                     _%odir197139%_))
                                  '#f)))
                           (_%library-path197143%_
                            (let ((__tmp197659
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id197133%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp197659)))
                           (_%ssxi-path197145%_
                            (if (and _%artefact-path197141%_
                                     (file-exists? _%artefact-path197141%_))
                                _%artefact-path197141%_
                                _%library-path197143%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path197145%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path197145%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e197129%_ _%import-e197130%_)))))
    (define gxc#optimize-source
      (lambda (_%stx197118%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx197118%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx197118%_))
        (let* ((_%stx197120%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx197118%_)))
               (_%stx197122%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx197120%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx197122%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx197122%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx197122%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx197122%_))
          (let ((_%stx197125%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx197122%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx197125%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp197661 (list gxc#::generate-runtime-empty::t))
            (__tmp197660 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp197661
         '()
         __tmp197660
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args197115%_
        (apply make-instance gxc#::generate-ssxi::t _%$args197115%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp197662
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
        (__make-promise __tmp197662)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx197107%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self197110%_
                (let ((__obj197642
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj197642))
               (__tmp197663
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197110%_ _%stx197107%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197663
           gxc#current-compile-method
           _%self197110%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self197067%_ _%stx197068%_)
        (let* ((_%g197070197080%_
                (lambda (_%g197071197077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197071197077%_))))
               (_%g197069197104%_
                (lambda (_%g197071197083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197071197083%_))
                      (let ((_%e197073197085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197071197083%_))))
                        (let ((_%hd197074197088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197073197085%_)))
                              (_%tl197075197090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197073197085%_))))
                          ((lambda (_%L197093%_)
                             (let ((__tmp197666
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self197067%_
                                         _%stx197068%_))))
                                   (__tmp197664
                                    (let ((__tmp197665
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp197665 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp197666
                                gx#current-expander-phi
                                __tmp197664)))
                           _%tl197075197090%_)))
                      (_%g197070197080%_ _%g197071197083%_)))))
          (_%g197069197104%_ _%stx197068%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self197006%_ _%stx197007%_)
        (let* ((_%g197009197023%_
                (lambda (_%g197010197020%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197010197020%_))))
               (_%g197008197064%_
                (lambda (_%g197010197026%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197010197026%_))
                      (let ((_%e197013197028%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197010197026%_))))
                        (let ((_%hd197014197031%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197013197028%_)))
                              (_%tl197015197033%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197013197028%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197015197033%_))
                              (let ((_%e197016197036%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197015197033%_))))
                                (let ((_%hd197017197039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197016197036%_)))
                                      (_%tl197018197041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197016197036%_))))
                                  ((lambda (_%L197044%_ _%L197045%_)
                                     (let* ((_%ctx197058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L197045%_)))
                                            (_%code197060%_
                                             (##structure-ref
                                              _%ctx197058%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp197667
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self197006%_
                                                  _%code197060%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp197667
                                        gx#current-expander-context
                                        _%ctx197058%_)))
                                   _%tl197018197041%_
                                   _%hd197017197039%_)))
                              (_%g197009197023%_ _%g197010197026%_))))
                      (_%g197009197023%_ _%g197010197026%_)))))
          (_%g197008197064%_ _%stx197007%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self196811%_ _%stx196812%_)
        (letrec ((_%generate-e196814%_
                  (lambda (_%id196991%_)
                    (let* ((_%sym196993%_
                            (if (let ((__tmp197668
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp197668))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id196991%_))
                                '#f))
                           (_%$e196995%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym196993%_))))
                      (if _%$e196995%_
                          ((lambda (_%klass196998%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym196993%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym196993%_
                                                     (cons (let ((__method197643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass196998%_ 'typedecl))))
                     (if __method197643
                         (let ()
                           (declare (not safe))
                           (__method197643 _%klass196998%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass196998%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym196993%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym196993%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e196995%_)
                          (let ((_%$e197000%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym196993%_))))
                            (if _%$e197000%_
                                ((lambda (_%type197003%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym196993%_
                                      '" "
                                      _%type197003%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type197003%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym196993%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym196993%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type197003%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym196993%_
                                                   (cons (let ((__method197644
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type197003%_ 'typedecl))))
                   (if __method197644
                       (let ()
                         (declare (not safe))
                         (__method197644 _%type197003%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type197003%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e197000%_)
                                '(begin))))))))
          (let* ((_%__stx197255197256%_ _%stx196812%_)
                 (_%g196817196855%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx197255197256%_)))))
            (let ((_%__kont197257197258%_
                   (lambda (_%L196973%_) (_%generate-e196814%_ _%L196973%_)))
                  (_%__kont197259197260%_
                   (lambda (_%L196908%_)
                     (let ((_%types196934%_
                            (map _%generate-e196814%_
                                 (let ((__tmp197669
                                        (lambda (_%g196926196929%_
                                                 _%g196927196931%_)
                                          (cons _%g196926196929%_
                                                _%g196927196931%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp197669 '() _%L196908%_)))))
                       (cons 'begin _%types196934%_)))))
              (let ((_%__match197310197311%_
                     (lambda (_%e196833196860%_
                              _%hd196834196863%_
                              _%tl196835196865%_
                              _%e196836196868%_
                              _%hd196837196871%_
                              _%tl196838196873%_
                              _%__splice197261197262%_
                              _%target196839196876%_
                              _%tl196841196878%_)
                       (letrec ((_%loop196842196881%_
                                 (lambda (_%hd196840196884%_
                                          _%id196846196886%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd196840196884%_))
                                       (let ((_%e196843196889%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd196840196884%_))))
                                         (let ((_%lp-tl196845196894%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e196843196889%_)))
                                               (_%lp-hd196844196892%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e196843196889%_))))
                                           (_%loop196842196881%_
                                            _%lp-tl196845196894%_
                                            (cons _%lp-hd196844196892%_
                                                  _%id196846196886%_))))
                                       (let ((_%id196847196897%_
                                              (reverse _%id196846196886%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl196838196873%_))
                                             (let ((_%e196848196900%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl196838196873%_))))
                                               (let ((_%tl196850196905%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e196848196900%_)))
                                                     (_%hd196849196903%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e196848196900%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl196850196905%_))
                                                     (_%__kont197259197260%_
                                                      _%id196847196897%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g196817196855%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g196817196855%_))))))))
                         (_%loop196842196881%_ _%target196839196876%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx197255197256%_))
                    (let ((_%e196820196941%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx197255197256%_))))
                      (let ((_%tl196822196946%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196820196941%_)))
                            (_%hd196821196944%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196820196941%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl196822196946%_))
                            (let ((_%e196823196949%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl196822196946%_))))
                              (let ((_%tl196825196954%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e196823196949%_)))
                                    (_%hd196824196952%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e196823196949%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd196824196952%_))
                                    (let ((_%e196826196957%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd196824196952%_))))
                                      (let ((_%tl196828196962%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e196826196957%_)))
                                            (_%hd196827196960%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e196826196957%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl196828196962%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196825196954%_))
                                                (let ((_%e196829196965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196825196954%_))))
                                                  (let ((_%tl196831196970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196829196965%_)))
                                                        (_%hd196830196968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196829196965%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196831196970%_))
                                                        (_%__kont197257197258%_
                                                         _%hd196827196960%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd196824196952%_))
                                                            (let ((_%__splice197261197262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd196824196952%_ '0))))
                      (let ((_%tl196841196878%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice197261197262%_ '1)))
                            (_%target196839196876%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice197261197262%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl196841196878%_))
                            (_%__match197310197311%_
                             _%e196820196941%_
                             _%hd196821196944%_
                             _%tl196822196946%_
                             _%e196823196949%_
                             _%hd196824196952%_
                             _%tl196825196954%_
                             _%__splice197261197262%_
                             _%target196839196876%_
                             _%tl196841196878%_)
                            (let ()
                              (declare (not safe))
                              (_%g196817196855%_)))))
                    (let () (declare (not safe)) (_%g196817196855%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd196824196952%_))
                                                    (let ((_%__splice197261197262%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd196824196952%_
                                                              '0))))
                                                      (let ((_%tl196841196878%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice197261197262%_ '1)))
                    (_%target196839196876%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice197261197262%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl196841196878%_))
                    (_%__match197310197311%_
                     _%e196820196941%_
                     _%hd196821196944%_
                     _%tl196822196946%_
                     _%e196823196949%_
                     _%hd196824196952%_
                     _%tl196825196954%_
                     _%__splice197261197262%_
                     _%target196839196876%_
                     _%tl196841196878%_)
                    (let () (declare (not safe)) (_%g196817196855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g196817196855%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd196824196952%_))
                                                (let ((_%__splice197261197262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd196824196952%_
                                                          '0))))
                                                  (let ((_%tl196841196878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice197261197262%_
                                                            '1)))
                                                        (_%target196839196876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice197261197262%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196841196878%_))
                                                        (_%__match197310197311%_
                                                         _%e196820196941%_
                                                         _%hd196821196944%_
                                                         _%tl196822196946%_
                                                         _%e196823196949%_
                                                         _%hd196824196952%_
                                                         _%tl196825196954%_
                                                         _%__splice197261197262%_
                                                         _%target196839196876%_
                                                         _%tl196841196878%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196817196855%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196817196855%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd196824196952%_))
                                        (let ((_%__splice197261197262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd196824196952%_
                                                  '0))))
                                          (let ((_%tl196841196878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice197261197262%_
                                                    '1)))
                                                (_%target196839196876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice197261197262%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196841196878%_))
                                                (_%__match197310197311%_
                                                 _%e196820196941%_
                                                 _%hd196821196944%_
                                                 _%tl196822196946%_
                                                 _%e196823196949%_
                                                 _%hd196824196952%_
                                                 _%tl196825196954%_
                                                 _%__splice197261197262%_
                                                 _%target196839196876%_
                                                 _%tl196841196878%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196817196855%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g196817196855%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g196817196855%_)))))
                    (let () (declare (not safe)) (_%g196817196855%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self196364%_ _%stx196365%_)
        (let* ((_%__stx197313197314%_ _%stx196365%_)
               (_%g196369196471%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197313197314%_)))))
          (let ((_%__kont197315197316%_
                 (lambda (_%L196761%_
                          _%L196762%_
                          _%L196763%_
                          _%L196764%_
                          _%L196765%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L196764%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L196763%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L196762%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L196761%_))
                                                 '())))))))
                (_%__kont197317197318%_
                 (lambda (_%L196587%_ _%L196588%_ _%L196589%_ _%L196590%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L196589%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L196588%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L196587%_))
                                           (cons '#f '())))))))
                (_%__kont197319197320%_ (lambda () '(begin))))
            (let ((_%__match197448197449%_
                   (lambda (_%e196376196633%_
                            _%hd196377196636%_
                            _%tl196378196638%_
                            _%e196379196641%_
                            _%hd196380196644%_
                            _%tl196381196646%_
                            _%e196382196649%_
                            _%hd196383196652%_
                            _%tl196384196654%_
                            _%e196385196657%_
                            _%hd196386196660%_
                            _%tl196387196662%_
                            _%e196388196665%_
                            _%hd196389196668%_
                            _%tl196390196670%_
                            _%e196391196673%_
                            _%hd196392196676%_
                            _%tl196393196678%_
                            _%e196394196681%_
                            _%hd196395196684%_
                            _%tl196396196686%_
                            _%e196397196689%_
                            _%hd196398196692%_
                            _%tl196399196694%_
                            _%e196400196697%_
                            _%hd196401196700%_
                            _%tl196402196702%_
                            _%e196403196705%_
                            _%hd196404196708%_
                            _%tl196405196710%_
                            _%e196406196713%_
                            _%hd196407196716%_
                            _%tl196408196718%_
                            _%e196409196721%_
                            _%hd196410196724%_
                            _%tl196411196726%_
                            _%e196412196729%_
                            _%hd196413196732%_
                            _%tl196414196734%_
                            _%e196415196737%_
                            _%hd196416196740%_
                            _%tl196417196742%_
                            _%e196418196745%_
                            _%hd196419196748%_
                            _%tl196420196750%_
                            _%e196421196753%_
                            _%hd196422196756%_
                            _%tl196423196758%_)
                     (let ((_%L196761%_ _%hd196422196756%_)
                           (_%L196762%_ _%hd196413196732%_)
                           (_%L196763%_ _%hd196404196708%_)
                           (_%L196764%_ _%hd196395196684%_)
                           (_%L196765%_ _%hd196386196660%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L196765%_
                              'bind-method!))
                           (_%__kont197315197316%_
                            _%L196761%_
                            _%L196762%_
                            _%L196763%_
                            _%L196764%_
                            _%L196765%_)
                           (_%__kont197319197320%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197313197314%_))
                  (let ((_%e196376196633%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197313197314%_))))
                    (let ((_%tl196378196638%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196376196633%_)))
                          (_%hd196377196636%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196376196633%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196378196638%_))
                          (let ((_%e196379196641%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196378196638%_))))
                            (let ((_%tl196381196646%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196379196641%_)))
                                  (_%hd196380196644%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196379196641%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196380196644%_))
                                  (let ((_%e196382196649%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196380196644%_))))
                                    (let ((_%tl196384196654%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196382196649%_)))
                                          (_%hd196383196652%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196382196649%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196383196652%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196383196652%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196384196654%_))
                                                  (let ((_%e196385196657%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196384196654%_))))
                                                    (let ((_%tl196387196662%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196385196657%_)))
                                                          (_%hd196386196660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196385196657%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196387196662%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196381196646%_))
                      (let ((_%e196388196665%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196381196646%_))))
                        (let ((_%tl196390196670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196388196665%_)))
                              (_%hd196389196668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196388196665%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd196389196668%_))
                              (let ((_%e196391196673%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd196389196668%_))))
                                (let ((_%tl196393196678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196391196673%_)))
                                      (_%hd196392196676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196391196673%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd196392196676%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd196392196676%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196393196678%_))
                                              (let ((_%e196394196681%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196393196678%_))))
                                                (let ((_%tl196396196686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196394196681%_)))
                                                      (_%hd196395196684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196394196681%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196396196686%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl196390196670%_))
                                                          (let ((_%e196397196689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl196390196670%_))))
                    (let ((_%tl196399196694%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196397196689%_)))
                          (_%hd196398196692%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196397196689%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196398196692%_))
                          (let ((_%e196400196697%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196398196692%_))))
                            (let ((_%tl196402196702%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196400196697%_)))
                                  (_%hd196401196700%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196400196697%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd196401196700%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd196401196700%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196402196702%_))
                                          (let ((_%e196403196705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196402196702%_))))
                                            (let ((_%tl196405196710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196403196705%_)))
                                                  (_%hd196404196708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196403196705%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196405196710%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196399196694%_))
                                                      (let ((_%e196406196713%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl196399196694%_))))
                (let ((_%tl196408196718%_
                       (let () (declare (not safe)) (##cdr _%e196406196713%_)))
                      (_%hd196407196716%_
                       (let ()
                         (declare (not safe))
                         (##car _%e196406196713%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd196407196716%_))
                      (let ((_%e196409196721%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd196407196716%_))))
                        (let ((_%tl196411196726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196409196721%_)))
                              (_%hd196410196724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196409196721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd196410196724%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd196410196724%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196411196726%_))
                                      (let ((_%e196412196729%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196411196726%_))))
                                        (let ((_%tl196414196734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196412196729%_)))
                                              (_%hd196413196732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196412196729%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196414196734%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196408196718%_))
                                                  (let ((_%e196415196737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196408196718%_))))
                                                    (let ((_%tl196417196742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196415196737%_)))
                                                          (_%hd196416196740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196415196737%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd196416196740%_))
                                                          (let ((_%e196418196745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd196416196740%_))))
                    (let ((_%tl196420196750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196418196745%_)))
                          (_%hd196419196748%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196418196745%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd196419196748%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd196419196748%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196420196750%_))
                                  (let ((_%e196421196753%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196420196750%_))))
                                    (let ((_%tl196423196758%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196421196753%_)))
                                          (_%hd196422196756%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196421196753%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196423196758%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196417196742%_))
                                              (_%__match197448197449%_
                                               _%e196376196633%_
                                               _%hd196377196636%_
                                               _%tl196378196638%_
                                               _%e196379196641%_
                                               _%hd196380196644%_
                                               _%tl196381196646%_
                                               _%e196382196649%_
                                               _%hd196383196652%_
                                               _%tl196384196654%_
                                               _%e196385196657%_
                                               _%hd196386196660%_
                                               _%tl196387196662%_
                                               _%e196388196665%_
                                               _%hd196389196668%_
                                               _%tl196390196670%_
                                               _%e196391196673%_
                                               _%hd196392196676%_
                                               _%tl196393196678%_
                                               _%e196394196681%_
                                               _%hd196395196684%_
                                               _%tl196396196686%_
                                               _%e196397196689%_
                                               _%hd196398196692%_
                                               _%tl196399196694%_
                                               _%e196400196697%_
                                               _%hd196401196700%_
                                               _%tl196402196702%_
                                               _%e196403196705%_
                                               _%hd196404196708%_
                                               _%tl196405196710%_
                                               _%e196406196713%_
                                               _%hd196407196716%_
                                               _%tl196408196718%_
                                               _%e196409196721%_
                                               _%hd196410196724%_
                                               _%tl196411196726%_
                                               _%e196412196729%_
                                               _%hd196413196732%_
                                               _%tl196414196734%_
                                               _%e196415196737%_
                                               _%hd196416196740%_
                                               _%tl196417196742%_
                                               _%e196418196745%_
                                               _%hd196419196748%_
                                               _%tl196420196750%_
                                               _%e196421196753%_
                                               _%hd196422196756%_
                                               _%tl196423196758%_)
                                              (_%__kont197319197320%_))
                                          (_%__kont197319197320%_))))
                                  (_%__kont197319197320%_))
                              (_%__kont197319197320%_))
                          (_%__kont197319197320%_))))
                  (_%__kont197319197320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196408196718%_))
                                                      (if (let ((__tmp197670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp197670 'bind-method!))
                  (let ((_%L196587%_ _%hd196413196732%_)
                        (_%L196588%_ _%hd196404196708%_)
                        (_%L196589%_ _%hd196395196684%_)
                        (_%L196590%_ _%hd196386196660%_))
                    (_%__kont197317197318%_
                     _%L196587%_
                     _%L196588%_
                     _%L196589%_
                     _%L196590%_))
                  (_%__kont197319197320%_))
              (_%__kont197319197320%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont197319197320%_))))
                                      (_%__kont197319197320%_))
                                  (_%__kont197319197320%_))
                              (_%__kont197319197320%_))))
                      (_%__kont197319197320%_))))
              (_%__kont197319197320%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197319197320%_))))
                                          (_%__kont197319197320%_))
                                      (_%__kont197319197320%_))
                                  (_%__kont197319197320%_))))
                          (_%__kont197319197320%_))))
                  (_%__kont197319197320%_))
              (_%__kont197319197320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont197319197320%_))
                                          (_%__kont197319197320%_))
                                      (_%__kont197319197320%_))))
                              (_%__kont197319197320%_))))
                      (_%__kont197319197320%_))
                  (_%__kont197319197320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197319197320%_))
                                              (_%__kont197319197320%_))
                                          (_%__kont197319197320%_))))
                                  (_%__kont197319197320%_))))
                          (_%__kont197319197320%_))))
                  (_%__kont197319197320%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self196188%_ _%stx196189%_)
        (let* ((_%__stx197557197558%_ _%stx196189%_)
               (_%g196192196232%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197557197558%_)))))
          (let ((_%__kont197559197560%_
                 (lambda (_%L196338%_ _%L196339%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L196339%_))
                               (cons _%L196338%_ '())))))
                (_%__kont197561197562%_
                 (lambda (_%L196261%_ _%L196262%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx197557197558%_))
                (let ((_%e196196196282%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx197557197558%_))))
                  (let ((_%tl196198196287%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196196196282%_)))
                        (_%hd196197196285%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196196196282%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196198196287%_))
                        (let ((_%e196199196290%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl196198196287%_))))
                          (let ((_%tl196201196295%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196199196290%_)))
                                (_%hd196200196293%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196199196290%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd196200196293%_))
                                (let ((_%e196202196298%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd196200196293%_))))
                                  (let ((_%tl196204196303%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196202196298%_)))
                                        (_%hd196203196301%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196202196298%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd196203196301%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd196203196301%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196204196303%_))
                                                (let ((_%e196205196306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196204196303%_))))
                                                  (let ((_%tl196207196311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196205196306%_)))
                                                        (_%hd196206196309%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196205196306%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196207196311%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl196201196295%_))
                                                            (let ((_%e196208196314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl196201196295%_))))
                      (let ((_%tl196210196319%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196208196314%_)))
                            (_%hd196209196317%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196208196314%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd196209196317%_))
                            (let ((_%e196211196322%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd196209196317%_))))
                              (let ((_%tl196213196327%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e196211196322%_)))
                                    (_%hd196212196325%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e196211196322%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd196212196325%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd196212196325%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196213196327%_))
                                            (let ((_%e196214196330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl196213196327%_))))
                                              (let ((_%tl196216196335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196214196330%_)))
                                                    (_%hd196215196333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196214196330%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl196216196335%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196210196319%_))
                                                        (_%__kont197559197560%_
                                                         _%hd196215196333%_
                                                         _%hd196206196309%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196192196232%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196210196319%_))
                                                        (_%__kont197561197562%_
                                                         _%hd196209196317%_
                                                         _%hd196200196293%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196192196232%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196210196319%_))
                                                (_%__kont197561197562%_
                                                 _%hd196209196317%_
                                                 _%hd196200196293%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196192196232%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl196210196319%_))
                                            (_%__kont197561197562%_
                                             _%hd196209196317%_
                                             _%hd196200196293%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g196192196232%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196210196319%_))
                                        (_%__kont197561197562%_
                                         _%hd196209196317%_
                                         _%hd196200196293%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g196192196232%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196210196319%_))
                                (_%__kont197561197562%_
                                 _%hd196209196317%_
                                 _%hd196200196293%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196192196232%_))))))
                    (let () (declare (not safe)) (_%g196192196232%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl196201196295%_))
                    (let ((_%e196225196253%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl196201196295%_))))
                      (let ((_%tl196227196258%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196225196253%_)))
                            (_%hd196226196256%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196225196253%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl196227196258%_))
                            (_%__kont197561197562%_
                             _%hd196226196256%_
                             _%hd196200196293%_)
                            (let ()
                              (declare (not safe))
                              (_%g196192196232%_)))))
                    (let () (declare (not safe)) (_%g196192196232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl196201196295%_))
                                                    (let ((_%e196225196253%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl196201196295%_))))
                                                      (let ((_%tl196227196258%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e196225196253%_)))
                    (_%hd196226196256%_
                     (let () (declare (not safe)) (##car _%e196225196253%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl196227196258%_))
                    (_%__kont197561197562%_
                     _%hd196226196256%_
                     _%hd196200196293%_)
                    (let () (declare (not safe)) (_%g196192196232%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g196192196232%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196201196295%_))
                                                (let ((_%e196225196253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196201196295%_))))
                                                  (let ((_%tl196227196258%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196225196253%_)))
                                                        (_%hd196226196256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196225196253%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196227196258%_))
                                                        (_%__kont197561197562%_
                                                         _%hd196226196256%_
                                                         _%hd196200196293%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196192196232%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196192196232%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196201196295%_))
                                            (let ((_%e196225196253%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl196201196295%_))))
                                              (let ((_%tl196227196258%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196225196253%_)))
                                                    (_%hd196226196256%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196225196253%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl196227196258%_))
                                                    (_%__kont197561197562%_
                                                     _%hd196226196256%_
                                                     _%hd196200196293%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g196192196232%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g196192196232%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl196201196295%_))
                                    (let ((_%e196225196253%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl196201196295%_))))
                                      (let ((_%tl196227196258%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e196225196253%_)))
                                            (_%hd196226196256%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e196225196253%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl196227196258%_))
                                            (_%__kont197561197562%_
                                             _%hd196226196256%_
                                             _%hd196200196293%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g196192196232%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g196192196232%_))))))
                        (let () (declare (not safe)) (_%g196192196232%_)))))
                (let () (declare (not safe)) (_%g196192196232%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self194382196173%_)
        (let* ((_%self196176%_ _%self194382196173%_)
               (_%self196178%_ _%self196176%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196178%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self194383195944%_)
        (let* ((_%self195947%_ _%self194383195944%_)
               (_%self195949%_ _%self195947%_)
               (_%self195958195974%_ _%self195949%_)
               (_%E195960195978%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195958195974%_
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
               (_%K195961195993%_
                (lambda (_%methods195981%_
                         _%metaclass195982%_
                         _%system?195983%_
                         _%final?195984%_
                         _%struct?195985%_
                         _%constructor195986%_
                         _%fields195987%_
                         _%slots195988%_
                         _%precendence-list195989%_
                         _%super195990%_
                         _%id195991%_)
                  (cons '@class
                        (cons _%id195991%_
                              (cons _%super195990%_
                                    (cons _%precendence-list195989%_
                                          (cons _%slots195988%_
                                                (cons _%fields195987%_
                                                      (cons _%constructor195986%_
                                                            (cons _%struct?195985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?195984%_
                                (cons _%system?195983%_
                                      (cons _%metaclass195982%_
                                            (cons (if _%methods195981%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods195981%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e195962195996%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195958195974%_ '1 '#f '#f)))
               (_%id195999%_ _%e195962195996%_)
               (_%e195963196001%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195958195974%_ '2 '#f '#f)))
               (_%super196004%_ _%e195963196001%_)
               (_%e195964196006%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195958195974%_ '3 '#f '#f)))
               (_%precendence-list196009%_ _%e195964196006%_)
               (_%e195965196011%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195958195974%_ '4 '#f '#f)))
               (_%slots196014%_ _%e195965196011%_)
               (_%e195966196016%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195958195974%_ '5 '#f '#f)))
               (_%fields196019%_ _%e195966196016%_)
               (_%e195967196021%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195958195974%_ '6 '#f '#f)))
               (_%constructor196024%_ _%e195967196021%_)
               (_%e195968196026%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195958195974%_ '7 '#f '#f)))
               (_%struct?196029%_ _%e195968196026%_)
               (_%e195969196031%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195958195974%_ '8 '#f '#f)))
               (_%final?196034%_ _%e195969196031%_)
               (_%e195970196036%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195958195974%_ '9 '#f '#f)))
               (_%system?196039%_ _%e195970196036%_)
               (_%e195971196041%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self195958195974%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass196044%_ _%e195971196041%_)
               (_%e195972196046%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self195958195974%_
                   '11
                   '#f
                   '#f)))
               (_%methods196049%_ _%e195972196046%_))
          (_%K195961195993%_
           _%methods196049%_
           _%metaclass196044%_
           _%system?196039%_
           _%final?196034%_
           _%struct?196029%_
           _%constructor196024%_
           _%fields196019%_
           _%slots196014%_
           _%precendence-list196009%_
           _%super196004%_
           _%id195999%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self194384195807%_)
        (let* ((_%self195810%_ _%self194384195807%_)
               (_%self195812%_ _%self195810%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195812%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self194385195670%_)
        (let* ((_%self195673%_ _%self194385195670%_)
               (_%self195675%_ _%self195673%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195675%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self194386195533%_)
        (let* ((_%self195536%_ _%self194386195533%_)
               (_%self195538%_ _%self195536%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195538%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195538%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195538%_
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
      (lambda (_%self194387195396%_)
        (let* ((_%self195399%_ _%self194387195396%_)
               (_%self195401%_ _%self195399%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195401%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195401%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195401%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self194388195259%_)
        (let* ((_%self195262%_ _%self194388195259%_)
               (_%self195264%_ _%self195262%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195264%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195264%_
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
      (lambda (_%self194389195070%_)
        (let* ((_%self195073%_ _%self194389195070%_)
               (_%self195075%_ _%self195073%_)
               (_%self195084195093%_ _%self195075%_)
               (_%E195086195097%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195084195093%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K195087195116%_
                (lambda (_%dispatch195100%_
                         _%arity195101%_
                         _%signature195102%_)
                  (if _%signature195102%_
                      (let ((_%signature195104%_ _%signature195102%_))
                        (cons '@lambda
                              (cons _%arity195101%_
                                    (cons _%dispatch195100%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature195104%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature195104%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature195104%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature195104%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature195104%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity195101%_
                                  (cons _%dispatch195100%_ '()))))))
               (_%e195088195119%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195084195093%_ '1 '#f '#f)))
               (_%e195089195122%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195084195093%_ '2 '#f '#f)))
               (_%signature195125%_ _%e195089195122%_)
               (_%e195090195127%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195084195093%_ '3 '#f '#f)))
               (_%arity195130%_ _%e195090195127%_)
               (_%e195091195132%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195084195093%_ '4 '#f '#f)))
               (_%dispatch195135%_ _%e195091195132%_))
          (_%K195087195116%_
           _%dispatch195135%_
           _%arity195130%_
           _%signature195125%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self194390194929%_)
        (let* ((_%self194932%_ _%self194390194929%_)
               (_%self194934%_ _%self194932%_))
          (letrec ((_%clause-e194944%_
                    (lambda (_%clause194946%_)
                      (cdr (let ((__method197645
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause194946%_
                                     'typedecl))))
                             (if __method197645
                                 (let ()
                                   (declare (not safe))
                                   (__method197645 _%clause194946%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause194946%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e194944%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self194934%_
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
      (lambda (_%self194391194792%_)
        (let* ((_%self194795%_ _%self194391194792%_)
               (_%self194797%_ _%self194795%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194797%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194797%_
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
      (lambda (_%self194392194655%_)
        (let* ((_%self194658%_ _%self194392194655%_)
               (_%self194660%_ _%self194658%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194660%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194660%_
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
      (lambda (_%self194393194518%_)
        (let* ((_%self194521%_ _%self194393194518%_)
               (_%self194523%_ _%self194521%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194523%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
