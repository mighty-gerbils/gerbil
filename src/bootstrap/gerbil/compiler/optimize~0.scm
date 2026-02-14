(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1771036691)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp440676
                   (let ((__obj440670
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
                       (gxc#optimizer-info:::init! __obj440670))
                     __obj440670)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp440676)))))
    (define gxc#optimize!
      (lambda (_%ctx440278%_)
        (let ((__tmp440678
               (lambda ()
                 (let ((__tmp440680
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx440278%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx440278%_)
                          (let ((__tmp440682
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp440681
                                 (##structure-ref
                                  _%ctx440278%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp440682 __tmp440681 '#t))
                          (let ((_%code440282%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx440278%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx440278%_
                             _%code440282%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp440679
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp440680
                    gxc#current-compile-local-type
                    __tmp440679))))
              (__tmp440677 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp440678
           gxc#current-compile-mutators
           __tmp440677))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx440264%_)
        (letrec ((_%load-it!440266%_
                  (lambda (_%id440276%_)
                    (if (let ((__tmp440683
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp440683 _%id440276%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id440276%_)
                          (let ((__tmp440684
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp440684 _%id440276%_ '#t)))))))
          (let* ((_%modid440268%_
                  (##structure-ref
                   _%ctx440264%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str440270%_ (symbol->string _%modid440268%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str440270%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str440270%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!440266%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!440266%_
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
      (lambda (_%ctx440201%_)
        (letrec* ((_%deps440203%_
                   (let* ((_%imports440254%_
                           (##structure-ref
                            _%ctx440201%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e440256%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx440201%_))))
                     (if _%$e440256%_
                         ((lambda (_%g440258440260%_)
                            (cons _%g440258440260%_ _%imports440254%_))
                          _%$e440256%_)
                         _%imports440254%_))))
          (let _%lp440205%_ ((_%rest440207%_ _%deps440203%_))
            (let* ((_%rest440208440216%_ _%rest440207%_)
                   (_%else440210440224%_ (lambda () '#!void))
                   (_%K440212440242%_
                    (lambda (_%rest440227%_ _%hd440228%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd440228%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp440686
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp440685
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd440228%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp440686 __tmp440685))
                                '#!void
                                (begin
                                  (let ((_%$e440231%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd440228%_))))
                                    (if _%$e440231%_
                                        ((lambda (_%pre440234%_)
                                           (_%lp440205%_
                                            (cons _%pre440234%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd440228%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e440231%_)
                                        (_%lp440205%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd440228%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd440228%_)))
                            (_%lp440205%_ _%rest440227%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd440228%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp440688
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp440687
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd440228%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp440688 __tmp440687))
                                    '#!void
                                    (begin
                                      (_%lp440205%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd440228%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd440228%_)))
                                (_%lp440205%_ _%rest440227%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd440228%_
                                     'gx#module-import::t))
                                  (_%lp440205%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd440228%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest440227%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd440228%_
                                         'gx#module-export::t))
                                      (_%lp440205%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd440228%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest440227%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd440228%_
                                             'gx#import-set::t))
                                          (_%lp440205%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd440228%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest440227%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd440228%_))))))))))
              (if (pair? _%rest440208440216%_)
                  (let ((_%hd440213440245%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest440208440216%_)))
                        (_%tl440214440247%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest440208440216%_))))
                    (let* ((_%hd440250%_ _%hd440213440245%_)
                           (_%rest440252%_ _%tl440214440247%_))
                      (_%K440212440242%_ _%rest440252%_ _%hd440250%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx440181%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx440181%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx440181%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht440183%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id440185%_
                    (##structure-ref
                     _%ctx440181%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod440187%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht440183%_ _%id440185%_)))
                   (_%$e440190%_ _%mod440187%_))
              (if _%$e440190%_
                  _%$e440190%_
                  (let* ((_%mod440193%_
                          (gxc#optimizer-import-ssxi _%ctx440181%_))
                         (_%val440198%_
                          (let ((_%$e440195%_ _%mod440193%_))
                            (if _%$e440195%_ _%$e440195%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht440183%_ _%id440185%_ _%val440198%_))
                    _%val440198%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx440179%_)
        (if (##structure-ref _%ctx440179%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx440179%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id440157%_)
        (letrec ((_%catch-e440159%_
                  (lambda (_%exn440177%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn440177%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn440177%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id440157%_))))
                    '#f))
                 (_%import-e440160%_
                  (lambda ()
                    (let* ((_%str-id440163%_
                            (let ((__tmp440689
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id440157%_))))
                              (declare (not safe))
                              (##string-append __tmp440689 '".ssxi")))
                           (_%artefact-path440170%_
                            (let ((_%odir440164440166%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir440164440166%_
                                  (let ((_%odir440168%_ _%odir440164440166%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id440163%_
                                        '".ss"))
                                     _%odir440168%_))
                                  '#f)))
                           (_%library-path440172%_
                            (let ((__tmp440690
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id440163%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp440690)))
                           (_%ssxi-path440174%_
                            (if (and _%artefact-path440170%_
                                     (file-exists? _%artefact-path440170%_))
                                _%artefact-path440170%_
                                _%library-path440172%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path440174%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path440174%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e440159%_ _%import-e440160%_)))))
    (define gxc#optimize-source
      (lambda (_%stx440142%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx440142%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx440142%_))
        (let* ((_%stx440144%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx440142%_)))
               (_%stx440146%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx440144%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx440146%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx440146%_))
          (let _%fixpoint440149%_ ((_%current440151%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx440146%_))
            (let ((_%refined440153%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current440151%_ _%refined440153%_)
                  '#!void
                  (_%fixpoint440149%_ _%refined440153%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx440146%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx440146%_))
          (let ((_%stx440155%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx440146%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx440155%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp440692 (list gxc#::generate-runtime-empty::t))
            (__tmp440691 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp440692
         '()
         __tmp440691
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args440139%_
        (apply make-instance gxc#::generate-ssxi::t _%$args440139%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp440693
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
        (__make-atomic-promise __tmp440693)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx440131%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self440134%_
                (let ((__obj440672
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj440672))
               (__tmp440694
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self440134%_ _%stx440131%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp440694
           gxc#current-compile-method
           _%self440134%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self440091%_ _%stx440092%_)
        (let* ((_%g440094440104%_
                (lambda (_%g440095440101%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g440095440101%_))))
               (_%g440093440128%_
                (lambda (_%g440095440107%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g440095440107%_))
                      (let ((_%e440097440109%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g440095440107%_))))
                        (let ((_%hd440098440112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e440097440109%_)))
                              (_%tl440099440114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e440097440109%_))))
                          ((lambda (_%g440096440117%_)
                             (let ((__tmp440697
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self440091%_
                                         _%stx440092%_))))
                                   (__tmp440695
                                    (let ((__tmp440696
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp440696 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp440697
                                gx#current-expander-phi
                                __tmp440695)))
                           _%tl440099440114%_)))
                      (_%g440094440104%_ _%g440095440107%_)))))
          (_%g440093440128%_ _%stx440092%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self440030%_ _%stx440031%_)
        (let* ((_%g440033440047%_
                (lambda (_%g440034440044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g440034440044%_))))
               (_%g440032440088%_
                (lambda (_%g440034440050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g440034440050%_))
                      (let ((_%e440037440052%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g440034440050%_))))
                        (let ((_%hd440038440055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e440037440052%_)))
                              (_%tl440039440057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e440037440052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl440039440057%_))
                              (let ((_%e440040440060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl440039440057%_))))
                                (let ((_%hd440041440063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e440040440060%_)))
                                      (_%tl440042440065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e440040440060%_))))
                                  ((lambda (_%g440035440068%_
                                            _%g440036440069%_)
                                     (let* ((_%ctx440082%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g440036440069%_)))
                                            (_%code440084%_
                                             (##structure-ref
                                              _%ctx440082%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp440698
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self440030%_
                                                  _%code440084%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp440698
                                        gx#current-expander-context
                                        _%ctx440082%_)))
                                   _%tl440042440065%_
                                   _%hd440041440063%_)))
                              (_%g440033440047%_ _%g440034440050%_))))
                      (_%g440033440047%_ _%g440034440050%_)))))
          (_%g440032440088%_ _%stx440031%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self439837%_ _%stx439838%_)
        (letrec ((_%generate-e439840%_
                  (lambda (_%id440015%_)
                    (let* ((_%sym440017%_
                            (if (let ((__tmp440699
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp440699))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id440015%_))
                                '#f))
                           (_%$e440019%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym440017%_))))
                      (if _%$e440019%_
                          ((lambda (_%klass440022%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym440017%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym440017%_
                                                     (cons (let ((__method440673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass440022%_ 'typedecl))))
                     (if __method440673
                         (let ()
                           (declare (not safe))
                           (__method440673 _%klass440022%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass440022%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym440017%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym440017%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e440019%_)
                          (let ((_%$e440024%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym440017%_))))
                            (if _%$e440024%_
                                ((lambda (_%type440027%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym440017%_
                                      '" "
                                      _%type440027%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type440027%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym440017%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym440017%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type440027%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym440017%_
                                                   (cons (let ((__method440674
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type440027%_ 'typedecl))))
                   (if __method440674
                       (let ()
                         (declare (not safe))
                         (__method440674 _%type440027%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type440027%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e440024%_)
                                '(begin))))))))
          (let* ((_%__stx440285440286%_ _%stx439838%_)
                 (_%g439843439881%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx440285440286%_)))))
            (let ((_%__kont440287440288%_
                   (lambda (_%g439845439997%_)
                     (_%generate-e439840%_ _%g439845439997%_)))
                  (_%__kont440289440290%_
                   (lambda (_%g439858439932%_)
                     (let ((_%types439958%_
                            (map _%generate-e439840%_
                                 (let ((__tmp440700
                                        (lambda (_%g439950439953%_
                                                 _%g439951439955%_)
                                          (cons _%g439950439953%_
                                                _%g439951439955%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp440700
                                    '()
                                    _%g439858439932%_)))))
                       (cons 'begin _%types439958%_)))))
              (let ((_%__match440340440341%_
                     (lambda (_%e439859439886%_
                              _%hd439860439889%_
                              _%tl439861439891%_
                              _%e439862439894%_
                              _%hd439863439897%_
                              _%tl439864439899%_
                              _%__splice440291440292%_
                              _%target439865439902%_
                              _%tl439867439904%_)
                       (letrec ((_%loop439868439907%_
                                 (lambda (_%hd439866439910%_
                                          _%id439872439912%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd439866439910%_))
                                       (let ((_%e439869439914%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd439866439910%_))))
                                         (let ((_%lp-tl439871439919%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e439869439914%_)))
                                               (_%lp-hd439870439917%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e439869439914%_))))
                                           (_%loop439868439907%_
                                            _%lp-tl439871439919%_
                                            (cons _%lp-hd439870439917%_
                                                  _%id439872439912%_))))
                                       (let ((_%id439873439922%_
                                              (reverse _%id439872439912%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl439864439899%_))
                                             (let ((_%e439874439924%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl439864439899%_))))
                                               (let ((_%tl439876439929%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e439874439924%_)))
                                                     (_%hd439875439927%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e439874439924%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl439876439929%_))
                                                     (_%__kont440289440290%_
                                                      _%id439873439922%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g439843439881%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g439843439881%_))))))))
                         (_%loop439868439907%_ _%target439865439902%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx440285440286%_))
                    (let ((_%e439846439965%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx440285440286%_))))
                      (let ((_%tl439848439970%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e439846439965%_)))
                            (_%hd439847439968%_
                             (let ()
                               (declare (not safe))
                               (##car _%e439846439965%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl439848439970%_))
                            (let ((_%e439849439973%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl439848439970%_))))
                              (let ((_%tl439851439978%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e439849439973%_)))
                                    (_%hd439850439976%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e439849439973%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd439850439976%_))
                                    (let ((_%e439852439981%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd439850439976%_))))
                                      (let ((_%tl439854439986%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e439852439981%_)))
                                            (_%hd439853439984%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e439852439981%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl439854439986%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl439851439978%_))
                                                (let ((_%e439855439989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl439851439978%_))))
                                                  (let ((_%tl439857439994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e439855439989%_)))
                                                        (_%hd439856439992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e439855439989%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl439857439994%_))
                                                        (_%__kont440287440288%_
                                                         _%hd439853439984%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd439850439976%_))
                                                            (let ((_%__splice440291440292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd439850439976%_
                              '0))))
                      (let ((_%tl439867439904%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice440291440292%_ '1)))
                            (_%target439865439902%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice440291440292%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl439867439904%_))
                            (_%__match440340440341%_
                             _%e439846439965%_
                             _%hd439847439968%_
                             _%tl439848439970%_
                             _%e439849439973%_
                             _%hd439850439976%_
                             _%tl439851439978%_
                             _%__splice440291440292%_
                             _%target439865439902%_
                             _%tl439867439904%_)
                            (let ()
                              (declare (not safe))
                              (_%g439843439881%_)))))
                    (let () (declare (not safe)) (_%g439843439881%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd439850439976%_))
                                                    (let ((_%__splice440291440292%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd439850439976%_
                                                              '0))))
                                                      (let ((_%tl439867439904%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice440291440292%_ '1)))
                    (_%target439865439902%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice440291440292%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl439867439904%_))
                    (_%__match440340440341%_
                     _%e439846439965%_
                     _%hd439847439968%_
                     _%tl439848439970%_
                     _%e439849439973%_
                     _%hd439850439976%_
                     _%tl439851439978%_
                     _%__splice440291440292%_
                     _%target439865439902%_
                     _%tl439867439904%_)
                    (let () (declare (not safe)) (_%g439843439881%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g439843439881%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd439850439976%_))
                                                (let ((_%__splice440291440292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd439850439976%_
                                                          '0))))
                                                  (let ((_%tl439867439904%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice440291440292%_
                                                            '1)))
                                                        (_%target439865439902%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice440291440292%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl439867439904%_))
                                                        (_%__match440340440341%_
                                                         _%e439846439965%_
                                                         _%hd439847439968%_
                                                         _%tl439848439970%_
                                                         _%e439849439973%_
                                                         _%hd439850439976%_
                                                         _%tl439851439978%_
                                                         _%__splice440291440292%_
                                                         _%target439865439902%_
                                                         _%tl439867439904%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g439843439881%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g439843439881%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd439850439976%_))
                                        (let ((_%__splice440291440292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd439850439976%_
                                                  '0))))
                                          (let ((_%tl439867439904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice440291440292%_
                                                    '1)))
                                                (_%target439865439902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice440291440292%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl439867439904%_))
                                                (_%__match440340440341%_
                                                 _%e439846439965%_
                                                 _%hd439847439968%_
                                                 _%tl439848439970%_
                                                 _%e439849439973%_
                                                 _%hd439850439976%_
                                                 _%tl439851439978%_
                                                 _%__splice440291440292%_
                                                 _%target439865439902%_
                                                 _%tl439867439904%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g439843439881%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g439843439881%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g439843439881%_)))))
                    (let () (declare (not safe)) (_%g439843439881%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self439390%_ _%stx439391%_)
        (let* ((_%__stx440343440344%_ _%stx439391%_)
               (_%g439395439497%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx440343440344%_)))))
          (let ((_%__kont440345440346%_
                 (lambda (_%g439397439787%_
                          _%g439398439788%_
                          _%g439399439789%_
                          _%g439400439790%_
                          _%g439401439791%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g439400439790%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g439399439789%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g439398439788%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g439397439787%_))
                                                 '())))))))
                (_%__kont440347440348%_
                 (lambda (_%g439450439613%_
                          _%g439451439614%_
                          _%g439452439615%_
                          _%g439453439616%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g439452439615%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g439451439614%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g439450439613%_))
                                           (cons '#f '())))))))
                (_%__kont440349440350%_ (lambda () '(begin))))
            (let ((_%__match440478440479%_
                   (lambda (_%e439402439659%_
                            _%hd439403439662%_
                            _%tl439404439664%_
                            _%e439405439667%_
                            _%hd439406439670%_
                            _%tl439407439672%_
                            _%e439408439675%_
                            _%hd439409439678%_
                            _%tl439410439680%_
                            _%e439411439683%_
                            _%hd439412439686%_
                            _%tl439413439688%_
                            _%e439414439691%_
                            _%hd439415439694%_
                            _%tl439416439696%_
                            _%e439417439699%_
                            _%hd439418439702%_
                            _%tl439419439704%_
                            _%e439420439707%_
                            _%hd439421439710%_
                            _%tl439422439712%_
                            _%e439423439715%_
                            _%hd439424439718%_
                            _%tl439425439720%_
                            _%e439426439723%_
                            _%hd439427439726%_
                            _%tl439428439728%_
                            _%e439429439731%_
                            _%hd439430439734%_
                            _%tl439431439736%_
                            _%e439432439739%_
                            _%hd439433439742%_
                            _%tl439434439744%_
                            _%e439435439747%_
                            _%hd439436439750%_
                            _%tl439437439752%_
                            _%e439438439755%_
                            _%hd439439439758%_
                            _%tl439440439760%_
                            _%e439441439763%_
                            _%hd439442439766%_
                            _%tl439443439768%_
                            _%e439444439771%_
                            _%hd439445439774%_
                            _%tl439446439776%_
                            _%e439447439779%_
                            _%hd439448439782%_
                            _%tl439449439784%_)
                     (let ((_%g439397439787%_ _%hd439448439782%_)
                           (_%g439398439788%_ _%hd439439439758%_)
                           (_%g439399439789%_ _%hd439430439734%_)
                           (_%g439400439790%_ _%hd439421439710%_)
                           (_%g439401439791%_ _%hd439412439686%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g439401439791%_
                              'bind-method!))
                           (_%__kont440345440346%_
                            _%g439397439787%_
                            _%g439398439788%_
                            _%g439399439789%_
                            _%g439400439790%_
                            _%g439401439791%_)
                           (_%__kont440349440350%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx440343440344%_))
                  (let ((_%e439402439659%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx440343440344%_))))
                    (let ((_%tl439404439664%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e439402439659%_)))
                          (_%hd439403439662%_
                           (let ()
                             (declare (not safe))
                             (##car _%e439402439659%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl439404439664%_))
                          (let ((_%e439405439667%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl439404439664%_))))
                            (let ((_%tl439407439672%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e439405439667%_)))
                                  (_%hd439406439670%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e439405439667%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd439406439670%_))
                                  (let ((_%e439408439675%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd439406439670%_))))
                                    (let ((_%tl439410439680%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e439408439675%_)))
                                          (_%hd439409439678%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e439408439675%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd439409439678%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd439409439678%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl439410439680%_))
                                                  (let ((_%e439411439683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl439410439680%_))))
                                                    (let ((_%tl439413439688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e439411439683%_)))
                                                          (_%hd439412439686%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e439411439683%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl439413439688%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl439407439672%_))
                      (let ((_%e439414439691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl439407439672%_))))
                        (let ((_%tl439416439696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e439414439691%_)))
                              (_%hd439415439694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e439414439691%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd439415439694%_))
                              (let ((_%e439417439699%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd439415439694%_))))
                                (let ((_%tl439419439704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e439417439699%_)))
                                      (_%hd439418439702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e439417439699%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd439418439702%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd439418439702%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl439419439704%_))
                                              (let ((_%e439420439707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl439419439704%_))))
                                                (let ((_%tl439422439712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e439420439707%_)))
                                                      (_%hd439421439710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e439420439707%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl439422439712%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl439416439696%_))
                                                          (let ((_%e439423439715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl439416439696%_))))
                    (let ((_%tl439425439720%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e439423439715%_)))
                          (_%hd439424439718%_
                           (let ()
                             (declare (not safe))
                             (##car _%e439423439715%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd439424439718%_))
                          (let ((_%e439426439723%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd439424439718%_))))
                            (let ((_%tl439428439728%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e439426439723%_)))
                                  (_%hd439427439726%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e439426439723%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd439427439726%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd439427439726%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl439428439728%_))
                                          (let ((_%e439429439731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl439428439728%_))))
                                            (let ((_%tl439431439736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e439429439731%_)))
                                                  (_%hd439430439734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e439429439731%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl439431439736%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl439425439720%_))
                                                      (let ((_%e439432439739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl439425439720%_))))
                (let ((_%tl439434439744%_
                       (let () (declare (not safe)) (##cdr _%e439432439739%_)))
                      (_%hd439433439742%_
                       (let ()
                         (declare (not safe))
                         (##car _%e439432439739%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd439433439742%_))
                      (let ((_%e439435439747%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd439433439742%_))))
                        (let ((_%tl439437439752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e439435439747%_)))
                              (_%hd439436439750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e439435439747%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd439436439750%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd439436439750%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl439437439752%_))
                                      (let ((_%e439438439755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl439437439752%_))))
                                        (let ((_%tl439440439760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e439438439755%_)))
                                              (_%hd439439439758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e439438439755%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl439440439760%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl439434439744%_))
                                                  (let ((_%e439441439763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl439434439744%_))))
                                                    (let ((_%tl439443439768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e439441439763%_)))
                                                          (_%hd439442439766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e439441439763%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd439442439766%_))
                                                          (let ((_%e439444439771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd439442439766%_))))
                    (let ((_%tl439446439776%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e439444439771%_)))
                          (_%hd439445439774%_
                           (let ()
                             (declare (not safe))
                             (##car _%e439444439771%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd439445439774%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd439445439774%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl439446439776%_))
                                  (let ((_%e439447439779%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl439446439776%_))))
                                    (let ((_%tl439449439784%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e439447439779%_)))
                                          (_%hd439448439782%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e439447439779%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl439449439784%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl439443439768%_))
                                              (_%__match440478440479%_
                                               _%e439402439659%_
                                               _%hd439403439662%_
                                               _%tl439404439664%_
                                               _%e439405439667%_
                                               _%hd439406439670%_
                                               _%tl439407439672%_
                                               _%e439408439675%_
                                               _%hd439409439678%_
                                               _%tl439410439680%_
                                               _%e439411439683%_
                                               _%hd439412439686%_
                                               _%tl439413439688%_
                                               _%e439414439691%_
                                               _%hd439415439694%_
                                               _%tl439416439696%_
                                               _%e439417439699%_
                                               _%hd439418439702%_
                                               _%tl439419439704%_
                                               _%e439420439707%_
                                               _%hd439421439710%_
                                               _%tl439422439712%_
                                               _%e439423439715%_
                                               _%hd439424439718%_
                                               _%tl439425439720%_
                                               _%e439426439723%_
                                               _%hd439427439726%_
                                               _%tl439428439728%_
                                               _%e439429439731%_
                                               _%hd439430439734%_
                                               _%tl439431439736%_
                                               _%e439432439739%_
                                               _%hd439433439742%_
                                               _%tl439434439744%_
                                               _%e439435439747%_
                                               _%hd439436439750%_
                                               _%tl439437439752%_
                                               _%e439438439755%_
                                               _%hd439439439758%_
                                               _%tl439440439760%_
                                               _%e439441439763%_
                                               _%hd439442439766%_
                                               _%tl439443439768%_
                                               _%e439444439771%_
                                               _%hd439445439774%_
                                               _%tl439446439776%_
                                               _%e439447439779%_
                                               _%hd439448439782%_
                                               _%tl439449439784%_)
                                              (_%__kont440349440350%_))
                                          (_%__kont440349440350%_))))
                                  (_%__kont440349440350%_))
                              (_%__kont440349440350%_))
                          (_%__kont440349440350%_))))
                  (_%__kont440349440350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl439434439744%_))
                                                      (if (let ((__tmp440701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp440701 'bind-method!))
                  (let ((_%g439450439613%_ _%hd439439439758%_)
                        (_%g439451439614%_ _%hd439430439734%_)
                        (_%g439452439615%_ _%hd439421439710%_)
                        (_%g439453439616%_ _%hd439412439686%_))
                    (_%__kont440347440348%_
                     _%g439450439613%_
                     _%g439451439614%_
                     _%g439452439615%_
                     _%g439453439616%_))
                  (_%__kont440349440350%_))
              (_%__kont440349440350%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont440349440350%_))))
                                      (_%__kont440349440350%_))
                                  (_%__kont440349440350%_))
                              (_%__kont440349440350%_))))
                      (_%__kont440349440350%_))))
              (_%__kont440349440350%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont440349440350%_))))
                                          (_%__kont440349440350%_))
                                      (_%__kont440349440350%_))
                                  (_%__kont440349440350%_))))
                          (_%__kont440349440350%_))))
                  (_%__kont440349440350%_))
              (_%__kont440349440350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont440349440350%_))
                                          (_%__kont440349440350%_))
                                      (_%__kont440349440350%_))))
                              (_%__kont440349440350%_))))
                      (_%__kont440349440350%_))
                  (_%__kont440349440350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont440349440350%_))
                                              (_%__kont440349440350%_))
                                          (_%__kont440349440350%_))))
                                  (_%__kont440349440350%_))))
                          (_%__kont440349440350%_))))
                  (_%__kont440349440350%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self439214%_ _%stx439215%_)
        (let* ((_%__stx440587440588%_ _%stx439215%_)
               (_%g439218439258%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx440587440588%_)))))
          (let ((_%__kont440589440590%_
                 (lambda (_%g439220439364%_ _%g439221439365%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g439221439365%_))
                               (cons _%g439220439364%_ '())))))
                (_%__kont440591440592%_
                 (lambda (_%g439243439287%_ _%g439244439288%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx440587440588%_))
                (let ((_%e439222439308%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx440587440588%_))))
                  (let ((_%tl439224439313%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e439222439308%_)))
                        (_%hd439223439311%_
                         (let ()
                           (declare (not safe))
                           (##car _%e439222439308%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl439224439313%_))
                        (let ((_%e439225439316%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl439224439313%_))))
                          (let ((_%tl439227439321%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e439225439316%_)))
                                (_%hd439226439319%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e439225439316%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd439226439319%_))
                                (let ((_%e439228439324%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd439226439319%_))))
                                  (let ((_%tl439230439329%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e439228439324%_)))
                                        (_%hd439229439327%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e439228439324%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd439229439327%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd439229439327%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl439230439329%_))
                                                (let ((_%e439231439332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl439230439329%_))))
                                                  (let ((_%tl439233439337%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e439231439332%_)))
                                                        (_%hd439232439335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e439231439332%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl439233439337%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl439227439321%_))
                                                            (let ((_%e439234439340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl439227439321%_))))
                      (let ((_%tl439236439345%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e439234439340%_)))
                            (_%hd439235439343%_
                             (let ()
                               (declare (not safe))
                               (##car _%e439234439340%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd439235439343%_))
                            (let ((_%e439237439348%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd439235439343%_))))
                              (let ((_%tl439239439353%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e439237439348%_)))
                                    (_%hd439238439351%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e439237439348%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd439238439351%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd439238439351%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl439239439353%_))
                                            (let ((_%e439240439356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl439239439353%_))))
                                              (let ((_%tl439242439361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e439240439356%_)))
                                                    (_%hd439241439359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e439240439356%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl439242439361%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl439236439345%_))
                                                        (_%__kont440589440590%_
                                                         _%hd439241439359%_
                                                         _%hd439232439335%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g439218439258%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl439236439345%_))
                                                        (_%__kont440591440592%_
                                                         _%hd439235439343%_
                                                         _%hd439226439319%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g439218439258%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl439236439345%_))
                                                (_%__kont440591440592%_
                                                 _%hd439235439343%_
                                                 _%hd439226439319%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g439218439258%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl439236439345%_))
                                            (_%__kont440591440592%_
                                             _%hd439235439343%_
                                             _%hd439226439319%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g439218439258%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl439236439345%_))
                                        (_%__kont440591440592%_
                                         _%hd439235439343%_
                                         _%hd439226439319%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g439218439258%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl439236439345%_))
                                (_%__kont440591440592%_
                                 _%hd439235439343%_
                                 _%hd439226439319%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g439218439258%_))))))
                    (let () (declare (not safe)) (_%g439218439258%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl439227439321%_))
                    (let ((_%e439251439279%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl439227439321%_))))
                      (let ((_%tl439253439284%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e439251439279%_)))
                            (_%hd439252439282%_
                             (let ()
                               (declare (not safe))
                               (##car _%e439251439279%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl439253439284%_))
                            (_%__kont440591440592%_
                             _%hd439252439282%_
                             _%hd439226439319%_)
                            (let ()
                              (declare (not safe))
                              (_%g439218439258%_)))))
                    (let () (declare (not safe)) (_%g439218439258%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl439227439321%_))
                                                    (let ((_%e439251439279%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl439227439321%_))))
                                                      (let ((_%tl439253439284%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e439251439279%_)))
                    (_%hd439252439282%_
                     (let () (declare (not safe)) (##car _%e439251439279%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl439253439284%_))
                    (_%__kont440591440592%_
                     _%hd439252439282%_
                     _%hd439226439319%_)
                    (let () (declare (not safe)) (_%g439218439258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g439218439258%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl439227439321%_))
                                                (let ((_%e439251439279%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl439227439321%_))))
                                                  (let ((_%tl439253439284%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e439251439279%_)))
                                                        (_%hd439252439282%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e439251439279%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl439253439284%_))
                                                        (_%__kont440591440592%_
                                                         _%hd439252439282%_
                                                         _%hd439226439319%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g439218439258%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g439218439258%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl439227439321%_))
                                            (let ((_%e439251439279%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl439227439321%_))))
                                              (let ((_%tl439253439284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e439251439279%_)))
                                                    (_%hd439252439282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e439251439279%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl439253439284%_))
                                                    (_%__kont440591440592%_
                                                     _%hd439252439282%_
                                                     _%hd439226439319%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g439218439258%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g439218439258%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl439227439321%_))
                                    (let ((_%e439251439279%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl439227439321%_))))
                                      (let ((_%tl439253439284%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e439251439279%_)))
                                            (_%hd439252439282%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e439251439279%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl439253439284%_))
                                            (_%__kont440591440592%_
                                             _%hd439252439282%_
                                             _%hd439226439319%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g439218439258%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g439218439258%_))))))
                        (let () (declare (not safe)) (_%g439218439258%_)))))
                (let () (declare (not safe)) (_%g439218439258%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self439201%_)
        (let ((_%self439204%_ _%self439201%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self439204%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self438975%_)
        (let* ((_%self438978%_ _%self438975%_)
               (_%self438987439003%_ _%self438978%_)
               (_%E438989439006%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self438987439003%_
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
               (_%K438990439021%_
                (lambda (_%methods439009%_
                         _%metaclass439010%_
                         _%system?439011%_
                         _%final?439012%_
                         _%struct?439013%_
                         _%constructor439014%_
                         _%fields439015%_
                         _%slots439016%_
                         _%precendence-list439017%_
                         _%super439018%_
                         _%id439019%_)
                  (cons '@class
                        (cons _%id439019%_
                              (cons _%super439018%_
                                    (cons _%precendence-list439017%_
                                          (cons _%slots439016%_
                                                (cons _%fields439015%_
                                                      (cons _%constructor439014%_
                                                            (cons _%struct?439013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?439012%_
                                (cons _%system?439011%_
                                      (cons _%metaclass439010%_
                                            (cons (if _%methods439009%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods439009%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e438991439024%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438987439003%_ '1 '#f '#f)))
               (_%id439027%_ _%e438991439024%_)
               (_%e438992439029%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438987439003%_ '2 '#f '#f)))
               (_%super439032%_ _%e438992439029%_)
               (_%e438993439034%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438987439003%_ '3 '#f '#f)))
               (_%precendence-list439037%_ _%e438993439034%_)
               (_%e438994439039%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438987439003%_ '4 '#f '#f)))
               (_%slots439042%_ _%e438994439039%_)
               (_%e438995439044%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438987439003%_ '5 '#f '#f)))
               (_%fields439047%_ _%e438995439044%_)
               (_%e438996439049%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438987439003%_ '6 '#f '#f)))
               (_%constructor439052%_ _%e438996439049%_)
               (_%e438997439054%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438987439003%_ '7 '#f '#f)))
               (_%struct?439057%_ _%e438997439054%_)
               (_%e438998439059%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438987439003%_ '8 '#f '#f)))
               (_%final?439062%_ _%e438998439059%_)
               (_%e438999439064%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438987439003%_ '9 '#f '#f)))
               (_%system?439067%_ _%e438999439064%_)
               (_%e439000439069%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self438987439003%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass439072%_ _%e439000439069%_)
               (_%e439001439074%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self438987439003%_
                   '11
                   '#f
                   '#f)))
               (_%methods439077%_ _%e439001439074%_))
          (_%K438990439021%_
           _%methods439077%_
           _%metaclass439072%_
           _%system?439067%_
           _%final?439062%_
           _%struct?439057%_
           _%constructor439052%_
           _%fields439047%_
           _%slots439042%_
           _%precendence-list439037%_
           _%super439032%_
           _%id439027%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self438840%_)
        (let ((_%self438843%_ _%self438840%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self438843%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self438705%_)
        (let ((_%self438708%_ _%self438705%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self438708%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self438570%_)
        (let ((_%self438573%_ _%self438570%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self438573%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self438573%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self438573%_
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
      (lambda (_%self438435%_)
        (let ((_%self438438%_ _%self438435%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self438438%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self438438%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self438438%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self438300%_)
        (let ((_%self438303%_ _%self438300%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self438303%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self438303%_
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
      (lambda (_%self438114%_)
        (let* ((_%self438117%_ _%self438114%_)
               (_%self438126438135%_ _%self438117%_)
               (_%E438128438138%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self438126438135%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K438129438157%_
                (lambda (_%dispatch438141%_
                         _%arity438142%_
                         _%signature438143%_)
                  (if _%signature438143%_
                      (let ((_%signature438145%_ _%signature438143%_))
                        (cons '@lambda
                              (cons _%arity438142%_
                                    (cons _%dispatch438141%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature438145%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature438145%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature438145%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature438145%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature438145%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity438142%_
                                  (cons _%dispatch438141%_ '()))))))
               (_%e438130438160%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438126438135%_ '1 '#f '#f)))
               (_%e438131438163%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438126438135%_ '2 '#f '#f)))
               (_%signature438166%_ _%e438131438163%_)
               (_%e438132438168%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438126438135%_ '3 '#f '#f)))
               (_%arity438171%_ _%e438132438168%_)
               (_%e438133438173%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self438126438135%_ '4 '#f '#f)))
               (_%dispatch438176%_ _%e438133438173%_))
          (_%K438129438157%_
           _%dispatch438176%_
           _%arity438171%_
           _%signature438166%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self437974%_)
        (let ((_%self437977%_ _%self437974%_))
          (letrec ((_%clause-e437988%_
                    (lambda (_%clause437990%_)
                      (cdr (let ((__method440675
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause437990%_
                                     'typedecl))))
                             (if __method440675
                                 (let ()
                                   (declare (not safe))
                                   (__method440675 _%clause437990%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause437990%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e437988%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self437977%_
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
      (lambda (_%self437839%_)
        (let ((_%self437842%_ _%self437839%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self437842%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self437842%_
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
      (lambda (_%self437704%_)
        (let ((_%self437707%_ _%self437704%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self437707%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self437707%_
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
      (lambda (_%self437569%_)
        (let ((_%self437572%_ _%self437569%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self437572%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
